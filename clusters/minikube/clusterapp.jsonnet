
{
  apiVersion: 'argoproj.io/v1alpha1',
  kind: 'Application',
  metadata: {
    name: 'minikube-cluster-app',
  },
  spec: {
    destination: {
      name: 'in-cluster',
      namespace: 'argocd',
    },
    source: {
      path: 'clusters/minikube',
      repoURL: 'https://github.com/prajithparammal/argcd',
      targetRevision: 'HEAD',
    },
    project: 'default',
  },
}
