# test_go-micro_qps
测试 go-micro 服务器的 qps ，用来判断是否需要自己写 server/client/transport 插件


## 回显测试

- grpc

  ![p1](asset/grpc.jpg)
  ![p2](asset/cpu.jpg)

  结论： 4w/s 级别，CPU占用太高了
