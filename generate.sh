#!/bin/bash
openapi-generator generate \
   -i https://raw.githubusercontent.com/openai/openai-openapi/master/openapi.yaml   \
   -g ruby   \
   --skip-validate-spec \
   --additional-properties=gemName=openai-openapi-rb,gemVersion=1.0.0,moduleName=OpenAI::API
