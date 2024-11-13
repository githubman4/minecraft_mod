
let pkgs = import <nixpkgs> {};
in
 
pkgs.mkShellNoCC {
  packages = with pkgs; [
    cowsay # いらない
    lolcat # いらない
    gradle
    jdk17

  ];

  # 環境変数
  shellHook = ''
  export MY_NAME_IS="オスマン🚴‍♀️🍎"
  
  '';

}

/*
let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
 
pkgs.mkShellNoCC {
  packages = with pkgs; [
    cowsay # いらない
    lolcat # いらない
    python3
  ];
}
*/

/*
let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "devenv";

  buildInputs = with pkgs; [
    nodejs-18_x
    yarn
    nodePackages.typescript
    nodePackages.typescript-language-server
  ];
}
*/


