# CLAUDE.md

## Project
KeionsOperation — a minimal x86 OS kernel written in C, built as a learning-focused resume project. Full design rationale, phase-by-phase plan, and testing/verification criteria live in `docs/design.md` — read that for the "why" behind any decision.

## Current phase
Phase 1: Minimal Bootable Kernel (boot stub + kernel_main + VGA text output). No kernel code written yet — toolchain setup is complete.

## Stack
- C (freestanding), NASM for boot/entry assembly
- Cross-compiler: `i686-elf-gcc` (installed under WSL Ubuntu, in `~/opt/cross/bin`)
- Bootloader: GRUB via Multiboot2
- Build: Makefile
- Test/dev: QEMU (`qemu-system-i386`), GDB for debugging
- Working environment: WSL Ubuntu terminal (not native Windows PowerShell)

## How to work with me on this project
- I am learning OS development for the first time. Default to **Plan mode** — describe what you intend to do and why before editing files.
- When you introduce a concept I haven't hit yet (interrupts, paging, linker scripts, etc.), explain it briefly before using it, not just in a comment.
- Don't silently fix bugs. Walk through: what broke, how we can confirm it, what the likely cause is, and the fix — I want to be able to explain this later, not just have it work.
- Prefer smaller, reviewable changes over large multi-file edits I can't easily follow.

## Conventions
- Keep `docs/design.md` updated if a decision changes during implementation.
- Log significant debugging sessions or approach changes to `docs/recap.md` (create if it doesn't exist yet).
