all: draft-young-md-query-00.txt draft-young-md-query-00.html

%.txt: %.xml
	xml2rfc $< $@

%.html: %.xml
	xml2rfc $< $@

clean:
	rm *~
