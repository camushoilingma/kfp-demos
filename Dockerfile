FROM google/cloud-sdk:latest
RUN apt-get update && apt-get --yes --force-yes install google-cloud-sdk
WORKDIR ./
COPY ./trainer ./trainer
COPY ./submit_job.sh ./submit_job.sh

ENTRYPOINT ["bash", "./submit_job.sh"]
