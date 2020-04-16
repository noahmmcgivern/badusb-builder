build :
	docker build --rm -t badusb .

run :
	docker run -it -v $(pwd):/out --rm --name badusb badusb