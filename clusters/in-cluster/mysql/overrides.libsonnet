local p = import '../params.libsonnet';

{
  'ingress-nginx'+: {
    controller+: {
      service+: {
        annotations+: {
          'service.beta.kubernetes.io/azure-load-balancer-internal': 'true'
        },
        loadBalancerIP: p.nginx.loadBalancerIP,
      },
      ingressClass: 'nginx-internal'
    },
  },
}
