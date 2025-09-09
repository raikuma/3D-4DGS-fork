dataset=('coffee_martini' 'cook_spinach' 'cut_roasted_beef' 'flame_salmon_1' 'flame_steak' 'sear_steak')
config='n3v'
device=0

for data in ${dataset[@]};
do
    model_path=output/${data}
    source_path=data/N3DV/${data}
    CUDA_VISIBLE_DEVICES=${device} \
    python main.py --config configs/${config}/default.yaml  --model_path $model_path \
    --source_path $source_path --num_workers 8 \
    --start_checkpoint $model_path/chkpnt6000.pth --val
    
done
