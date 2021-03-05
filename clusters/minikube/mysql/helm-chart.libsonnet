local overrides = import 'overrides.libsonnet';
local mysql = import '../../../libs/mysql/mysql.libsonnet';
local p = import 'params.libsonnet';

mysql.HelmDefinition(p){
  'values.yaml'+: overrides {
    
  },
}
