function Prompt {
    # 用户名
    $username = (Get-ChildItem Env:\USERNAME).Value
    # 当前文件夹
    $curdir = "$(Get-Location)".Split("\") | Select-Object -Last 1

    $hostname = (Get-ChildItem Env:\COMPUTERNAME).Value

    $prompt = $username +"@"+$hostname +":" + $curdir
    $prompt = "`e[1;37m" + $prompt + "`e[m"
    # PS 31414@FREET:rustlings>
    return "PS " +  $prompt + "> "
}
# for busy box
Remove-Item Alias:* -Force
# use help
# notepad $PROFILE
# . $PROFILE
