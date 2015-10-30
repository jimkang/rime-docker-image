stop-docker-machine:
	docker-machine stop bigger

start-docker-machine:
	docker-machine start bigger

create-docker-machine:
	docker-machine create --driver virtualbox \
		--virtualbox-cpu-count "2" \
		--virtualbox-memory "4096" \
		bigger

connect-to-docker-machine:
	eval "$(docker-machine env bigger)"

build-docker-image:
	docker build -t jkang/prebuilt-rime .

push-docker-image: build-docker-image
	docker push jkang/prebuilt-rime

pushall: push-docker-image
	git push origin master
