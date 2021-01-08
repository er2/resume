build: pdf docx
	
pdf: resume.fodt
	mkdir -p build
	soffice --convert-to pdf --outdir build resume.fodt
	
docx: resume.fodt
	mkdir -p build
	soffice --convert-to docx --outdir build resume.fodt
	
install: upload
	
upload: build
	rsync -avh build/* blog:~/
	ssh blog './install-resume.sh'
	

.PHONY: clean	
clean:
	rm -r build/*
	
