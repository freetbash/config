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
Remove-Alias -Force -Name cat
Remove-Alias -Force -Name copy
Remove-Alias -Force -Name cp
Remove-Alias -Force -Name echo
Remove-Alias -Force -Name ls
Remove-Alias -Force -Name man
Remove-Alias -Force -Name mv
Remove-Alias -Force -Name pwd
Remove-Alias -Force -Name rm
Remove-Alias -Force -Name rmdir
Remove-Alias -Force -Nam
# use help
# notepad $PROFILE
# . $PROFILE
