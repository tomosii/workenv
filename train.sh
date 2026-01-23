#!/bin/bash
set -e

# Navigate to the directory
cd hierarchical-wm/src/sunta

# python3 train.py \
    # dataset=serial_nine_rooms \
    # model=sunta \
    # train_level=1 \
    # l1_deter_size=128 \
    # l1_stoch_size=8 \
    # total_steps=500000 \
    # train_sequence_length=200 \
    # test_sequence_length=200 \
    # context_length=50 \
    # test_every=50000 \
    # save_checkpoint_every=20000 \
    # seed=0


python3 train.py \
    dataset=serial_nine_rooms \
    model=sunta \
    train_level=1 \
    l1_deter_size=512 \
    l1_stoch_size=16 \
    total_steps=500000 \
    train_sequence_length=200 \
    test_sequence_length=200 \
    context_length=50 \
    test_every=50000 \
    save_checkpoint_every=20000 \
    seed=0







# python3 eval.py eval_run_path=lighthouse117/sunta/jytaliqh

