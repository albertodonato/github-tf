TF ?= tofu

all: lint validate
.PHONY: all

lint:
	$(TF) fmt -recursive -check
	tflint -f compact --recursive
.PHONY: lint

validate:
	$(TF) init
	$(TF) validate
.PHONY: validate

upgrade:
	$(TF) init --upgrade
.PHONY: upgrade
