#!/usr/bin/env pwsh 

$client = new-object System.Net.WebClient

# $client.DownloadFile(
# "http://mirrors.ibiblio.org/apache/spark/spark-2.4.4/spark-2.4.4-bin-without-hadoop.tgz",
# "spark.tgz"
# )

# $client.DownloadFile(
# "https://github.com/dotnet/spark/releases/download/v0.7.0/Microsoft.Spark.Worker.netcoreapp2.1.osx-x64-0.7.0.zip",
# "sparkdotnet.tgz"
# )

$client.DownloadFile(
    "http://mirror.cogentco.com/pub/apache/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz",
    "hadoop.tgz"
)

# function Expand-Tar($tarFile, $dest) {
#     # TODO: add conditional
#     # Save-Module -Name 7Zip4Powershell -Path .
#     $pathToModule = ".\7Zip4Powershell\1.9.0\7Zip4PowerShell.psd1"
#     if (-not (Get-Command Expand-7Zip -ErrorAction Ignore)) {
#         Import-Module $pathToModule
#     }
#     Expand-7Zip $tarFile $dest
# }
# Expand-Tar "spark.tgz" "./opt/"

# https://spark.apache.org/docs/latest/hadoop-provided.html

# brew install dotnet-sdk
# dotnet new console -o HelloSpark
