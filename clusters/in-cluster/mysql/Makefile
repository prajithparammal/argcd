build:
	rm -rf ./charts values.yaml Charts.yaml requirements.lock
	jsonnet -m . helm-chart.libsonnet && helm dependency build && [ -d "./templates" ] && jsonnet ./templates/_templates.jsonnet > ./templates/templates.yaml
	exit 0

test:
	helm template test .

generate:
	helm template mysql -n mysql . > ../../../clusters/in-cluster/mysql/app.yaml
