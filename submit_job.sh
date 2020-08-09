#!/bin/sh
dt=`date '+%Y%m%d_%H%M%S'`

echo 'Submitting ai-platform job.'
echo gcloud ai-platform jobs submit training "simple_CUSTOM_CPU_2wrk_${dt}" \
  --package-path $1 \
  --module-name $2 \
  --region $3 \
  --python-version $4 \
  --runtime-version $5 \
  --job-dir $6 \
  --stream-logs
  
gcloud ai-platform jobs submit training "simple_CUSTOM_CPU_2wrk_${dt}" \
  --package-path $1 \
  --module-name $2 \
  --region $3 \
  --python-version 3.7 \
  --runtime-version 2.1 \
  --job-dir $6 \
  --stream-logs