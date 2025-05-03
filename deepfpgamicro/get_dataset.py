import numpy as np
import cv2
import pandas as pd
import os
from sklearn.model_selection import train_test_split
from sklearn.utils import class_weight

def preprocess(img, resize_vals, input_channels):
	img = cv2.resize(img, dsize=(320, 240))
	img = cv2.flip(img, 1)
	img = img[0:210, 52:198]
	# Convert to grayscale and readd channel dimension
	if input_channels == 1:
		img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY); # print(resize_vals[1],resize_vals[0])
		img = cv2.resize(img, dsize=(resize_vals[1], resize_vals[0]))
		img = np.reshape(img, (resize_vals[0], resize_vals[1], 1))
	# For RGB, just need to resize image
	else:
		img = cv2.resize(img, dsize=(resize_vals[1], resize_vals[0]))
	# img = img / 255.
	return img


def get_dataset(dir : str, image_size=(64,64),return_as_is=False):

    imgss, valss = [], []

    for i in range(10):
        imgs, vals = parse_file(dir + f'/epoch{i}', image_size)
        
        for j in range(len(imgs)):
            imgss.append(imgs[j])
            valss.append(vals[j])

    imgs, vals = imgss, valss

    if return_as_is:
        return imgs, vals

    imgs_temp = np.array(imgs)
    imgs_train, imgs_test, vals_train, vals_test = train_test_split(imgs_temp, vals, test_size=0.25, random_state=0)
    class_weights = class_weight.compute_class_weight(class_weight='balanced', classes=np.unique(vals_train), y=vals_train)
    class_weights = {i:class_weights[i] for i in range(len(class_weights))}

    return imgs_train, imgs_test, vals_train, vals_test

def parse_file(dir: str, image_size=(64, 64)):
    """
    Load grayscale video frames and labels from a CSV.

    Args:
        dir (str): Directory containing a video file and a CSV file with 'wheel' column.
        image_size (tuple): Resize frames to (width, height).

    Returns:
        Tuple:
            - frames: np.ndarray of shape (1, H, W, N), dtype=np.uint8
            - labels: np.ndarray of shape (N,), dtype=np.int8
    """
    # Find video and CSV file
    video_file = next((f for f in os.listdir(dir) if f.lower().endswith(('.mp4', '.avi', '.mov'))), None)
    csv_file   = next((f for f in os.listdir(dir) if f.lower().endswith('.csv')), None)

    if not video_file or not csv_file:
        raise FileNotFoundError("Video or CSV file not found in the directory.")

    video_path = os.path.join(dir, video_file)
    csv_path   = os.path.join(dir, csv_file)

    # Read grayscale video frames
    cap = cv2.VideoCapture(video_path)
    frames = []
    while True:
        ret, frame = cap.read()
        if not ret:
            break
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        # Image translation to match Micro's camera
        img = cv2.resize(gray, (320, 240))
        img = cv2.flip(img, 1)
        img = img[0:210, 52:198]
        resized = cv2.resize(img, image_size)

        frames.append(resized)  # shape (H, W)
    cap.release()

    # Load and map CSV
    df = pd.read_csv(csv_path, dtype={'wheel': np.float32})
    if 'wheel' not in df.columns:
        raise ValueError("CSV must contain a 'wheel' column.")

    labels = df['wheel'].values

    # Align lengths
    min_len = min(len(frames), len(labels))
    frames = frames[:min_len]
    labels = labels[:min_len]

    return frames, labels