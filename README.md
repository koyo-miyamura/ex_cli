# ExCli
Cliの練習
```
$ mix escript.build
```

```
$ ./ex_cli hoge
hoge

$ ./ex_cli -u aa
AA

$ ./ex_cli -h
help!

./ex_cli -h hoge
help! hoge
```

## Installation

```elixir
def deps do
  [
    {:ex_cli, "~> 0.1.0"}
  ]
end
```
