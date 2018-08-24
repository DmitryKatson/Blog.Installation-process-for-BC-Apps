$containername = 'BC-Latest'
$appname = 'Installation-process-for-BC-Apps'
$tenant = 'default'
$version = '2.0.0.0'
$appfilename = "Default publisher_" + $appname + "_" + $version + ".app"


Publish-NavContainerApp -containerName $containername `
    -appFile $appfilename `
    -install `
    -skipVerification `
    -sync `
    -tenant $tenant 

UnPublish-NavContainerApp -containerName $containername `
    -appName $appname `
    -unInstall `
    -version $version `
    -tenant $tenant 

UnInstall-NavContainerApp -containerName $containername `
    -tenant $tenant `
    -appName $appname 

Install-NavContainerApp -containerName $containername `
    -tenant $tenant `
    -appName $appname 

Start-NavContainerAppDataUpgrade -containerName $containername `
    -appName $appname 

Sync-NavContainerApp -containerName $containername `
    -appName $appname  `
    -tenant $tenant

