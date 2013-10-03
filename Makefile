all: draft-young-md-query.txt draft-young-md-query.html

%.txt: %.xml
	xml2rfc $< --text -o $@

%.html: %.xml
	xml2rfc $< --html -o $@

clean:
	rm *~
