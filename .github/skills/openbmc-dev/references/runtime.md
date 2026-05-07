# Runtime Reference

This reference captures the exact workspace commands and validation patterns for local OpenBMC development.

## Repository Root

Run workspace-specific commands from:

```bash
/media/g2/openbmc
```

## Enter The BitBake Environment

Use the repository's configured environment entry command:

```bash
. ./oe-init-build-env ./build && bash
```

Typical follow-up commands inside that shell:

```bash
bitbake <recipe-name>
bitbake obmc-phosphor-image
bitbake -c clean <recipe-name>
bitbake -e <recipe-name>
```

Prefer recipe-level builds over full-image builds when possible.

## Start Local QEMU

If the expected image and QEMU binary already exist under `build/tmp`, use:

```bash
./run_qemu.sh
```

The helper script launches the `evb-ast2600` image and forwards these host ports:

- SSH: `127.0.0.1:2222`
- HTTPS: `127.0.0.1:2443`
- IPMI UDP: `127.0.0.1:2623`

## SSH Access

Preferred helper:

```bash
./ssh_openbmc.sh
```

Direct alternative:

```bash
ssh root@localhost -p 2222
```

Local QEMU credentials:

- Username: `root`
- Password: `0penBmc`

## Lightweight Runtime Checks

Use the narrowest check that can confirm the requested behavior.

Common checks:

```bash
busctl list
systemctl status <service>
journalctl -u <service>
```

Redfish example from the host:

```bash
curl -sk -u root:0penBmc https://localhost:2443/redfish/v1/
```

Possible IPMI example from the host if `ipmitool` is available:

```bash
ipmitool -I lanplus -H 127.0.0.1 -p 2623 -U root -P 0penBmc mc info
```

## Suggested Validation Pattern

1. Build the narrowest affected target.
2. Start QEMU only if runtime confirmation is needed.
3. SSH into the guest.
4. Run one or two focused checks that directly confirm the change.
5. Report the exact command and result.
