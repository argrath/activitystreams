CORE=docs/core/index.html
VOCAB=docs/vocabulary/index.html

all: $(CORE) $(VOCAB)

$(CORE): omegat/target/core/index.html
	perl postprocess.pl

$(VOCAB): omegat/target/vocabulary/index.html
	perl postprocess_v.pl
