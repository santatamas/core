#/bin/bash
wd=$(pwd)

# Restore
dotnet restore $wd/Library/
dotnet restore $wd/Web/
dotnet restore $wd/Api/

# Build
dotnet build **/project.json

# Publish Web
cd $wd/Web/
dotnet publish -c Release -o ./bin/