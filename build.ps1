    Set-Content -Value '"C:\Program Files\Azure Cosmos DB Emulator\CosmosDB.Emulator.exe" /NoUI /NoExplorer /NoFirewall /Port=8181' -Path .\startCosmosDb.cmd
    Start-Process -FilePath .\startCosmosDb.cmd
    .\waitforport.ps1 -port 8181 -maxAttempts 4
