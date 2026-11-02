.DEFAULT_GOAL := check
.PHONY: setup check
setup: ## Install git hooks
	git config core.hooksPath .githooks
check: ## Validate the app and hackathon requirements
	./scripts/check-compliance.sh
	./scripts/validate-app.sh
