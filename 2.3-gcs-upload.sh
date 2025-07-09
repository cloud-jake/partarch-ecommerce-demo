#!/bin/bash

source variables.inc

# Use a globally unique bucket name
gcloud storage buckets create gs://${PROJECT_ID} --project=${PROJECT_ID} --location=US


# Upload Your JSONL File:
gcloud storage cp ./products.jsonl gs://${PROJECT_ID}/
