{ pkgs, ... }:

{
  languages.python = {
    enable = true;
    package = pkgs.python313;

    venv.enable = true;
  };

  packages = with pkgs; [
    python313Packages.pyside6

    qt6.qtbase
    qt6.qtdeclarative
    qt6.qttools
    qt6.qtsvg

    xorg.libxcb
    xorg.xcbutil
    xorg.xcbutilwm
    xorg.xcbutilimage
    xorg.xcbutilkeysyms
  ];

  env = {
    QT_QPA_PLATFORM = "xcb";
  };
}
