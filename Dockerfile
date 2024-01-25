FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env

WORKDIR /templatebuild
VOLUME [ "/templatebuild/build" ]

COPY ./.git ./.git
COPY ./global.json ./global.json
COPY ./SmallsOnline.Dotnet.Templates.sln ./SmallsOnline.Dotnet.Templates.sln
COPY ./GitVersion.yml ./GitVersion.yml
COPY ./.config ./.config
COPY ./src/Templates ./src/Templates

RUN dotnet tool restore; \
    dotnet tool run dotnet-gitversion /updateprojectfiles

ENTRYPOINT [ "dotnet", "pack", "./src/Templates", "--configuration", "Release", "--output", "/templatebuild/build" ]