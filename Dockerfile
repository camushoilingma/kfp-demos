FROM gcr.io/deeplearning-platform-release/base-cpu
RUN apt-get update && apt-get --yes --force-yes install google-cloud-sdk
WORKDIR ./
COPY ./trainer ./trainer
COPY ./submit_job.sh ./submit_job.sh
CMD ./submit_job.sh
