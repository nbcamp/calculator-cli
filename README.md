# Calculator CLI

A Tiny Cli Tool that provides very simple arithmetic functions.

## Example

```text
[Calculator CLI]

Provides simple arithmetic functions.

- Usage: Enter operater and operand. e.g. +42
- Operators: %, *, +, /, -
- Commands:
    help     Print this message
    reset    Reset result to zero
    exit     Exit this program

Result: 0.0000
» +32

Result: 32.0000
» /2

Result: 16.0000
» +15

Result: 31.0000
» /3

Result: 10.3333
» exit
Goodbye.
```

## Development

Clone this repository and run program to develop

```sh
$ swift run
```

## Build

 Check build path by adding `--show-bin-path` option.

**Debug**

```sh
$ swift build # --show-bin-path
```

**Release**

```sh
$ swift build -c release # --show-bin-path
```

**Release by architectures**

```sh
$ swift build -c release --arch arm64 --arch x86_64 # --show-bin-path
```
