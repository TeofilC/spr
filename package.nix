{
  lib,
  rustPlatform,
  fetchCrate,
  #Security,
  stdenv,
}:

rustPlatform.buildRustPackage rec {
  pname = "spr";
  version = "1.3.4";

  src = lib.cleanSource ./.;

  cargoHash = "sha256-tITiWvU8TJSVKJJgBFgFYarUJu1PGkCUdOtXWHMRX18=";

  #buildInputs = lib.optional stdenv.hostPlatform.isDarwin Security;

  meta = with lib; {
    description = "Submit pull requests for individual, amendable, rebaseable commits to GitHub";
    mainProgram = "spr";
    homepage = "https://github.com/sunshowers/spr";
    license = licenses.mit;
    maintainers = with maintainers; [ ]; 
  };
}
