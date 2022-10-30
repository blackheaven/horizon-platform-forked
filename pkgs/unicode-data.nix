{ mkDerivation
, base
, deepseq
, hspec
, hspec-discover
, lib
, tasty
, tasty-bench
}:
mkDerivation {
  pname = "unicode-data";
  version = "0.3.1";
  sha256 = "089jscb4bd854hnf2y076a40ckhsfd60qhml93z4nl929l44w2bx";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [ base deepseq tasty tasty-bench ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "http://github.com/composewell/unicode-data";
  description = "Access Unicode Character Database (UCD)";
  license = lib.licenses.asl20;
}
