<?php
// ��һ������(GBK)ת����ƴ��(�ݲ����ֶ�����)
// ����: ������(!hightman)
// ��ҳ: http://php.twomice.net
// Դ�뼰��ʾ: http://scws.tguanlim.com/py/getpy.php
// $Id$

class my_Getpy
{
	var $_dat = '';
	var $_fd  = false;

	function my_Getpy($pdat = '')
	{
		if ('' == $pdat) $pdat =  dirname(__FILE__) . '/py.dat';
		$this->_dat = $pdat;
	}

	function load($pdat = '')
	{
		if ('' == $pdat)
			$pdat = $this->_dat;

		$this->unload();
		$this->_fd = @fopen($pdat, 'rb');
		if (!$this->_fd)
		{
			trigger_error("unable to load PinYin data file `$pdat`", E_USER_WARNING);
			return false;
		}
		return true;
	}

	function unload()
	{
		if ($this->_fd)
		{
			@fclose($this->_fd);
			$this->_fd = false;
		}
	}

	function get($zh)
	{
		if (strlen($zh) != 2)
		{
			trigger_error("`$zh` is not a valid GBK hanzi", E_USER_WARNING);
			return false;
		}

		if (!$this->_fd && !$this->load())
			return false;

		$high = ord($zh[0]) - 0x81;
		$low  = ord($zh[1]) - 0x40;

		// ����ƫ��λ��
		$nz = ($ord0 - 0x81);
		$off = ($high<<8) + $low - ($high * 0x40);

		// �ж� off ֵ
		if ($off < 0)
		{
			trigger_error("`$zh` is not a valid GBK hanzi-2", E_USER_WARNING);
			return false;
		}

		fseek($this->_fd, $off * 8, SEEK_SET);
		$ret = fread($this->_fd, 8);
		$ret = rtrim($ret, "\0");
		return $ret;
	}

	function _my_Getpy()
	{
		$this->_unload();
	}
}
?>
