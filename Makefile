all: draft-lajoie-md-query.txt draft-lajoie-md-query.html

%.txt: %.xml
	xml2rfc $< $@

%.html: %.xml
	xml2rfc $< $@

clean:
	rm *~
