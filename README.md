# badusb-builder

An Example of "BadUSB as Code".

Dockerfile defines an Ubuntu-based environment installed with the required dependencies for utilizing packer-builder-arm.

packer-builder-arm lets you use packer to build ARM images.

Neat.

[x] But can it build Kali Linux for Raspberry Pi...

[ ] ...and configure it to be a custom red-team device?

## Usage

Build Docker Image

```
make
```

Run Container

```
make run
```

### TODO

- [ ] Solve "no space left on device" issue