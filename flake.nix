{
  description = "Kill processes by name using fzf";

  inputs.utils.url = "github:NewDawn0/nixUtils";

  outputs = { self, utils, ... }: {
    overlays.default = final: prev: {
      kill-name = self.packages.${prev.system}.default;
    };
    packages = utils.lib.eachSystem { } (pkgs: {
      default = pkgs.writeShellApplication {
        name = "kill-name";
        runtimeInputs = with pkgs; [
          uutils-coreutils-noprefix
          fzf
          gawk
          procps
        ];
        text = builtins.readFile ./kill-name;
        meta = {
          description = "Kill processes by name using fzf";
          homepage = "https://github.com/NewDawn0/killName";
          license = pkgs.lib.licenses.mit;
          maintainers = with pkgs.lib.maintainers; [ NewDawn0 ];
        };
      };
    });
  };
}
