all: draft-young-md-query.txt draft-young-md-query.html draft-young-md-query-saml.txt draft-young-md-query-saml.html

%.txt: %.xml
	xml2rfc $< --text -o $@

%.html: %.xml
	xml2rfc $< --html -o $@

clean:
	rm *~
