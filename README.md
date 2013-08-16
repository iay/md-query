Metadata Query Protocol
=======================
This protocol work started out within the [Shibboleth](http://shibboleth.net)
project.  The current Shibboleth products consume large SAML metadata 
files that provide all the information necessary to communicate with peers.  
So, in some respects, SAML metadata files are like big `/etc/hosts` files.

This model has some obvious scalability problems as the number of peers
increases.  It also increases brittleness in the system because any erroneous
metadata is visible to every consumer.
The obvious solution then was to move to a more DNS-like model and
this protocol is meant to be akin to the DNS query protocol.  So, some scoping
requirements are:

* very simple protocol - we don't want 100 different options that end up behaving in strange ways when used together
* metadata format agnostic - we started with SAML metadata but it shouldn't be the only format we support
* good net citizen - we need to work well with proxies, caching infrastructure, etc.

Providing Feedback
------------------
There are a couple of ways to provide feedback to this project.

If you wish to participate in the protocol development discussions  you should
join the mailing list.  You can do this by means of [this webform](http://lists.iay.org.uk/listinfo.cgi/mdx-iay.org.uk)
and then sending emails to [mdx@lists.iay.org.uk](mailto:mdx@lists.iay.org.uk).

If you'd like to contribute specific text to the document, you can submit a 
ticket to the project's [issue tracker](https://github.com/iay/md-query/issues).
GitHub pull requests are fine as well but are probably a bit of overkill here.

IETF Process
----------------
The document's current status in the IETF process can be viewed at [its tracker page](https://datatracker.ietf.org/doc/draft-young-md-query/).

Building the Documents
----------------------
The canonical source of the document is the `.xml` source file.  The repository always includes that form plus HTML and `.txt` versions.  Submission to the IETF datatracker requires the `.txt` version but I always supply the `.xml` as well.

I'm using the supplied `Makefile` to build the HTML and text forms of the document.  This requires a locally installed copy of the `xml2rfc` tool.  An [online version](http://xml.resource.org) of `xml2rfc` is also available.

Alternatively, you can use [rfc2629xslt](http://greenbytes.de/tech/webdav/rfc2629xslt/rfc2629xslt.html) to generate the output files.  For example, to generate the HTML form of the protocol document using `xsltproc`, run:

    xsltproc rfc2629xslt/rfc2629.xslt draft-young-md-query-00.xml > <OUTPUT_FILE>


