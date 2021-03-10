{
  apiVersion: 'argoproj.io/v1alpha1',
  kind: 'Application',
  metadata: {
    name: 'k3cluster-cluster-app',
    namespace: 'argocd',
  },
  spec: {
    project: 'default',
    source: {
      repoURL: 'https://github.com/prajithparammal/argcd',
      targetRevision: 'HEAD',
      path: 'clusters/k3cluster',
    },
    destination: {
      name: 'in-cluster',
      namespace: 'argocd',
    },
  },
}