{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "Parsifa1";
    userEmail = "li.aldric@gmail.com";
    package = pkgs.gitFull;
    extraConfig = {
      user.signingkey = "99B21766F86301CA";
      http.proxy = "localhost:7891";
      credential.helper = "store";
      core.editor = "nvim";
      credential.credentialStore = "cache";
      commit.gpgsign = true;
    };
  };
}
