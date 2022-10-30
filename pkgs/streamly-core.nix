{ mkDerivation
, base
, containers
, deepseq
, directory
, exceptions
, fetchgit
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
    sha256 = "17vbabg6a8s5d2zjipfw4x27lhv1g4rhzav4545k2na8agswmx4a";
    rev = "686990bea661b91160df5a8508d0ac10d3a53c9e";
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
