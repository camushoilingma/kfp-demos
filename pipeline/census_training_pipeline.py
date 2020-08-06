
"""Simple KFP with one component."""

import os

import kfp
from kfp import dsl
from kfp.components import func_to_container_op
from kfp.dsl.types import Dict
from kfp.dsl.types import GCPProjectID
from kfp.dsl.types import GCPRegion
from kfp.dsl.types import GCSPath
from kfp.dsl.types import String
from kfp.gcp import use_gcp_secret

FULL_IMAGE_NAME = os.getenv('FULL_IMAGE_NAME')

# Create Training Component

def census_train_op():
    return dsl.ContainerOp(
        name='Census Training Component',
        image= FULL_IMAGE_NAME)

@kfp.dsl.pipeline(
    name='Census Keras Training',
    description='The pipeline training a census model.'
)
def census_train(project_id, region):
    """Orchestrates training and deployment of a keras model."""
    census_train_op()
