# libsalty2

[![Module Version](https://img.shields.io/hexpm/v/libsalty2.svg)](https://hex.pm/packages/libsalty2)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/libsalty2/)
[![Total Download](https://img.shields.io/hexpm/dt/libsalty2.svg)](https://hex.pm/packages/libsalty2)
[![License](https://img.shields.io/hexpm/l/libsalty2.svg)](https://github.com/Ianleeclark/libsalty2/blob/master/LICENSE)
[![Last Updated](https://img.shields.io/github/last-commit/Ianleeclark/libsalty2.svg)](https://github.com/Ianleeclark/libsalty2/commits/master)

Libsalty2 provides bindings to [libsodium](https://github.com/jedisct1/libsodium).

> NOTICE: This is a fork of the original, which is no longer maintained. Hence
> the `2` appended.

For Elixir, based on [Erlang nif](http://erlang.org/doc/man/erl_nif.html).

Credits to [**Libsodium**](https://github.com/jedisct1/libsodium) project by [Frank Denis](https://github.com/jedisct1) and [Contributors](https://github.com/jedisct1/libsodium/graphs/contributors). Libsodium is licensed under [ISC License](https://github.com/jedisct1/libsodium/blob/master/LICENSE).

## Requirements

Libsalty2 requires that libsodium 1.0.12 or later is already installed on your
system. If you receive compiler warnings or a missing symbol error when trying
to use libsalty, it's likely that you're running on a system with an old version
of libsodium.

## Installation

The package can be installed by adding `libsalty2` to your list of dependencies
in `mix.exs`:

```elixir
def deps do
  [
    {:libsalty2, "~> 0.2.1"}
  ]
end
```

## License

Copyright 2017 Project ArteMisc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
