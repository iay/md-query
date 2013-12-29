# Metadata Query Protocol Specifications

This is the working area for the draft Metadata Query Protocol specifications.
The main directory contains the editor's working copy of the drafts in their XML
and plain text forms.

The specification is broken into two parts, one for the base protocol and one
for a SAML-specific profile.

The current IETF process status for these documents can be viewed at
their tracker pages:

* Base protocol:
[draft-young-md-query](https://datatracker.ietf.org/doc/draft-young-md-query/)

* SAML profile:
[draft-young-md-query-saml](http://datatracker.ietf.org/doc/draft-young-md-query-saml/)

The editor's working copy may be fresher, but less stable, than the most
recent formally submitted Internet Draft.

Prior versions submitted as Internet Drafts are also archived in the `history`
directory here for quick comparison between versions.

## Terminology

Please don't use the term "MDX" to refer to this specification or the protocol specified by it.  "MDX" as an acronym for MetaData eXchange refers to a more general concept of which the Metadata Query Protocol is just one component.

If you need to refer to this specification, md-query or even MDQ is more appropriate.

## Contributing

If you wish to participate in the protocol development discussions you should
join the mailing list.  You can do this by means of
[this webform](http://lists.iay.org.uk/listinfo.cgi/mdx-iay.org.uk)
and then sending emails to [mdx@lists.iay.org.uk](mailto:mdx@lists.iay.org.uk).

If you'd like to contribute specific text to the document, you can submit a
ticket to the project's [issue tracker](https://github.com/iay/md-query/issues).
GitHub pull requests are fine as well but are probably a bit of overkill here.

Please don't use the GitHub issue tracking system for substantive discussion;
that should always be done on the mailing list.  The issue tracker is used
only to organize the outstanding substantive issues and to process minor
editorial changes.

## Background

This protocol work started out within the [Shibboleth](http://shibboleth.net)
project.  The current Shibboleth products consume large SAML metadata
files that provide all the information necessary to communicate with peers.
So, in some respects, SAML metadata files are like big `/etc/hosts` files.

This model has some obvious scalability problems as the number of peers
increases.  It also increases brittleness in the system because any erroneous
metadata is visible to every consumer.
The obvious solution then was to move to a more DNS-like model and
this protocol is meant to be akin to the DNS query protocol, returning the
information returned by a simple identifier lookup.  So, some scoping
requirements are:

* simple protocol &mdash; we don't want numerous options which end up behaving in strange ways when used together
* simple semantics &mdash; we don't need a sophisticated query language for the intended use cases
* metadata format agnostic &mdash; we started with SAML metadata but it shouldn't be the only format we support
* good net citizen &mdash; we need to work well with proxies, caching infrastructure, etc.

The chosen route has been to define the query protocol as a RESTian web service
running over HTTP.

## Building the Documents

The canonical source of the document is the `.xml` source file.  The
repository always includes that form plus `.txt` versions rendered from the
XML.  Submission to the IETF datatracker requires the `.txt` version but I
always supply the `.xml` as well.

I'm using the included `Makefile` to build the HTML and text forms of the
document.  This requires a locally installed copy of the [`xml2rfc` tool](https://pypi.python.org/pypi/xml2rfc/).  An
[online version](http://xml.resource.org) of `xml2rfc` is also available.
