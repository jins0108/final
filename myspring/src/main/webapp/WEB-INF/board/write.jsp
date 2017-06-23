<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.10.2.js"></script>

<script type="text/javascript">
  $(document).ready(function(){
	 
	  $('#btnList').bind('click',function(){
		  $('#frm').attr('action','list.htm');		
		  $('#frm').submit();
		  // $('#frm').attr('action','list.htm').submit();
		  
	  });
	  
	  $('#btnSave').bind('click',function(){
		//  oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
		  $('[name=content]').val(
					$('[name=content]').val().replace(/\n/gi, '<br/>'));			
		  alert($('[name=content]').val());
		  $('#frm').attr('action','bbsRight.do').submit();
	  });
	  
	  //첨부파일 용량체크
	  $('#filepath').on('change',function(){						 
			 if(this.files && this.files[0]){				 
				if(this.files[0].size>1000000000){
					alert("1GB바이트 이하만 첨부할 수 있습니다.");				
					$('#filepath').val('');				
					return false;
				}				
			 }
		 });
	  
  });
</script>

</head>
<body>
	<form name="frm" id="frm" method="post" enctype="multipart/form-data">

		<table border=1 width="1000">

			<tr>
				<td width="20%" align="center">글쓴이</td>
				<td><input type="text" name="writer" size="10" maxlength="10" value="${s_user_id} "/></td>
			</tr>

			<tr>
				<td width="20%" align="center">Email</td>
				<td><input type="text" name="email" size="30" maxlength="30" value="${s_user_email}" /></td>
			</tr>

			<tr>
				<td width="20%" align="center">제목</td>
				<td>				
				 <c:if test="${dto!=null}">답변</c:if> 			 
				<input type="text" name="subject" size="40" /></td>
			</tr>
		
			<tr>
				<td width="20%" align="center">내용</td>
				<script type="text/javascript" src="smarteditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
				<td><textarea name="content" id="content" rows="10" cols="100" style="width:766px; height:412px; display:none;"></textarea></td>
<script>
// var oEditors = [];

// var sLang = "ko_KR";	// 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR

// // 추가 글꼴 목록
// //var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

// nhn.husky.EZCreator.createInIFrame({
// 	oAppRef: oEditors,
// 	elPlaceHolder: "contents",
// 	sSkinURI: "smarteditor2/SmartEditor2.html",	
// 	htParams : {
// 		bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
// 		bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
// 		bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
// 		//bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
// 		//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
// 		fOnBeforeUnload : function(){
// 			//alert("완료!");
// 		},
// 		I18N_LOCALE : sLang
// 	}, //boolean
// 	fOnAppLoad : function(){
// 		//예제 코드
// 		//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
// 	},
// 	fCreator: "createSEditor2"
// });
</script>

			</tr>

			<tr>
				<td width="20%" align="center">첨부파일</td>
				<td><input type="file" name="filename" id="filepath"/>
			</tr>
		</table>
		<!-- 답변글일때.... -->
		 <c:if test="${dto!=null}">
			<input type="hidden" name="num" id="num" value="${dto.num}" />
			<input type="hidden" name="currentPage" id="currentPage"
				value="${currentPage}" />
			<input type="hidden" name="ref" value="${dto.ref}" />
			<input type="hidden" name="re_step" value="${dto.re_step}" />
			<input type="hidden" name="re_level" value="${dto.re_level}" />
		</c:if> 
		
		<input type="button" id="btnList" value="리스트" /> 
		<input type="button" id="btnSave" value="저장" />

	</form>
<!-- SmartEditorBasic -->

					<script type="text/javascript">

					var oEditors = [];
					nhn.husky.EZCreator.createInIFrame({
						oAppRef: oEditors,
						elPlaceHolder: "content",
						sSkinURI: "smarteditor2/SmartEditor2Skin.html",//saveDir=/home/www/gw/uploads/cttImg/&action=workRpt,
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










