#!/bin/bash

source variables.inc 

bq load \
    --source_format=NEWLINE_DELIMITED_JSON \
    --autodetect \
    product_catalog.products \
    gs://${PROJECT_ID}/products.jsonl
