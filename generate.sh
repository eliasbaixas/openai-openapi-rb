#!/bin/bash
# take gem version from the environment or default to 1.0.0
GEM_VERSION=${GEM_VERSION:-1.0.0}
rm -Rf lib docs spec
openapi-generator generate \
   -i https://raw.githubusercontent.com/openai/openai-openapi/master/openapi.yaml   \
   -g ruby   \
   --skip-validate-spec \
   --additional-properties=gemName=openai-openapi-rb,gemVersion=$GEM_VERSION,moduleName=OpenAi
