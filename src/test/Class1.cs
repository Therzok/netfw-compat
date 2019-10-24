#nullable enable

using System.Diagnostics.CodeAnalysis;

namespace test
{
    class Class1
    {
        public bool IsNullOrEmpty([NotNullWhen(false)] string? value)
            => string.IsNullOrEmpty(value);

        public string Bug(string? value)
            => !IsNullOrEmpty(value) ? value.ToString() : string.Empty;
    }
}
