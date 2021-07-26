{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    buku
    exa
    fd
    fzf
    gdu
    git-crypt
    git-lfs
    gnupg
    gnused
    haste-client
    htop
    hyperfine
    lazygit
    neofetch
    nnn
    pandoc
    ripgrep
    shellcheck
    tree
    stow
    vim
    vscode
    wget
    zoxide

    hugo

    vim-vint
    nodePackages.write-good
    proselint



    imagemagick
    perl532Packages.vidir
    poppler_utils
    tesseract
    texlive.combined.scheme-full
    youtube-dl
    xplr
  ];

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
