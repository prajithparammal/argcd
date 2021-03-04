local overrides = import 'overrides.libsonnet';
local nginx = import '../../../libs/mysql/mysql.libsonnet';
local p = import 'params.libsonnet';

nginx.HelmDefinition(p){
  'values.yaml'+: overrides {
    
  },
}