{ pkgs, ... }:

{
  languages.python = {
    enable = true;
    package = pkgs.python313;
    venv = {
      enable = true;
    };
  };

  packages = with pkgs; [
    python313Packages.tkinter
    tcl
    tk
    zlib
  ];
}
