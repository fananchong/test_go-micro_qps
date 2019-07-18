package main

import (
	"context"
	"log"
	"sync/atomic"
	"time"

	hello "github.com/micro/examples/greeter/srv/proto/hello"
	"github.com/micro/go-micro"
)

var counter int64

type say struct{}

func (s *say) Hello(ctx context.Context, req *hello.Request, rsp *hello.Response) error {
	//log.Print("Received Say.Hello request")
	rsp.Msg = "Hello " + req.Name

	atomic.AddInt64(&counter, 1)

	return nil
}

func main() {
	service := micro.NewService(
		micro.Name("go.micro.srv.greeter"),
		micro.RegisterTTL(time.Second*30),
		micro.RegisterInterval(time.Second*10),
	)

	// optionally setup command line usage
	service.Init()

	// Register Handlers
	hello.RegisterSayHandler(service.Server(), new(say))

	go func() {
		for {
			select {
			case <-time.After(time.Second * 5):
				log.Print("count: ", counter)
				atomic.StoreInt64(&counter, 0)
			}
		}
	}()

	// Run server
	if err := service.Run(); err != nil {
		log.Fatal(err)
	}
}
