    Set-Content -Value '"C:\Program Files\Azure Cosmos DB Emulator\CosmosDB.Emulator.exe" /NoUI /NoExplorer /NoFirewall' -Path .\startCosmosDb.cmd
    Start-Process -FilePath .\startCosmosDb.cmd
    .\waitforport.ps1 -port 8081 -maxAttempts 4
