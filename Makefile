build/container: Dockerfile bin/build
	docker build -t edyn/statsd .
	touch build/container

.PHONY: clean
clean:
	rm -rf build
