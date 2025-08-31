{ config, pkgs, ...  }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -al";
    };

    history.size = 1000;
    history.path = "$HOME/.zsh_history";
    history.ignoreAllDups = true;

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
      }
      {
        name = "powerlevel10k-config";
        src = ./.p10k.zsh;
        file = ".p10k.zsh";
      }
    ];
  };
}
