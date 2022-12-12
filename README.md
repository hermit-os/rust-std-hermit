# rust-std-hermit

This repository provides installable distribution artifacts of `rust-std` for the `hermit` targets.

## Requirements

* [rustup](https://www.rust-lang.org/tools/install)

## Usage

1.  Download and extract the artifact from the latest [release].

    [release]: https://github.com/hermitcore/rust-std-hermit/releases

2.  Run `./install.sh`

    The install script will install the `rust-std-hermit` component to the corresponding rustup toolchain.

3.  You can now build Rust applications with the corresponding toolchain for the installed `hermit` target without using `build-std`.

## License

Licensed under either of

 * Apache License, Version 2.0
   ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license
   ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.
