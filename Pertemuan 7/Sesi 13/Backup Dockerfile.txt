#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["CoreWebApi/CoreWebApi.csproj", "CoreWebApi/"]
RUN dotnet restore "CoreWebApi/CoreWebApi.csproj"
COPY . .
WORKDIR "/src/CoreWebApi"
RUN dotnet build "CoreWebApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "CoreWebApi.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "CoreWebApi.dll"]