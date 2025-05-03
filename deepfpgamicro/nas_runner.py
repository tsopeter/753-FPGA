from pilotnet_nas import createModel
from util import create_config
import sys
import pandas as pd

conv, dense, mult, width, period, output_dir = \
    sys.argv[1], sys.argv[2], float(sys.argv[3]), \
    int(sys.argv[4]), int(sys.argv[5]), \
    sys.argv[6]

model = createModel(conv, dense, mult, 64, 64, 1, width)
model.compile()

config, hls_model = create_config(model, output_dir=output_dir,
                                  period=period)
hls_model.compile()
report = hls_model.build(csim=False)

print(f'Saving report to {output_dir}/system_report.csv')

df = pd.DataFrame(report)
df.to_csv(f'{output_dir}/system_report.csv',index=False)


