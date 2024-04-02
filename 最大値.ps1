#$maxを初期化
$max=0
echo("1～100の自然数を入力してください")
#$iが10を超えるまで繰り返す
for($i=1; $i -le 10; $i++)
{
    #入力受付
    [int]$sizensuu=Read-Host
    #$sizensuuが100だったら
    if($sizensuu -eq 100)
    {
        #ループを抜ける
        break
    }
    #$sizensuuが101以上だったら
    if($sizensuu -ge 101)
    {
    echo("再入力してください")
        #入力受付
        [int]$sizensuu=Read-Host 
    }
    #$sizensuuが$max以上だったら
    if($max -le $sizensuu)
    {
       $max=$sizensuu 
    }
}
echo("最大値は"+"「"+$max+"」です")