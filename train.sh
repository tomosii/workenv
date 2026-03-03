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
    dataset=mesh_nine_rooms \
    model=sunta \
    train_level=1 \
    l1_deter_size=512 \
    l1_stoch_size=32 \
    total_steps=500000 \
    batch_size=32 \
    train_sequence_length=100 \
    test_sequence_length=100 \
    context_length=100 \
    test_every=50000 \
    save_checkpoint_every=1000 \
    seed=0 \
    # decoder_input=state_feature \
    # test_every=1 \


# python3 eval.py eval_run_path=lighthouse117/sunta/jytaliqh


# python3 train.py \
#     dataset=serial_nine_rooms \
#     model=sunta \
#     train_level=2 \
#     level1_run_path=lighthouse117/sunta/k0rbkx53 \
#     l1_deter_size=128 \
#     l1_stoch_size=8 \
#     l2_deter_size=128 \
#     l2_stoch_size=8 \
#     total_steps=500000 \
#     train_sequence_length=200 \
#     test_sequence_length=200 \
#     context_length=100 \
#     test_every=20000 \
#     save_checkpoint_every=20000 \
#     seed=0 \
#     pattern_completion_loss=True \
#     loss_scales.pattern_completion_kl=1.0 \
#     deter_zero_init=False \
#     l2_decoder_independent=False \
#     action_conditioned_level2=False \
#     contrastive_negative_loss=True \
#     contrastive_negative_margin=50.0 \
#     boundary_peak_prominence=5.0 \

