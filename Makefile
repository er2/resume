build: pdf docx
	
pdf: resume.fodt
	mkdir -p build
	soffice --convert-to pdf --outdir build resume.fodt
	
docx: resume.fodt
	mkdir -p build
	soffice --convert-to docx --outdir build resume.fodt
	
install: upload
	
upload: 
	rsync -avh build/* blog:~/
	

.PHONY: clean	
clean:
	rm -r build/*
	
