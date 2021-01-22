# Eric Riese's resume and resume build scripts

`resume.fodt` is the source file for my resume.

ODT is an open standard document format. It is functionally equivalent to the Microsoft Office Word document format you are used to. The difference is ODT does not impose upon the reader the requirement to purchase an expensive piece of proprietary software that is only available on certain platforms. ODT is designed for compatibility. `.doc(x)` is designed for incompatibility. FODT is a variation on ODT that is not zip-compressed, making it more suitable for storage in a version control system.

I prefer to generate [hybrid PDFs](https://wiki.documentfoundation.org/Faq/Writer/PDF_Hybrid).

My pdf permalink is http://hire.ericrie.se
My .docx is at https://ericrie.se/resume.docx

### Prerequisites/Setup
1. Export a pdf manually with LibreOffice. When doing so, select "Hybrid PDF". This configuration is then stored in your user preferences and used subsequently in this build process.

2. Configure web server ssh credentials in `~/.ssh/config`
```
Host blog
	User <username>
	HostName ericrie.se
```
3. Set up passwordless login to web server with
```
ssh-copy-id blog
```
