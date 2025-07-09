#!/bin/bash

source variables.inc

cd microservices-demo/src/frontend

# Ensure you are running this command from the microservices-demo/src/frontend directory
gcloud builds submit --tag gcr.io/${PROJECT_ID}/ecommerce-frontend


