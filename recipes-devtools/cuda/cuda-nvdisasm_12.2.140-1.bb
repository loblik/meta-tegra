CUDA_PKG = "${BPN}"

require cuda-shared-binaries.inc

MAINSUM = "d3865849611b2460abe8c798080315ea003b1f3f21f9e52a54a026da963234e1"
MAINSUM:x86-64 = "9575b9f5433808aa2a5bed474bb352417afd79f03357344dc6611ef0be92f067"

BBCLASSEXTEND = "native nativesdk"
