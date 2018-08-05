FROM microsoft/aspnetcore-build as build

WORKDIR /publish

COPY ./src/MvcApp.csproj .
RUN dotnet restore

COPY ./src .
RUN dotnet publish --output ./out

FROM microsoft/aspnetcore

WORKDIR /app

COPY --from=build /publish/out .
ENV ASPNETCORE_URLS "http://0.0.0.0:80"

ENTRYPOINT [ "dotnet", "MvcApp.dll" ]
