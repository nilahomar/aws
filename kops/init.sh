export AWS_REGION=eu-central-1
export KOPS_STATE_STORE=s3://<BUCKET>

# kops create -f kops/cluster.yaml --state=$KOPS_STATE_STORE --zones=eu-central-1a

kops create cluster \
  --name=kops.dev.nilahomar.com \
  --state=$KOPS_STATE_STORE \
  --cloud=aws \
  --zones=eu-central-1a,eu-central-1b,eu-central-1c \
  --control-plane-zones=eu-central-1a \
  --networking=amazonvpc \
  --node-size=t3.small \
  --control-plane-size=t3.small \
  --node-count=2 \
  --control-plane-count=1 \
  --topology=public \
  --network-cidr=10.0.0.0/16 \
  --dry-run \
  -o yaml > cluster.yaml
