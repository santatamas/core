#/bin/bash
wd=$(pwd)

# Restore
dotnet restore $wd/Library/
dotnet restore $wd/Web/
dotnet restore $wd/Api/
dotnet restore $wd/Library.Tests/
dotnet restore $wd/Web.Tests/
dotnet restore $wd/Api.Tests/

dotnet test $wd/Api.Tests/project.json -xml $wd/report/junit/api-tests.xml
dotnet test $wd/Library.Tests/project.json -xml $wd/report/junit/library-tests.xml
dotnet test $wd/Web.Tests/project.json -xml $wd/report/junit/web-tests.xml