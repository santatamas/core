using System;
using Xunit;
using Library;

namespace Tests
{
    public class Tests
    {
        [Fact]
        public void Test1()
        {
            var result = new LibraryClass().Test(4);
            Assert.Equal(8, result);
        }
    }
}
