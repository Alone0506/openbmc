---
name: openbmc-dev
description: "OpenBMC development workflow for BitBake environment setup, recipe builds, QEMU startup, SSH login, and quick runtime validation in this workspace. Use for build, meta-layer, D-Bus, IPMI, Redfish, phosphor service, and dbus-sensors debugging tasks."
argument-hint: "Task such as: enter the BitBake environment, build a recipe, start QEMU, SSH into OpenBMC, or validate a service"
user-invocable: true
---

# OpenBMC Development Workflow

Use this skill when the task needs the operational steps for building, running, or validating OpenBMC in this workspace.

## Workspace Entry Points

- BitBake environment: `. ./oe-init-build-env ./build && bash`
- QEMU launcher: `./run_qemu.sh`
- SSH helper: `./ssh_openbmc.sh`

## Procedure

1. Confirm the target area, such as a meta layer, recipe, service, sensor path, or runtime interface.
2. If a build is needed, enter the BitBake environment from the repository root.
3. Use the narrowest practical BitBake target before falling back to a full image build.
4. If runtime validation is needed and the image already exists, start QEMU with `./run_qemu.sh`.
5. Connect with `./ssh_openbmc.sh` or direct SSH to `root@localhost -p 2222`.
6. Run the smallest runtime check that can confirm the change.
7. Report the exact commands run, the exact validation performed, and any blockers.

## Common Flows

### Enter the BitBake environment

From the repository root, use:

```bash
. ./oe-init-build-env ./build && bash
```

If the current shell already has the expected environment, reuse it instead of nesting shells unnecessarily.

### Build a focused target

After entering the BitBake environment, prefer the smallest useful build target, for example:

```bash
bitbake <recipe-name>
bitbake obmc-phosphor-image
```

Use recipe-specific builds for fast feedback. Use the full image build only when the task requires it.

### Start local QEMU

If the image and QEMU binary already exist under `build/tmp`, use:

```bash
./run_qemu.sh
```

This is a long-running command. Run it in a dedicated terminal or as an asynchronous task.

### SSH into the local image

After QEMU boots, use:

```bash
./ssh_openbmc.sh
```

This helper removes the stale host key for `localhost:2222`, then logs in as `root` with password `0penBmc`.

## Runtime Validation Examples

- Use `busctl list` to confirm that the expected D-Bus services appear.
- Use `systemctl status <service>` or `journalctl -u <service>` to inspect service state.
- Use `curl -sk -u root:0penBmc https://localhost:2443/redfish/v1/` for a quick Redfish check.
- Use focused command-line checks instead of broad manual exploration whenever possible.

## References

- [Runtime Reference](./references/runtime.md)
- [Constraints Reference](./references/constraints.md)
