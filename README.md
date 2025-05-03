# ☠️ kill-name

> _"Oops!... I killed it again."_ – Brittney Spears

`kill-name` lets you brutally murder processes with flair using `pgrep` + `fzf`. It's an opinionated `kill` command... that asks first.

## 💥 Features

- ☠️ Fuzzy match running processes with `fzf`
- 🧼 Clean kills — just vibes
- 🧙‍♂️ Can be used via Nix flake or overlay
- 🚫 No more copy-pasting PIDs like a caveman

## 🕹️ Usage

```bash
kill-name
```

You’ll be shown a list of processes. Pick one. Hit enter. Boom. Gone.

## 📦 Install

### Run instantly (zero commitment)

```bash
nix run github:NewDawn0/killName
```

### Use as a flake overlay

```nix
{
  inputs.killName.url = "github:NewDawn0/killName";

  outputs = { nixpkgs, killName, ... }: {
    packages.x86_64-linux = let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        overlays = [ killName.overlays.default ];
      };
    in {
      inherit (pkgs) kill-name;
    };
  };
}
```

## 🧐 Why?

Because killing processes should feel like choosing your starter Pokémon —
interactive, dramatic, and with zero regrets.

## 📜 License

- **MIT** Use responsibly

---

Made with 💀 by [@NewDawn0](https://github.com/NewDawn0)
PRs welcome. Unresponsive processes are not.
