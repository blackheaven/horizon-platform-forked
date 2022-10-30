{ mkDerivation
, atomic-primops
, base
, containers
, deepseq
, directory
, exceptions
, hashable
, heaps
, lib
, lockfree-queue
, monad-control
, mtl
, network
, streamly-core
, transformers
, transformers-base
, unicode-data
, unordered-containers
}:
mkDerivation {
  pname = "streamly";
  version = "0.9.0";
  src = ./.;
  libraryHaskellDepends = [
    atomic-primops
    base
    containers
    deepseq
    directory
    exceptions
    hashable
    heaps
    lockfree-queue
    monad-control
    mtl
    network
    streamly-core
    transformers
    transformers-base
    unicode-data
    unordered-containers
  ];
  homepage = "https://streamly.composewell.com";
  description = "Dataflow programming and declarative concurrency";
  license = lib.licenses.bsd3;
}
