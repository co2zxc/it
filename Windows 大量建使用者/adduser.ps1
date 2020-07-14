#Set-ExecutionPolicy RemoteSigned
if (!$args) { 
    Write-Host "需要 CSV 檔案!"
} 

ELSE
{

#載入 CSV 檔
$accountdata=Import-CSV $args
  foreach ($element in $accountdata){ 
    
    #USER帳號 
    $name=$element.name 

    #帳號
    $userPrincipalName=$name 
    #密碼處理,要編碼
    $password=$element.password 
    $pass = ConvertTo-SecureString $password -AsPlainText -Force
    #中文名
    $description=$element.description 
    $displayName=$element.displayName 
    #群組
    $group=$element.group

    New-ADUser -Name $name -AccountPassword $pass  -Enabled 1 -ScriptPath "login.vbs" -SamAccountName $name -UserPrincipalName $userPrincipalName -OtherAttributes @{'description'=$description;'displayName'=$description; }
    #把帳號加入群組
    Add-ADGroupMember -Identity $group -Members $name
  } #end for
} # end if else