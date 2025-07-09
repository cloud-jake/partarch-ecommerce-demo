#!/bin/bash

source variables.inc

#Deploy the container image. The Online Boutique frontend is designed to talk to other microservices. For this initial deployment, we will deploy it standalone. It will show a default set of products, which we will override in the next step with Vertex AI Search.


gcloud run deploy ecommerce-frontend \
    --image gcr.io/${PROJECT_ID}/ecommerce-frontend \
    --platform managed \
    --region us-central1 \
    --allow-unauthenticated \
    --set-env-vars="PORT=8080"


#Note: This initial deployment will have limited functionality (e.g., checkout will fail) because the other microservices are not yet deployed. The primary goal here is to get the user-facing website online.
#After the command finishes, it will provide a URL. Visit this URL to see your live, but still basic, e-commerce site.

