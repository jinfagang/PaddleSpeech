python synthesize_e2e.py \
  --am=fastspeech2_mix \
  --am_config weights/fastspeech2_mix_ckpt_1.2.0/default.yaml \
  --am_ckpt weights/fastspeech2_mix_ckpt_1.2.0/snapshot_iter_99200.pdz \
  --am_stat weights/fastspeech2_mix_ckpt_1.2.0/speech_stats.npy \
  --voc=pwgan_aishell3 \
  --voc_config weights/pwg_aishell3_ckpt_0.5/default.yaml \
  --voc_ckpt weights/pwg_aishell3_ckpt_0.5/snapshot_iter_1000000.pdz \
  --voc_stat weights/pwg_aishell3_ckpt_0.5/feats_stats.npy \
  --lang=mix \
  --text=sentences_mix.txt \
  --output_dir=output \
  --phones_dict=weights/fastspeech2_mix_ckpt_1.2.0/phone_id_map.txt \
  --speaker_dict=weights/fastspeech2_mix_ckpt_1.2.0/speaker_id_map.txt \
  --spk_id=174 \
  --inference_dir=output/inference --ngpu=0