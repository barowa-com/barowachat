Write-Output "$WINDOWN_PFX"
Move-Item -Path $WINDOWS_PFX -Destination barowachat.pem
certutil -decode barowachat.pem barowachat.pfx

flutter pub run msix:create -c barowachat.pfx -p $WINDOWS_PFX_PASS --sign-msix true --install-certificate false
