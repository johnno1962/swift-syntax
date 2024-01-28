#!/bin/sh -x

time ./reps.pl "rm -rf ./SwiftParserCLI/.build; swift build -c release --package-path SwiftParserCLI" 10
time ./reps.pl "./SwiftParserCLI/.build/release/swift-parser-cli performance-test --directory ../swift/test --iterations 10" 100
time ./reps.pl "rm -rf ./SwiftParserCLI/.build; swift build -c release --package-path SwiftParserCLI" 10
time ./reps.pl "./SwiftParserCLI/.build/release/swift-parser-cli performance-test --directory ../swift/test --iterations 10" 100

time swift build -c debug --package-path SwiftParserCLI
time ./reps.pl "./SwiftParserCLI/.build/debug/swift-parser-cli performance-test --directory ../swift/test --iterations 1" 10

git checkout pr-back

time ./reps.pl "rm -rf ./SwiftParserCLI/.build; swift build -c release --package-path SwiftParserCLI" 10
time ./reps.pl "./SwiftParserCLI/.build/release/swift-parser-cli performance-test --directory ../swift/test --iterations 10" 100
time ./reps.pl "rm -rf ./SwiftParserCLI/.build; swift build -c release --package-path SwiftParserCLI" 10
time ./reps.pl "./SwiftParserCLI/.build/release/swift-parser-cli performance-test --directory ../swift/test --iterations 10" 100

time swift build -c debug --package-path SwiftParserCLI
time ./reps.pl "./SwiftParserCLI/.build/debug/swift-parser-cli performance-test --directory ../swift/test --iterations 1" 10
