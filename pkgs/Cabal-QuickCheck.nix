{ mkDerivation, base, bytestring, Cabal, Cabal-syntax, fetchgit
, lib, QuickCheck
}:
mkDerivation {
  pname = "Cabal-QuickCheck";
  version = "3.9.0.0";
  src = fetchgit {
    url = "https://gitlab.haskell.org/ghc/packages/Cabal";
    sha256 = "1h6bzv5zdbjhmrnqa3n14s1zybjxvspiqq228ksqcm2jfs4mbf96";
    rev = "06cbab69946768e766447b66a7ea168469a2c1a9";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/Cabal-QuickCheck/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base bytestring Cabal Cabal-syntax QuickCheck
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "QuickCheck instances for types in Cabal";
  license = "unknown";
}