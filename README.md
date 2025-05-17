# FPGA reimplementation of DeepPiCarMicro

## Note: Most of the code-base have been moved to ./deepfpgamicro/.

We don't have the hardware to generate dataset. For now we will use the dataset provided by CSL-KU's DeepPiCarMicro. Link to DeepPiCarMicro GitHub: https://github.com/CSL-KU/DeepPicarMicro. Link to DeepPiCarMicro dataset: https://drive.google.com/file/d/1Fjwy-dLDp5sNilPTUMXUkmnUF1SrXDOl/view

## Getting Started
1. If you are just training models, all that is needed to install requirements is
    pip3 install opencv-python
    pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126
    pip3 install brevitas
    pip3 install pandas
    pip3 install numpy
    pip3 install matplotlib
    pip3 install scikit-learn

2. If you are willing to produce the models, first do:
    git clone https://github.com/Xilinx/finn
    cd finn
    cp -r ./projects ../finn/notebooks/
    export FINN_XILINX_PATH=/opt/Xilinx
    export FINN_XILINX_VERSION=2024.2
    source /opt/Xilinx/Vivado/2024.2/settings64.sh
    sudo ./run-docker.sh quicktest
    sudo ./run-docker.sh notebook

The above assumes the path to your Xilinx install is at /opt/Xilinx. For instance, if your install is at /opt/tools, then use export=FINN_XILINX_PATH=/opt/tools. It also assumes that the finn directory is one-directory behind the current working directory. Copy the project directory to wherever the finn directory is located.

3. Building the model in Vivado GUI.

First, in the docker container, copy all files from /


