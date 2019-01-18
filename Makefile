# ----------------------------------------
# Standard Constants
# ----------------------------------------
# these can be overwritten on the command line


SRC=src/
#PYV=$(shell python -c "import sys;t='{v[0]}.{v[1]}'.format(v=list(sys.version_info[:2]));sys.stdout.write(t)");
RELEASE_PREP=$(SRC)/release_prepare.py
BUILD_DOCS=$(SRC)/human_readable_json.py



# ----------------------------------------
# Top-level targets
# ----------------------------------------

all: #run the linter every time


test: all #run Dani and Simon's cool new test suite


release_prepare: all increment_version build_docs


# ----------------------------------------
# Release
# ----------------------------------------

increment_version: $(RELEASE_PREP)
    python $<


build_docs: $(BUILD_DOCS)
    python $<
