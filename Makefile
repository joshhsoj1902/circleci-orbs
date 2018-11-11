docker-validate:
	circleci orb validate src/docker/orb.yml

docker-publish-dev:
	circleci orb publish src/docker/orb.yml joshhsoj1902/docker@dev:second

docker-publish:
	circleci orb publish increment src/docker/orb.yml joshhsoj1902/docker patch