python -m src.run_scan \
--model_type roberta \
--model_name_or_path roberta-base \
--sequential \
--transfer_dir ${transfer_dir} \
--task_name QA \
--do_train \
--do_eval \
--do_test \
--do_lower_case \
--data_dir ${data_dir} \
--max_seq_length 128 \
--per_gpu_train_batch_size 140 \
--learning_rate 2e-5 \
--num_train_epochs 15 \
--epochb 20 \
--lrbl 1e-3 \
--num_f 5 \
--lambdap 0.01 \
--presave_ratio 0.9 \
--tao 1 \
--output_dir ${output_dir} \
--overwrite_output_dir