python3 preprocess.py -data_type img -src_dir data/im2text/images/ -train_src data/im2text/src-train.txt -train_tgt data/im2text/tgt-train.txt -valid_src data/im2text/src-val.txt -valid_tgt data/im2text/tgt-val.txt -save_data data/im2text/shards/shard -tgt_seq_length 150 -tgt_words_min_frequency 2 -shard_size 500 -image_channel_size 1

python3 train.py -model_type img -data data/im2text/shards/shard -save_model latex-model -gpu_ranks 0 -batch_size 20 -max_grad_norm 20 -learning_rate 0.1 -word_vec_size 80 -encoder_type brnn -image_channel_size 1

PAUSE