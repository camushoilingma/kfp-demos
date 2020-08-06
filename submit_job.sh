dt=`date '+%Y%m%d_%H%M%S'`
MODEL_DIR="gs://camus-census-keras"
VERSION_NAME="v1"
FRAMEWORK="TENSORFLOW"
PACKAGE_STAGING_PATH="gs://camus-census-keras"
JOB_DIR="gs://camus-census-keras"
TRAINER_PACKAGE_PATH="trainer"
MAIN_TRAINER_MODULE="trainer.task"
REGION="europe-west1"

echo 'Submitting ai-platform job.'
gcloud ai-platform jobs submit training "simple_CUSTOM_CPU_2wrk_${dt}" \
  --package-path $TRAINER_PACKAGE_PATH \
  --module-name $MAIN_TRAINER_MODULE \
  --region $REGION \
  --python-version 3.7 \
  --runtime-version 2.1 \
  --job-dir $JOB_DIR \
  --stream-logs