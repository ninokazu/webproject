<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.awt.Graphics2D"%>
<%@ page import="java.awt.image.renderable.ParameterBlock"%>
<%@ page import="java.awt.image.BufferedImage"%>
<%@ page import="javax.media.jai.JAI"%>
<%@ page import="javax.media.jai.RenderedOp"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<jsp:useBean id="brd" class="brd.Board" scope="page" />
<jsp:useBean id="brddb" class="brd.BoardFn" scope="page" />

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:setProperty name="brd" property="id" />
<jsp:setProperty name="brd" property="title" />
<jsp:setProperty name="brd" property="content" />
<%
	brddb.insertDB(brd);
response.sendRedirect("listboard.jsp");
%>