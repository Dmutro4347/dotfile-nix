{ config, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" "z" "sudo" "history" "autojump" "docker" ];
    };

    initContent = ''
      source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh

      source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

      [ -f ${pkgs.fzf}/share/fzf/key-bindings.zsh ] && source ${pkgs.fzf}/share/fzf/key-bindings.zsh
      [ -f ${pkgs.fzf}/share/fzf/completion.zsh ] && source ${pkgs.fzf}/share/fzf/completion.zsh

      setopt INC_APPEND_HISTORY
      setopt SHARE_HISTORY '';

    shellAliases =
      let
        flakeDir = "/home/arfors/flake";
      in
      {
        sw = "nh os switch";
        upd = "nh os switch --update";
        hms = "nh home switch";

        pkgs = "nvim ${flakeDir}/home-manager/home-packages.nix";

        r = "ranger";
        vi = "nvim";
        microfetch = "microfetch && echo";

        gs = "git status";
        ga = "git add";
        gc = "git commit";
        gp = "git push";

        ".." = "cd ..";
      };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
  };
  home.packages = with pkgs; [
    autojump
    fzf
    fd
    zsh-autosuggestions
    zsh-syntax-highlighting
  ];
}
