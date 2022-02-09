<!--{*
/*
 * Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 *
 * http://www.ec-cube.co.jp/
 */
*}-->
<!--　-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">

<head>
<meta http-equiv="content-type" content="application/xhtml+xml; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="content-script-type" content="text/javascript" />
<meta http-equiv="content-style-type" content="text/css" />
<link rel="stylesheet" href="<!--{$smarty.const.URL_ADMIN_CSS}-->contents.css" type="text/css" media="all" />
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/css.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/navi.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/win_op.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/site.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/admin.js"></script>
<!--{include file='css/contents.tpl'}-->
<title><!--{$tpl_subtitle}--></title>
<script type="text/javascript">
<!--
self.moveTo(20,20);self.focus();

function lfnCheckPayment(){
	var fm = document.form1;
	var val = 0;
	
	payment = new Array('payment[]');
	list = new Array('convenience_url', 'mobile_convenience_url');
	
	var max = fm["payment[]"].length;
	
	for (pi = 0; pi < payment.length; pi++) {
		if (max == undefined) {
			if (fm["payment[]"].checked) {
				fnChangeDisabled(list, false);
			} else {
				fnChangeDisabled(list);
			}
		} else {
			if (fm["payment[]"][0].checked) {
				fnChangeDisabled(list, false);
			} else {
				fnChangeDisabled(list);
			}
		}
	}
}

function fnChangeDisabled(list, disable) {
	len = list.length;

	if(disable == null) { disable = true; }
	
	for(i = 0; i < len; i++) {
		if(document.form1[list[i]]) {
			// ラジオボタン、チェックボックス等の配列に対応
			max = document.form1[list[i]].length
			if(max > 1) {
				for(j = 0; j < max; j++) {
					// 有効、無効の切り替え
					document.form1[list[i]][j].disabled = disable;
				}
			} else {
				// 有効、無効の切り替え
				document.form1[list[i]].disabled = disable;
			}
		}
	}
}

function win_open(URL){
	var WIN;
	WIN = window.open(URL);
	WIN.focus();
}
//-->
</script>
</head>

<body bgcolor="#ffffff" text="#666666" link="#007bb7" vlink="#007bb7" alink="#cc0000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload='lfnCheckPayment(); <!--{$tpl_onload}-->'>
<noscript>
<link rel="stylesheet" href="<!--{$smarty.const.URL_DIR}-->admin/css/common.css" type="text/css" />
</noscript>

