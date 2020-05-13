@echo off
@setlocal
setlocal EnableDelayedExpansion

echo Unit Tests

echo "Test for successful release build"
dub build -b release --compiler=%DC%
dub clean --all-packages -q

echo "Running tests"
dub test --compiler=%DC%

echo "Running example tests"
dub test :getting-started --compiler=%DC% -q
dub test :vfsfile --compiler=%DC% -q


