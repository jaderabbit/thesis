Invoke-Sqlcmd -InputFile "C:\thesisscripts\test.sql" -Database Experiment2017 `
              -Server .\JADEFULLSQL |
Export-Csv -NoTypeInformation `
           -Path "C:\thesisscripts\test.csv" `
           -Encoding UTF8