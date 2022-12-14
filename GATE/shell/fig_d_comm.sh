#!/bin/bash

data=(
'career'
'nba'
'person'
'comm_'
)

did=3

cd ../

epoch=10
lr=0.0001
batch_size=512
conf_sample_size=0.2
conf_threshold=0.55

echo -e "GATE"
mkdir results

echo -e "Method GATE"
resultFile='./result/fig_d_gate_comm_.txt'
> ${resultFile}
python main.py --creator Gate --data /data/data/${data[${did}]}'/' --epoch ${epoch} --lr ${lr} --batch_size ${batch_size} --high_conf_sample_ratio ${conf_sample_size} --conf_threshold ${conf_threshold} --variant gate >> ${resultFile} & 


echo -e "Method Creator"
resultFile='./result/fig_d_creator_comm_.txt'
> ${resultFile}
/root/anaconda3/bin/python main.py --creator Gate --data /data/data/${data[${did}]}'/' --epoch ${epoch} --lr ${lr} --batch_size ${batch_size} --high_conf_sample_ratio ${conf_sample_size} --conf_threshold ${conf_threshold} --variant creator >> ${resultFile} &


echo -e "Method Critic"
resultFile='./result/fig_d_critic_comm_.txt'
> ${resultFile}
/root/anaconda3/bin/python main.py --creator Gate --data /data/data/${data[${did}]}'/' --epoch ${epoch} --lr ${lr} --batch_size ${batch_size} --high_conf_sample_ratio ${conf_sample_size} --conf_threshold ${conf_threshold} --variant critic >> ${resultFile} & 


echo -e "Method CreatorNC"
resultFile='./result/fig_d_creatornc_comm_.txt'
> ${resultFile}
/root/anaconda3/bin/python main.py --creator Gate --data /data/data/${data[${did}]}'/' --epoch ${epoch} --lr ${lr} --batch_size ${batch_size} --high_conf_sample_ratio ${conf_sample_size} --conf_threshold ${conf_threshold} --variant creatornc >> ${resultFile} & 


echo -e "Method CreatorNA"
resultFile='./result/fig_d_creatorna_comm_.txt'
> ${resultFile}
/root/anaconda3/bin/python main.py --creator Gate --data /data/data/${data[${did}]}'/' --epoch ${epoch} --lr ${lr} --batch_size ${batch_size} --high_conf_sample_ratio ${conf_sample_size} --conf_threshold ${conf_threshold} --variant creatorna >> ${resultFile} &







