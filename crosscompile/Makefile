COMPONENT = riscos-basictokenise
JUNITXML ?= ../artifacts/results.xml

.PHONY: all links cross_export cross_install tool_dir clean

all: cross_install
links: $(FILES)

cross_export:
	@echo No exports

cross_install: \
		tool_dir \
		test \
		$(ROTOOL_DIR)/$(COMPONENT)
	@echo Installed to $(ROTOOL_DIR)

$(ROTOOL_DIR)/riscos-basictokenise: ../tokenise.pl
	cp $? $@

tool_dir:
	mkdir -p $(ROTOOL_DIR)

test:
    echo Tests not yet implemented
	#mkdir -p ../testdata/h
	#mkdir -p ../testdata/pas
	#mkdir -p ../artifacts
	#perl ../testdata/test.pl --junitxml "${JUNITXML}" --show-command --show-output $(shell pwd)/../process.pl ../testdata

clean:;

# Links
