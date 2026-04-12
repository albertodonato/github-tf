TF ?= tofu

lint:
	$(TF) fmt -recursive -check
	tflint -f compact --recursive

validate:
	$(TF) init
	$(TF) validate

upgrade:
	$(TF) init --upgrade
