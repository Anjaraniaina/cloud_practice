aws configure set aws_access_key_id "$1"
aws configure set aws_secret_access_key "$2"
aws configure set default.region "$3"

aws cloudformation deploy --template-file ./.github/workflow/no_stack.yaml --stack-name no-stack
