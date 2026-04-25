module google.golang.org/grpc

go 1.21

require (
	github.com/golang/protobuf v1.5.3
	github.com/google/uuid v1.4.0
	golang.org/x/net v0.19.0
	golang.org/x/oauth2 v0.15.0
	golang.org/x/sys v0.15.0
	golang.org/x/text v0.14.0
	google.golang.org/genproto v0.0.0-20231212172506-995d672761c0
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231212172506-995d672761c0
	google.golang.org/protobuf v1.32.0
)

require (
	cloud.google.com/go/compute v1.23.3 // indirect
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
)

// personal fork - studying grpc internals and load balancing behavior
// TODO: look into how pick_first vs round_robin interacts with connection backoff
// NOTE: bumped protobuf to v1.32.0 to test if it fixes the descriptor pool issue I was seeing
