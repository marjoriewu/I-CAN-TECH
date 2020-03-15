<?php
// get_tfidf.php (by baidu);
if (!strcasecmp($_SERVER['QUERY_STRING'], 'source')) exit(highlight_file(__FILE__));
function get_tfidf($word, $count)
{
	if ($count < 1000) $count = 21000 - $count * 18;
	$tf = log($count);
	$tf = pow($tf, 5) * log(strlen($word));
	$tf = log($tf);
	$idf = log(5000000000/$count);
	//if ($tf > 13) $idf *= 1.4;
	return array($tf, $idf);
}

function get_count($word)
{
	$url  = "http://www.baidu.com/s?ie=gb2312&wd=" . urlencode($word);
	$data = @file_get_contents($url);
	if (!$data) return -1;
	$pos = -1;
	$pos1 = @strpos($data, "�ҵ������ҳԼ", 2048) + 14;
	$pos0 = @strpos($data, "�ҵ������ҳ", 2048) + 12;
	$pos = ($pos1 > 14 ? $pos1 : $pos0);
	$total = 0;
	if ($pos > 12)
	{
		$pos2 = @strpos($data, "ƪ", $pos);
		$total = substr($data, $pos, $pos2 - $pos1);
		$total = (int) str_replace(",", "", $total);
	}
	return $total;
}

$res = array();
$warn_str = '';
$word = isset($_REQUEST['data']) ? $_REQUEST['data'] : '';
if ($word != '')
{
	if (get_magic_quotes_gpc()) $word = stripslashes($word);
	$word = trim(strip_tags($word));
	if (strlen($word) < 2) $warn_str = "��������ȷ�Ĵʻ�";
	else if (strlen($word) > 30) $warn_str = "����Ĵ���̫����";
	else if (strpos($word, ' ') !== false) $warn_str = "�ʻ㲻Ҫ�����ո�";
	else if (preg_match('/[\x81-\xfe]/', $word) && preg_match('/[\x20-\x7f]{3}/', $word)) 
		$warn_str = "��Ӣ���ʱ��ĸ���ֻ�ܳ�3�����µ�������ĸ";
	else
	{
		$count = get_count($word);
		if ($count < 0) $warn_str = "�ڲ�ԭ�򣬼���ʧ�ܣ�";
		else $res = get_tfidf($word, $count);
	}
}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�´����ʵ�TF/IDF������ - for scws</title>
<style>
body { font-size: 14px; }
pre { font-size: 12px; color: red; }
</style>
</head>
<body>
<h1>�´����ʵ�TF/IDF������</h1>
<p>�˼������������ǲ��հٶ���������������Լ��㣬���㹫ʽ�������� scws �ִʣ�������;��ֻ�����ڲο���</p>
<form method="post">
<input type="text" size="30" name="data" value="<?php echo htmlspecialchars($word); ?>" />
<input type="submit">
</form>
<p>
<?php
if (!empty($word) && empty($warn_str)) 
	printf("��������WORD=%s TF=%.2f IDF=%.2f<br />\n", $word, $res[0], $res[1]);
if (!empty($warn_str))
	printf("<font color=\"red\">����%s</font><br />\n", $warn_str);
?>
</p>
</body>
</html>
