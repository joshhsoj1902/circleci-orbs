VERSION ?= test

docker-validate:
	circleci orb validate src/docker/orb.yml

docker-publish-dev:
	circleci orb publish src/docker/orb.yml joshhsoj1902/docker@dev:$(VERSION)

docker-publish-dev-ci:
	circleci orb publish src/docker/orb.yml joshhsoj1902/docker@dev:$(VERSION) --token $(CIRCLE_API_KEY)

docker-publish:
	circleci orb publish increment src/docker/orb.yml joshhsoj1902/docker minor

docker-publish-ci:
	circleci orb publish increment src/docker/orb.yml joshhsoj1902/docker minor --token $(CIRCLE_API_KEY)