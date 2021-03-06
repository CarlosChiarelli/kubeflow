// @apiVersion 0.1
// @name io.ksonnet.pkg.cloud-endpoints
// @description Provides cloud-endpoints prototypes for creating Cloud Endpoints services and DNS records.
// @shortDescription Cloud Endpoint domain creation.
// @param name string Name for the component
// @optionalParam secretName string admin-gcp-sa Name of secret containing the json service account key.
// @optionalParam secretKey string admin-gcp-sa.json Name of the key in the secret containing the JSON service account key.

local cloudEndpoints = import "kubeflow/gcp/cloud-endpoints.libsonnet";
local instance = cloudEndpoints.new(env, params);
instance.list(instance.all)
