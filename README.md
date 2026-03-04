# RCN OS

This is the operating system build scripts to create a Raspberry Pi
operating system image based upon Alpine using the
[raspi-alpine builder](https://gitlab.com/raspi-alpine/builder)
docker image.

To run these scripts locally, you really need to have docker
installed, not podman. There are specifics relating to the `aarch64`
target that requires running `aarch64` binaries, and attempting to do
so in podman will unfortunately result in errors.

## Releases

Builds are made using a Github actions script to generate the OS image
automatically when a change is pushed. Official releases will then be
made manually through the normal Github method of attaching artifacts
built for a specific tag.
