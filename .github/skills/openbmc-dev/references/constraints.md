# Constraints Reference

This reference captures the assumptions and guardrails for the local OpenBMC workflow in this workspace.

## Local Scope

- Treat `root` / `0penBmc` as the local QEMU login only.
- Do not assume these credentials apply to external hardware or remote lab systems.
- Prefer the local helper scripts before rewriting the same logic in a new command line.

## QEMU Assumptions

- `./run_qemu.sh` assumes the AST2600 EVB image already exists under `build/tmp/deploy/images/evb-ast2600/`.
- `./run_qemu.sh` also assumes the native QEMU binary exists under `build/tmp/work/x86_64-linux/qemu-system-native/...`.
- If those artifacts are missing, the likely fix is to build the appropriate image or QEMU-native target first from the BitBake environment.
- QEMU is a long-running process, so it should use a dedicated terminal or an asynchronous execution mode.

## SSH Helper Assumptions

- `./ssh_openbmc.sh` depends on `sshpass` being installed on the host.
- The helper already removes the stale host key entry for `localhost:2222` before logging in.
- If the helper fails because `sshpass` is missing, install the host dependency rather than editing the helper script unless the user asks for that change.

## Build Environment Guardrails

- Source `oe-init-build-env`; do not try to execute it as a standalone program.
- Run the BitBake environment command from the repository root unless there is a specific reason not to.
- Use the narrowest practical BitBake target for faster feedback.
- If the current shell is already in the BitBake environment, reuse it when practical.

## Validation Guardrails

- Prefer focused service, D-Bus, Redfish, or IPMI checks over broad exploratory sessions.
- If a runtime check is not possible because the image has not been built yet, report the missing artifact and the next build command instead of guessing.
- Keep validation local to the touched area before expanding to a full image build or broader runtime sweep.
