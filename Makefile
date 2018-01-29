

all: 

buildlrt:
	cd $(NSBUILD)
	go install github.com/lavaorg/lrt/x/...

buildnscore:
	go install github.com/lavaorg/northstar/cron/...
	go install github.com/lavaorg/northstar/data/...
	go install github.com/lavaorg/northstar/dpe-spark/...
	go install github.com/lavaorg/northstar/dpe-stream
	go install github.com/lavaorg/northstar/northstarapi
	go install github.com/lavaorg/northstar/object
	go install github.com/lavaorg/northstar/portal
	go install github.com/lavaorg/northstar/processing
	go install github.com/lavaorg/northstar/rte
	go install github.com/lavaorg/northstar/rte-lua
	go install github.com/lavaorg/northstar/servdisc
	go install github.com/lavaorg/northstar/sse
	go install github.com/lavaorg/northstar/cmd/botc
	go install github.com/lavaorg/northstar/cmd/cli
	go install github.com/lavaorg/northstar/cmd/dpestream
	go install github.com/lavaorg/northstar/cmd/nsapi
	go install github.com/lavaorg/northstar/cmd/nscron
	go install github.com/lavaorg/northstar/cmd/nsdata
	go install github.com/lavaorg/northstar/cmd/nsobject
	go install github.com/lavaorg/northstar/cmd/nsportal
	go install github.com/lavaorg/northstar/cmd/nsprocessing
	go install github.com/lavaorg/northstar/cmd/rtelua

buildnssvc:

buildnscli:
	go install github.com/lavaorg/northstar/cli/...

wsinit:
	mkdir -p src

wsclean:
	@rm -rf bin pkg lib
wsnuke:
	@rm -rf bin pkg lib src

gitstatus:
	cd src/github.com/lavaorg/northstar; git status -s
	cd src/github.com/lavaorg/lrt; git status -s
	cd src/github.com/gin-gonic/gin; git status -s
	cd src/github.com/gocql/gocql; git status -s
	cd src/github.com/Shopify/sarama; git status -s
	cd src/gopkg.in/redis.v5; git status -s
	cd src/github.com/channelmeter/vault-gatekeeper-mesos/gatekeeper; git status -s
	cd src/github.com/franela/goreq; git status -s
	cd src/github.com/hashicorp/vault/api; git status -s
	cd src/github.com/samuel/go-zookeeper/zk; git status -s
	cd src/gopkg.in/olivere/elastic.v5; git status -s
	cd src/github.com/pborman/uuid; git status -s
	cd src/github.com/pmylund/go-cache; git status -s
	cd src/github.com/gambol99/go-marathon; git status -s
	cd src/github.com/yuin/gopher-lua; git status -s