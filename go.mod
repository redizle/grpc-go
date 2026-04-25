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
// NOTE: bumped golang.org/x/net to v0.20.0 locally to see if the http2 flow control changes
//       help with the slow stream issue I noticed under high load - reverting if it breaks tests
// NOTE: keeping golang.org/x/net at v0.19.0 for now since v0.20.0 didn't seem to make a
//       measurable difference in my benchmarks - will revisit after looking at the http2 framer code
// TODO: next thing to dig into - balancer state transitions, specifically what happens when
//       all subconns go into TRANSIENT_FAILURE simultaneously. saw some weird behavior in my
//       test cluster where the client kept retrying instead of failing fast
