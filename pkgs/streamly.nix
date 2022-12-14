{ mkDerivation
, atomic-primops
, base
, containers
, deepseq
, directory
, exceptions
, fetchgit
, filepath
, fusion-plugin-types
, ghc-prim
, heaps
, lib
, lockfree-queue
, monad-control
, mtl
, network
, primitive
, transformers
, transformers-base
, unicode-data
}:
mkDerivation {
  pname = "streamly";
  version = "0.8.3";
  src = fetchgit {
    url = "https://github.com/composewell/streamly";
    sha256 = "17vbabg6a8s5d2zjipfw4x27lhv1g4rhzav4545k2na8agswmx4a";
    rev = "686990bea661b91160df5a8508d0ac10d3a53c9e";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    atomic-primops
    base
    containers
    deepseq
    directory
    exceptions
    filepath
    fusion-plugin-types
    ghc-prim
    heaps
    lockfree-queue
    monad-control
    mtl
    network
    primitive
    transformers
    transformers-base
    unicode-data
  ];
  homepage = "https://streamly.composewell.com";
  description = "Dataflow programming and declarative concurrency";
  license = lib.licenses.bsd3;
}
