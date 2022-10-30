{ mkDerivation
, base
, containers
, deepseq
, directory
, exceptions
, fusion-plugin-types
, ghc-prim
, heaps
, lib
, monad-control
, mtl
, template-haskell
, transformers
}:
let
  rootSrc = fetchgit {
    url = "https://github.com/composewell/streamly";
    sha256 = "0n5q7v3gzvmj5pcvpg4xg38wdz43xkqwk6bqp2r6rnxppq5h2i81";
    rev = "0902a1587f7f2a4f5f02fd7fa58a0a210e5b4636";
    fetchSubmodules = true;
  };
in
mkDerivation {
  pname = "streamly-core";
  version = "0.1.0";
  src = "${rootSrc}/core";
  libraryHaskellDepends = [
    base
    containers
    deepseq
    directory
    exceptions
    fusion-plugin-types
    ghc-prim
    heaps
    monad-control
    mtl
    template-haskell
    transformers
  ];
  homepage = "https://streamly.composewell.com";
  description = "Dataflow programming and declarative concurrency";
  license = "unknown";
}
