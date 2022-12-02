# Timeliness
The source code of the paper "Learning and Deducing Temporal Orders"

## Datasets

Please download the zip file from the following link and decompress it in the root directory.

https://drive.google.com/drive/folders/1B7z0FFOSFfqOvgP3r78exvYZey9G1RZW?usp=share_link

The preview of the project structure is as follow.

```
.
├── data
│   ├── career
│   ├── comm_
│   ├── nba
│   ├── person
└── GATE
    ├── baselines
    ├── creator
    ├── critic
    ├── discovery
    ├── gate.py
    ├── gate.sh
    ├── main.py
    ├── metrics.py
    ├── pretrain
    ├── proc
    ├── requirements.txt
    ├── result
    ├── results
    └── shell
```

## Run the code
```
cd GATE
mkdir result
```


main.py is the entry and gate.py is the primary code of the Timeliness.

To run the code or evaluate the experiments in the submitted paper, go to "shell" folder that stores all scripts of Figure 6(a)-(t). 

E.g., for Figure 6(a), simply run the following script
```
./fig_a.sh ${gpu_id}
```
where gpu_id is the cuda gpu id. Please set it as the empty string "" if the code is executed under the CPU setting.

The experimental results are saved in the "result" folder with different filenames.
