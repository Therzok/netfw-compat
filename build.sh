#!/usr/bin/env bash

# Check the project builds and the projects which use the package build
dotnet build -c Release NullabilityCompat.sln
dotnet build -c Release NullabilityCompatTest.sln

# Also build on Mono matrix
msbuild /restore /p:Configuration=Release NullabilityCompat.sln
msbuild /restore /p:Configuration=Release NullabilityCompatTest.sln
