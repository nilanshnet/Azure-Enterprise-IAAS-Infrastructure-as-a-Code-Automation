$keyVaultName = "arv-dev-sec-kvt-001"
$keyEncryptionKeyName = "diskencryptionkey001"

 

    if($keyEncryptionKeyName)
    {
        Try
        {
            $kek = Get-AzureKeyVaultKey -VaultName $keyVaultName -Name $keyEncryptionKeyName -ErrorAction SilentlyContinue;
        }
        Catch [Microsoft.Azure.KeyVault.KeyVaultClientException]
        {
            Write-Host "Couldn't find key encryption key named : $keyEncryptionKeyName in Key Vault: $keyVaultName";
            $kek = $null;
        } 

 

        if(-not $kek)
        {
            Write-Host "Creating new key encryption key named:$keyEncryptionKeyName in Key Vault: $keyVaultName";
            $kek = Add-AzureKeyVaultKey -VaultName $keyVaultName -Name $keyEncryptionKeyName -Destination HSM -Size '2048' -ErrorAction SilentlyContinue;
            Write-Host "Created  key encryption key named:$keyEncryptionKeyName in Key Vault: $keyVaultName";
        }

 

        $keyEncryptionKeyUrl = $kek.Key.Kid;
             

 

    }   

 

        $keyEncryptionKeyUrl | ConvertTo-Json -Compress

 

        Write-Host ("##vso[task.setvariable variable=Infra.KeyVault.Keys;]$keyEncryptionKeyUrl")
        
#    use override template parameters in Devops pipeline.
#     like:     -kek ($Infra.KeyVault.Keys)