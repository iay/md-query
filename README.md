Metadata Query Protocol
=======================
This protocol work started out within the [Shibboleth](http://shibboleth.net).
Currently, the software Shib products consume large SAML metadata files that
provide all the information necessary to communicate with peers.  So, in some 
respects, SAML metadata files are big /etc/hosts files.

This model has some obvious scalability problems as the number of peers
increases.  The obvious solution then was to move to a more DNS-like model and
this protocol is meant to be akin to the DNS query protocol.  So, some scoping
requirements are:
 * very simple protocol - we don't want 100 different options that end up behaving in strange ways when used together
 * metadata format agnostic - we startd with SAML metadata but it shouldn't be the only format we support
 * good net citizen - we need to work well with proxies, caching infrastructure, etc.

Providing Feedback
------------------
There are a couple ways to provide feedback to this project.

If you wish to participate in the discussion of developing the query you should
join the mailing list.  You can do this be means of [this webform](http://lists.iay.org.uk/listinfo.cgi/mdx-iay.org.uk)
and then sending emails to [mdx@lists.iay.org.uk](mailto:mdx@lists.iay.org.uk)

If you'd like to contribute specific text to the document, you can submit a 
ticket to the projects [issue tracker](https://github.com/lajoie/md-query/issues)
Git pull requests are fine as well but are probably a bit of an overkill here.

Building the Documents
----------------------
The protocol document uses the [xml2rfc tool](http://xml.resource.org/) in
order to generate the documents needed for publication to the IETF and others.

TODO: fill in directions for building the documents
