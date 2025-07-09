#!/bin/bash

source variables.inc

gcloud services enable \
    aiplatform.googleapis.com \
    retail.googleapis.com \
    bigquery.googleapis.com \
    cloudbuild.googleapis.com \
    run.googleapis.com \
    artifactregistry.googleapis.com \
    iam.googleapis.com \
    compute.googleapis.com \
    notebooks.googleapis.com \
    datacatalog.googleapis.com \
    dataproc.googleapis.com \
    cloudresourcemanager.googleapis.com
