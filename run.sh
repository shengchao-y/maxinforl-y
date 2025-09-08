# python examples/vision_based/experiment.py \
#   --project_name maxinforl \
#   --entity_name syan \
#   --alg_name drqv2 \
#   --env_name humanoid-walk \
#   --wandb_log 1

# python examples/state_based/experiment.py \
#   --project_name maxinforl \
#   --entity_name syan \
#   --alg_name maxinfosac \
#   --env_name cartpole-swingup_sparse \
#   --wandb_log 1

export MUJOCO_GL=egl

algo=sacgage
for task in humanoid_bench/h1-run-v0 #humanoid-walk #quadruped-run # #Humanoid Ant Walker2d #HalfCheetah Hopper Swimmer
do
for seed in 26202127 #26192416 1484620 72346654 32225970
do
for gage_init_std in 0.5 0.75 #0.4 0.5 0.6
do
for scale_max_return in 1.0 1.5 #1.5 2.0
do

python examples/state_based/experiment.py \
  --project_name maxinforl --entity_name syan --wandb_log 0 --seed=$seed \
  --alg_name $algo --env_name $task --scale_max_return $scale_max_return --gage_init_std $gage_init_std


done
done
done
done

# python examples/state_based/experiment.py \
#   --project_name maxinforl \
#   --entity_name syan \
#   --alg_name maxinfosac \
#   --env_name humanoid_bench/h1-run-v0 \
#   --wandb_log 0 --seed=26202127