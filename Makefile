all: draft-young-md-query.txt draft-young-md-query.html

%.txt: %.xml
	xml2rfc $< $@

%.html: %.xml
	xml2rfc $< $@

clean:
	rm *~
