i8i_CMD                     ?= docker-compose run --rm i8i-cli 
AWS_PROFILE								 ?= default


createEfs: 
	$(i8i_CMD) sh -c "zx script.mjs createEfs --count $(count)"

putWorkflow: 
	$(i8i_CMD) sh -c "zx script.mjs putWorkflow --file $(file)"

runWorkflow: 
	$(i8i_CMD) sh -c "zx script.mjs runWorkflow  --file $(file)"

