COMPONENT = riscos-basictokenise
JUNITXML ?= ../artifacts/results.xml

# FIXME: Temporary location to write documentation to
RODOCS_DIR = ../artifacts/docs

DOCS_SRC = ../prminxml
DOCS = $(wildcard ${DOCS_SRC}/*.xml)
GENERATED_DOCS = $(patsubst ${DOCS_SRC}/%.xml,${RODOCS_DIR}/%.html,${DOCS})

TEMPFILE = tmpfile

.PHONY: all links cross_export cross_install tool_dir clean

all: cross_install
links: $(FILES)

cross_export:
	@echo No exports

ifeq (${BUILD_DOCS},)
cross_install: \
		tool_dirs \
		test \
		$(ROTOOL_DIR)/$(COMPONENT) \
		$(ROTOOL_DIR)/Help/$(COMPONENT)
	@echo Installed to $(ROTOOL_DIR)
else
# FIXME: This is an ugly hack until we have a real rule for docs builds.
cross_install: docs
endif


# Documentation
docs: ${GENERATED_DOCS} docs_dirs
	@echo DOCS_SRC = ${DOCS_SRC}
	@echo GENERATED_DOCS = ${GENERATED_DOCS}

${RODOCS_DIR}/%.html: ${DOCS_SRC}/%.xml
	riscos-prminxml -f html -o $@ $?

docs_dirs:
	mkdir -p "${RODOCS_DIR}"


# Tool
$(ROTOOL_DIR)/Help/${COMPONENT}: ${DOCS_SRC}/basictokenise.xml
	riscos-prminxml -f command -o "${TEMPFILE}" $?
	riscos-vtranslate ../VersionNum "${TEMPFILE}" $@
	rm "${TEMPFILE}"

$(ROTOOL_DIR)/${COMPONENT}: ../tokenise.pl
	cp $? $@

tool_dirs:
	mkdir -p "$(ROTOOL_DIR)"
	mkdir -p "$(ROTOOL_DIR)/Help"

test:
	echo Tests not yet implemented
	#mkdir -p ../testdata/h
	#mkdir -p ../testdata/pas
	#mkdir -p ../artifacts
	#perl ../testdata/test.pl --junitxml "${JUNITXML}" --show-command --show-output $(shell pwd)/../process.pl ../testdata

clean:;

# Links