<div align="center">
<!--★★★メインコンテンツ★★★-->
<table width="500" border="0" cellspacing="0" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.REQUEST_URI|escape}-->">
<input type="hidden" name="mode" value="edit">
	<tr valign="top">
		<td class="mainbg">
			<!--▼登録テーブルここから-->
			<table width="500" border="0" cellspacing="0" cellpadding="0" summary=" ">
				<!--メインエリア-->
				<tr>
					<td align="center">
						<table width="470" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td height="14"></td></tr>
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_top.jpg" width="470" height="14" alt=""></td>
							</tr>
							<tr>
								<td background="<!--{$TPL_DIR}-->img/contents/main_left.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
								<td bgcolor="#cccccc" >
									<table width="442" border="0" cellspacing="0" cellpadding="0" summary=" ">
										<tr>
											<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_top.gif" width="442" height="7" alt=""></td>
										</tr>
										<tr>
											<td background="<!--{$TPL_DIR}-->img/contents/contents_title_left_bg.gif"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_left.gif" width="22" height="12" alt=""></td>
											<td bgcolor="#636469" width="402" class="fs14n"><span class="white"><!--コンテンツタイトル--><!--{$tpl_subtitle}--></span></td>
											<td background="<!--{$TPL_DIR}-->img/contents/contents_title_right_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="18" height="1" alt=""></td>
										</tr>
										<tr>
											<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_bottom.gif" width="442" height="7" alt=""></td>
										</tr>
										<tr>
											<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="442" height="10" alt=""></td>
										</tr>
									</table>

									<table width="442" border="0" cellspacing="1" cellpadding="8" summary=" ">
										<tr class="fs12n">
											<td bgcolor="#ffffff">
												ルミーズ決済モジュールをご利用頂く為には、ユーザ様ご自身で
												ルミーズ株式会社様とご契約を行っていただく必要があります。 <br/>
												お申し込みにつきましては、下記のページから、お申し込みを行って下さい。<br/><br/>
												<a href="#" onClick="win_open('http://www.remise.jp/')" > ＞＞ ルミーズ決済システムについて</a><br/>
												<a href="#" onClick="win_open('http://wiki.ec-cube.net/')" > ＞＞ ルミーズ決済モジュール設定マニュアル</a>
											</td>
										</tr>
									</table>
									
									<table width="442" border="0" cellspacing="0" cellpadding="0" summary=" ">
										<tr><td><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="442" height="10" alt=""></td></tr>
									</table>
									
									<table width="442" border="0" cellspacing="1" cellpadding="8" summary=" ">
										<tr class="fs12n">
											<td width="" bgcolor="#f3f3f3">加盟店コード<span class="red">※</span></td>
											<td width="337" bgcolor="#ffffff">
											<!--{assign var=key value="code"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											<input type="text" name="<!--{$key}-->" style="ime-mode:disabled; <!--{$arrErr[$key]|sfGetErrorColor}-->" value="<!--{$arrForm[$key].value}-->" class="box10" maxlength="<!--{$smarty.const.INT_LEN}-->">
											</td>
										</tr>
										<tr class="fs12n">
											<td width="" bgcolor="#f3f3f3">ホスト番号<span class="red">※</span></td>
											<td width="337" bgcolor="#ffffff">
											<!--{assign var=key value="host_id"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											<input type="text" name="<!--{$key}-->" style="ime-mode:disabled; <!--{$arrErr[$key]|sfGetErrorColor}-->" value="<!--{$arrForm[$key].value}-->" class="box10" maxlength="<!--{$smarty.const.INT_LEN}-->">
											</td>
										</tr>
										<tr class="fs12n">
											<td width="" bgcolor="#f3f3f3">接続先URL<br />(クレジット)<span class="red">※</span></td>
											<td width="337" bgcolor="#ffffff">
											<!--{assign var=key value="credit_url"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											[PC]<br /><input type="text" name="<!--{$key}-->" style="ime-mode:disabled; <!--{$arrErr[$key]|sfGetErrorColor}-->" value="<!--{$arrForm[$key].value}-->" class="box40" maxlength="<!--{$smarty.const.URL_LEN}-->"><br />
											<!--{assign var=key value="mobile_credit_url"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											[モバイル]<br /><input type="text" name="<!--{$key}-->" style="ime-mode:disabled; <!--{$arrErr[$key]|sfGetErrorColor}-->" value="<!--{$arrForm[$key].value}-->" class="box40" maxlength="<!--{$smarty.const.URL_LEN}-->">
											</td>
										</tr>
										<tr class="fs12n">
											<td width="90" bgcolor="#f3f3f3">支払い方法<span class="red">※</span></td>
											<td width="337" bgcolor="#ffffff">
											<!--{assign var=key value="credit_method"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											<!--{html_checkboxes_ex name="$key" options=$arrCredit selected=$arrForm[$key].value style=$arrErr[$key]|sfGetErrorColor}-->
											</td>
										</tr>
										<tr class="fs12n">
											<td width="90" bgcolor="#f3f3f3">オプション</td>
											<td width="337" bgcolor="#ffffff">
											<!--{assign var=key value="payment"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											<!--{html_checkboxes_ex name="$key" options=$arrPayment selected=$arrForm[$key].value style=$arrErr[$key]|sfGetErrorColor onclick="lfnCheckPayment();"}-->
											</td>
										</tr>
										<tr class="fs12n">
											<td width="" bgcolor="#f3f3f3">接続先URL<br />(コンビニ)</td>
											<td width="337" bgcolor="#ffffff">
											<!--{assign var=key value="convenience_url"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											[PC]<br /><input type="text" name="<!--{$key}-->" style="ime-mode:disabled; <!--{$arrErr[$key]|sfGetErrorColor}-->" value="<!--{$arrForm[$key].value}-->" class="box40" maxlength="<!--{$smarty.const.URL_LEN}-->"><br />
											<!--{assign var=key value="mobile_convenience_url"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											[モバイル]<br /><input type="text" name="<!--{$key}-->" style="ime-mode:disabled; <!--{$arrErr[$key]|sfGetErrorColor}-->" value="<!--{$arrForm[$key].value}-->" class="box40" maxlength="<!--{$smarty.const.URL_LEN}-->">
											</td>
										</tr>
										<!--{assign var=key value="service"}-->
										<!--{if $arrErr[$key] != ""}-->
										<tr class="fs12n">
											<td bgcolor="#ffffff" colspan=2>
											<span class="red12"><!--{$arrErr[$key]}--></span>
											</td>
										</tr>
										<!--{/if}-->
									</table>

									<table width="442" border="0" cellspacing="0" cellpadding="0" summary=" ">
										<tr>
											<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
											<td><img src="<!--{$TPL_DIR}-->img/contents/tbl_top.gif" width="440" height="7" alt=""></td>
											<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
										</tr>
										<tr>
											<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
											<td bgcolor="#e9e7de" align="center">
											<table border="0" cellspacing="0" cellpadding="0" summary=" ">
												<tr>
													<td><input type="image" onMouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist_on.jpg',this)" onMouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist.jpg',this)" src="<!--{$TPL_DIR}-->img/contents/btn_regist.jpg" width="123" height="24" alt="この内容で登録する" border="0" name="subm" onClick="document.body.style.cursor = 'wait';"></td>
												</tr>
											</table>
											</td>
											<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
										</tr>
										<tr>
											<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/tbl_bottom.gif" width="442" height="8" alt=""></td>
										</tr>
									</table>
								</td>
								<td background="<!--{$TPL_DIR}-->img/contents/main_right.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
							</tr>
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bottom.jpg" width="470" height="14" alt=""></td>
							</tr>
							<tr><td height="30"></td></tr>
						</table>
					</td>
				</tr>
				<!--メインエリア-->
			</table>
			<!--▲登録テーブルここまで-->
		</td>
	</tr>
</form>
</table>
<!--★★メインコンテンツ★★-->
</div>

</body>
</html>