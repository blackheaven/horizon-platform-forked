{ mkDerivation
, atomic-primops
, base
, containers
, deepseq
, directory
, exceptions
, fetchgit
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
  src = fetchgit {
    url = "https://github.com/composewell/streamly";
    sha256 = "0n5q7v3gzvmj5pcvpg4xg38wdz43xkqwk6bqp2r6rnxppq5h2i81";
    rev = "0902a1587f7f2a4f5f02fd7fa58a0a210e5b4636";
    fetchSubmodules = true;
  };
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
