## Ricky Redis

`ricky_redis`  is a Learning rust project that implements and extends `mini_redis` (https://github.com/tokio-rs/mini-redis)

## Running

Start the server:

```shell
RUST_LOG=debug cargo run --bin mini-redis-server
```

for windows:

```shell
set RUST_LOG=debug && cargo run --bin mini-redis-server
```

The [`tracing`](https://github.com/tokio-rs/tracing) crate is used to provide structured logs. You can substitute `debug` with the desired [log level](https://docs.rs/tracing-subscriber/latest/tracing_subscriber/filter/struct.EnvFilter.html#directives).

Then, in a different terminal window, the various client [examples](https://file+.vscode-resource.vscode-cdn.net/f%3A/develop/rust_study/rust_open_source_project/mini-redis/examples) can be executed. For example:

```shell
cargo run --example hello_world
```

Additionally, a CLI client is provided to run arbitrary commands from the terminal. With the server running, the following works:

```shell
cargo run --bin mini-redis-cli set foo bar

cargo run --bin mini-redis-cli get foo
```