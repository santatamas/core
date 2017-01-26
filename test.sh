#/bin/bash
wd=$(pwd)

# Restore
dotnet restore $wd/Library.Tests/
dotnet restore $wd/Web.Tests/
dotnet restore $wd/Api.Tests/

dotnet test $wd/Api.Tests/project.json
dotnet test $wd/Library.Tests/project.json
dotnet test $wd/Web.Tests/project.json