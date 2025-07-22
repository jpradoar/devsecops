# Deploy terraform with MicroK8s ready for use

### Edit terraform vars
	if you like, can edit any vars
	Remember use your aws configs 
	and use your vpc and subnet id in envs 

### Run terraform init and plan to see data
	terraform init && terraform plan


### Run terraform apply to deploy instance
	terraform apply -auto-approve


### To connect run
	terraform output connection |jq -r