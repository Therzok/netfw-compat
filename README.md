System.Diagnostics.CodeAnalysis.Compat
======================================

Nullability attributes are not available in netstandard 2.0, nor in .NET Framework. As a result, this makes it really tricky to work with the nullable reference types feature in C# 8.0, as many of the control flow features depend on these attributes.

This nuget tries to workaround that issue by doing what others projects are doing, like [Roslyn](https://github.com/dotnet/roslyn/blob/823be8edbc23e28f1c485f1a047b59f537e172f3/src/Compilers/Core/Portable/InternalUtilities/NullableAttributes.cs) itself by including these attributes as source in the assembly, allowing the actual nullability analyzers to run.

Caveats: When targeting NS2.0, the BCL types are still not annotated. This is mostly useful for annotating your types early on and creating the building blocks for cleaner nullability annotated code.

https://www.nuget.org/packages/Compat.System.Diagnostics.CodeAnalysis/
