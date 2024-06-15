# Rust/Swift interop with SwiftRs/Swift-Bridge

Using solutions of Advent of Code 2023 day 9, this rep gives an example of
how to use SwiftRs to use Swift packages with Rust.

Benchmarks are discouraging for Swift though...

## Caveats

The swift part is included  on macOS only, as SwiftRs is not available on Linux.

## Building the Swift package of rust functions
*This is on macOS only*

As a pre-requisite you need the *swift-bridge-cli* commmand for cargo. This is installed by
```
cargo install swift-bridge-cli
```
To build the package *DayRust9*, do this

```
cargo clean
cargo build -p day9_rust --release
swift-bridge-cli create-package --bridges-dir day9_rust/generated --name Day9Rust --out-dir Day9Rust --macos target/release/libday9_rust.a
```
Now you can build the Swift package in day9_swift and run its tests, which include the Rust functions.
```
cd day9_swift
swift build -c release
swift test
```

The test output is more concise using *xcbeautify*. This is available from Homebrew
```
brew install xcbeautify
```
Run the tests with
```
swift test | xcbeautify
```
