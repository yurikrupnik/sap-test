docker-build:
	docker build services/my-nginx -t yurikrupnik/buster-fat:0.0.2
create-repo:
	helm package charts/my-nginx

helm-install:
	helm install --name my-nginx myrepo/my-nginx

helm-lint:
	helm lint charts/my-nginx

helm-dry-run:
	helm install --dry-run --debug charts/my-nginx/ --generate-name --values services/my-nginx/values.yaml

helm-install:
	helm install example1 charts/my-nginx --values services/my-nginx/values.yaml


helm-uninstall:
	helm uninstall example1

local-test-write-to-file:
	wrk -t12 -c400 -d10s http://127.0.0.1:8080/hello >> results.txt

run-tests-in-cluster:
# todo
	kubectl exec --stdin --tty shell-demo --

run-ab-test:
	docker run --rm jordi/ab -n 1000 -c 1000 https://www.docker.com/
