{ config, pkgs, ...  }:

{
  home.file.".p10k.zsh".source = ./.p10k.zsh;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "eza --icons=always";
    };

    history.size = 1000;
    history.path = "$HOME/.zsh_history";
    history.ignoreAllDups = true;

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
      }
    ];

    initContent = ''
      eval "$(zoxide init zsh)"
      source ~/.zsh/plugins/powerlevel10k/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
    '';
  };
}
