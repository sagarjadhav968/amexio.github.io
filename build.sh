#!/bin/bash

echo "Begining Amexio Build Process..."

npm run build

echo "Finished Amexio Build Process..."

cd src/modules/charts/ && npm run build

echo "Finished building Charts Module"

cd ../dashboard/ && npm run build

echo "Finished Building Dashboard Library"

cd ../maps/ && npm run build

echo "Finished Building Dashboard Library"

echo "************* Completed Building All Amexio Extension *************"

cd ../../../dist/ && npm pack