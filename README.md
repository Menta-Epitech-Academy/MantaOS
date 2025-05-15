# MantaOS

MantaOS is a custom Raspberry Pi OS image tailored for specific use cases. It leverages the `pi-gen` tool to create images based on Raspberry Pi OS, with additional customizations and configurations.

## Features

- Custom stages for building tailored Raspberry Pi OS images.
- Integration with `pi-gen` for modular and flexible image creation.
- Support for Docker-based builds for cross-platform compatibility.
- Easily configurable build process through a `config` file.

## Quick Start

To build the custom MantaOS image, follow these steps:

```bash
git clone --recurse-submodules https://github.com/Menta-Epitech-Academy/MantaOS
cd MantaOS
sudo ./build.sh
```

## Project Structure

- **`build.sh`**: Main script to initiate the build process.
- **`mantaOs/config`**: Configuration file for customizing the build process.
- **`mantaOs/stage-custom`**: Custom build stage for additional configurations.
- **`pi-gen/`**: Submodule containing the `pi-gen` tool for building Raspberry Pi OS images.

## Prerequisites

Ensure the following dependencies are installed on your system:

```bash
sudo apt-get install coreutils quilt parted qemu-user-static debootstrap zerofree zip \
dosfstools libarchive-tools libcap2-bin grep rsync xz-utils file git curl bc \
gpg pigz xxd arch-test bmap-tools
```

For Docker-based builds, ensure Docker is installed and running.

## Building with Docker

To build the image inside a Docker container:

```bash
cd pi-gen
./build-docker.sh
```

If you encounter errors, you can continue the build process with:

```bash
CONTINUE=1 ./build-docker.sh
```

## Troubleshooting

- **Missing Dependencies**: Ensure all required packages are installed.
- **Docker Issues**: Verify that `binfmt-support` is enabled on the host system.
- **Build Failures**: Check the logs for errors and adjust the corresponding scripts.

## References

- [pi-gen Documentation](pi-gen/README.md)
- [Raspberry Pi OS](https://www.raspberrypi.com/software/)

## License

This project is licensed under the same terms as `pi-gen`. See the [LICENSE](pi-gen/LICENSE) file for details.