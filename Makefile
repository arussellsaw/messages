build:
	docker build -t gcr.io/russellsaw/messages --build-arg BUILDKIT_INLINE_CACHE=1 .

deploy: build push
	gcloud beta run deploy messages --image gcr.io/russellsaw/messages:latest

push:
	docker push gcr.io/russellsaw/messages

just-deploy:
	gcloud beta run deploy messages --image gcr.io/russellsaw/messages:latest