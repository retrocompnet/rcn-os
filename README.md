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

## Age Verification and California Law

This is an operating system, and Retrocomp Networks Foundation,
Inc. is an operating system provider under California law, despite
being headquartered in Texas. Technically, this means we are covered
under the newly minted California age verification law. In this
particular case, this is an embedded operating system with no specific
user accounts associated with it, so it is unclear if California law
will apply.

Therefore, the GNU GPLv3 license is hereby modified with the following
condition: if you are a resident of California, you do **not** have
the license to use, modify, or distribute this software in any way,
shape or form.

Retrocomp Networks Foundation, Inc. does not distribute this software
to residents of California.
