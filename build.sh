#!/usr/bin/env bash

CONFIG=Release

# Check the project builds and the projects which use the package build
# dotnet build -c $CONFIG NullabilityCompat.sln
# dotnet build -c $CONFIG NullabilityCompatTest.sln

# Also build on Mono matrix
msbuild /restore /p:Configuration=$CONFIG NullabilityCompat.sln
msbuild /restore /p:Configuration=$CONFIG NullabilityCompatTest.sln

