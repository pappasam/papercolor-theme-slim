.PHONY: help
help: ## Prints each target and its associated help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# NOTE: must hold terminal window focused and in the shape you'd like
gen-gallery: ## Generate the gallery of images
	@echo "Generating colorscheme screenshots..."
	@mkdir -p ./gallery/outputs
	@nvim -c "cd ./gallery" -c "luafile ./generate.lua" -c "echo ''" -c "qa!"
	@echo "Screenshots generated in ./gallery/outputs/"
