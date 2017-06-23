<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="../smarteditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>

<textarea class="i_text" title="내용" cols="150" rows="5" name="contents" id="contents"></textarea>


<!-- SmartEditorBasic -->
					<script type="text/javascript">
					var oEditors = [];
					nhn.husky.EZCreator.createInIFrame({
						oAppRef: oEditors,
						elPlaceHolder: "contents",
						sSkinURI: "../smarteditor2/SmartEditor2Skin.html",//saveDir=/home/www/gw/uploads/cttImg/&action=workRpt",
						htParams : {
							bUseToolbar : true,
							fOnBeforeUnload : function(){
								//alert("아싸!");
							}
						}, //boolean
						fOnAppLoad : function(){
							//예제 코드
							//oEditors.getById["contents"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
						},
						fCreator: "",
						saveDir: "",
						httpDir: ""
					});
					</script>
<!-- SmartEditorBasic -->
			


</body>
</html>