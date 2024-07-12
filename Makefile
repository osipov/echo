.PHONY: build

build: 
	docker build -t osipov/echo:latest -t echo:latest -f Dockerfile .

serve:
	docker run -d --rm -p 8080:80 osipov/echo:latest
