<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>キャンセル</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"yuyue");
 String yuyuedanhao="";
  	String xinxibianhao="";
  	String louhao="";
  	String cenghao="";
  	String jiaoshihao="";
  	String zuoweihao="";
  	
 yuyuedanhao=(String)mlbdq.get("yuyuedanhao");
  	xinxibianhao=(String)mlbdq.get("xinxibianhao");
  	louhao=(String)mlbdq.get("louhao");
  	cenghao=(String)mlbdq.get("cenghao");
  	jiaoshihao=(String)mlbdq.get("jiaoshihao");
  	zuoweihao=(String)mlbdq.get("zuoweihao");
  	 
 

 HashMap mssdq = new CommDAO().getmaps("xuehao",(String)request.getSession().getAttribute("username"),"xueshengxinxi");
 String xingming="";
  	
 xingming=(String)mssdq.get("xingming");
  	
   %>
   
   
   <%
  
String sql3=  "select * from quxiao where yuyuedanhao='"+request.getParameter("yuyuedanhao")+"' and xuehao='"+request.getParameter("xuehao")+"'";
CommDAO dao = new CommDAO();
  List<HashMap> userlist1 = dao.select(sql3);

  if(userlist1.size()==1)
{
	out.print("<script>alert('この恙朗もうキャンセルされていました');location.href='sy.jsp';</script>");
	return;
}


   %>
   
   
<script language="javascript">

function gow()
{
	document.location.href="quxiao_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){


String tt="update jiaoshixinxi set zhuangtai='腎' where xinxibianhao='"+xinxibianhao+"' ";

 new CommDAO().commOper(tt);


}
new CommDAO().insert(request,response,"quxiao",ext,true,false,""); 
%>

  <body >
 <form  action="quxiao_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  キャンセルを弖紗する:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">嚠�s桑催��</td><td><input name='yuyuedanhao' type='text' id='yuyuedanhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yuyuedanhao.value='<%=yuyuedanhao%>';document.form1.yuyuedanhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">秤�鷏�催��</td><td><input name='xinxibianhao' type='text' id='xinxibianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xinxibianhao.value='<%=xinxibianhao%>';document.form1.xinxibianhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">秀麗桑催��</td><td><input name='louhao' type='text' id='louhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.louhao.value='<%=louhao%>';document.form1.louhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">フロア桑催��</td><td><input name='cenghao' type='text' id='cenghao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.cenghao.value='<%=cenghao%>';document.form1.cenghao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">縮片桑催��</td><td><input name='jiaoshihao' type='text' id='jiaoshihao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiaoshihao.value='<%=jiaoshihao%>';document.form1.jiaoshihao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">恙朗桑催��</td><td><input name='zuoweihao' type='text' id='zuoweihao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zuoweihao.value='<%=zuoweihao%>';document.form1.zuoweihao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">僥汐桑催��</td><td><input name='xuehao' type='text' id='xuehao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">箆兆��</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="submit"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="reset" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	


return true;   
}   
popheight=450;
</script>  


