
Invoke-Sqlcmd -InputFile "C:\thesisscripts\swarmscalability.sql" -Database Experiment2017 `
              -Server .\JADEFULLSQL |
Export-Csv -NoTypeInformation `
           -Path "C:\thesisscripts\swarmscalability.csv" `
           -Encoding UTF8

Invoke-Sqlcmd -InputFile "C:\thesisscripts\problemscalability.sql" -Database Experiment2017 `
              -Server .\JADEFULLSQL |
Export-Csv -NoTypeInformation `
           -Path "C:\thesisscripts\problemscalability.csv" `
           -Encoding UTF8

Invoke-Sqlcmd -InputFile "C:\thesisscripts\flexibility-environmentitemratio.sql" -Database Experiment2017 `
              -Server .\JADEFULLSQL |
Export-Csv -NoTypeInformation `
           -Path "C:\thesisscripts\flexibility-environmentitemratio.csv" `
           -Encoding UTF8

Invoke-Sqlcmd -InputFile "C:\thesisscripts\flexibility-environmentdistribution.sql" -Database Experiment2017 `
              -Server .\JADEFULLSQL |
Export-Csv -NoTypeInformation `
           -Path "C:\thesisscripts\flexibility-environmentdistribution.csv" `
           -Encoding UTF8