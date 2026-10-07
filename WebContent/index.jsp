<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>TEST</title>
</head>
<body>
    <p>こんにちは！</p>
	
<! JSPで現在日時を表示 >
	
    <% out.println(new java.util.Date()); %>
	
<! JSPで加算メソッドを定義して呼び出す >
	
	<%!

	static int add(int a, int b){
	    return a + b;
	}

	%>

	<p>1+2=<%=add(1, 2) %></p>

	<p>1+2=<%=add(3, 4) %></p>
	
<! 宣言タグとスクリプトレットの動作確認 >
	
	<%! static int countA=0; %>
	
	<%
	
	int countB=0;
	countA++;
	countB++;
	
	%>
	
	<p>宣言による変数 countA=<%=countA %></p>
	<p>スクリプトレットによる変数 countB=<%=countB %></p>
	
<! JSPで乱数を表示 >
	
	<p><% out.println(Math.random()); %></p>
	<p><%=Math.random() %></p>
	
<! POST送信フォームの作成 >
	
	<p>お名前を入力してください。</p>
	
	<form method="post" action="greeting-out.jsp">
		<input type="text" name="user">
		<input type="submit" value="確定">
	</form>
	
</body>
</html>