{ mkDerivation
, base
, hashable
, HUnit
, lib
, stm
, test-framework
, test-framework-hunit
}:
mkDerivation {
  pname = "async";
  version = "2.2.4";
  sha256 = "484df85be0e76c4fed9376451e48e1d0c6e97952ce79735b72d54297e7e0a725";
  revision = "2";
  editedCabalFile = "1j93w1krkadqijn59yjiws1366yhcn2mad1irqrk50in6l10k51b";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base hashable stm ];
  testHaskellDepends = [
    base
    HUnit
    stm
    test-framework
    test-framework-hunit
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/simonmar/async";
  description = "Run IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
}
