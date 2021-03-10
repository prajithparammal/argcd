local defaultValues = import 'values.libsonnet';

{
  HelmDefinition(p):: {
    'Chart.yaml': {
      name: 'mysql-internal',
      apiVersion: 'v2',
      version: '3.2.1',
      dependencies: [
        {
          name: 'mysql',
          repository: 'https://charts.bitnami.com/bitnami',
          version: '3.2.1'
        },
      ],
    },
    'values.yaml': defaultValues {
    },
  }
}