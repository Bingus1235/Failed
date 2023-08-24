with import <nixpkgs> {};
stdenv.mkDerivation {
    name = "csb";
    buildInputs = [
        bashInteractive
        man
        jq
        ffmpeg
        jre8
        jdk11
        git
        tmux
        wget
        curl
        dialog
        java
    ];
    shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
    '';
}