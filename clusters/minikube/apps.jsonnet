local kube = import '../../libs/kube.libsonnet';
local clustermgmt = import '../../libs/clustermanagement.libsonnet';
local p = import 'params.libsonnet';

local all = {
  cert_manager: clustermgmt.JsonnetHelmApplication(p, 'cert-manager', 'cert-manager'),
  sealed_secrets: clustermgmt.App(p, 'sealed-secrets', 'kube-system'){
    spec+: {
      source+:{
        path: 'libs/sealed-secrets'
      },
    },
  },

  nginx: clustermgmt.JsonnetHelmApplication(p, 'nginx', 'nginx'),
  externalDns: clustermgmt.JsonnetHelmApplication(p, 'external-dns', 'external-dns'),
  externalSecrets: clustermgmt.JsonnetHelmApplication(p, 'external-secrets', 'external-secrets'),
  
  misc: clustermgmt.App(p, 'misc', 'misc'),
};

kube.List() { items_+: all }