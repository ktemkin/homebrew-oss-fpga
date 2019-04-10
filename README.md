# Homebrew Repository for Open-Source FPGA Tools

In recent years, there's been an amazing reniassance of open-source FPGA tools -- including tools that allow creation of
usable FPGA bitstreams using entirely open-source tools. This is amazing -- especially as it allows us to avoid running
clunky vendor GUIs on the few Windows / Linux distributions they support.

This repostiory allows you to easily install some of those open-source toolchains.

## Getting Started

To build FPGA programs for iCE40 boards like the [iCEBreaker](https://github.com/icebreaker-fpga/icebreaker), you'll need
the `icestorm`, `yosys`, and `nextpnr` or `aranche-pnr` tools. 

Installing a simple toolchain is as easy as running the following:

```
$ brew tap ktemkin/oss-fpga
$ brew install --HEAD icestorm yosys nextpnr-ice40
```
