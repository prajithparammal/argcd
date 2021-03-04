local defaultValues = import 'values.libsonnet';

{
  HelmDefinition(p):: {
    'Chart.yaml': {
      name: 'mysql-internal',
      apiVersion: 'v2',
      version: '1.0.0',
      dependencies: [
        {
          name: 'mysql',
          repository: 'https://charts.bitnami.com/bitnami',
          version: '8.4.3',
        },
      ],
    },
    'values.yaml': defaultValues {
    },
  }
}
