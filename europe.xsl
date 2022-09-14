<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html []>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" />
  <xsl:template match="/">
    <head>
      <h1 align="center">
        <img src="title.png" />
      </h1>
      <style>        body {
        font-family: '제주고딕', sans-serif;
        }
      .header{
         padding: 15px;
         list-style-type: none
        }
        
       a.country:link { country-decoration: none;  color:#333; text-decoration: none;}
       a.country:visited { country-decoration: none; color: #333; text-decoration: none;}
       a.country:hover { country-decoration: none; color:        #4622ff; background-color: #A9D0F5; text-decoration: none;}

        
        li {
          list-style-type: none;
          bottom: 15px;
          right: 20px;
          position: fixed;
        }

        table{
border-collapse: collapse;
        width: 55%;
        }
        
        table th{
        width: 10%;
        }

        #title{
        width: 55%;
        height: 40%;
        }
        
        #title th{
        height: 8%;
        }</style>
      <li>
        <a class="active" href="#">
          <img src="top.png" height="100" />
        </a>
      </li>
      <div class="header">
        <hr style="height : 5px; color : #68a9ff; border:0 none; background-color : #68a9ff" />
        <h3 align="center" style="">
          <a class="country" href="#one" onMouseOver="this.innerHTML='동유럽'" onMouseOut="this.innerHTML='러시아'">러시아</a>　　|　　<a class="country" href="#two" onMouseOver="this.innerHTML='동유럽'" onMouseOut="this.innerHTML='체　코'">체　코</a>　　|　　<a class="country" href="#three" onMouseOver="this.innerHTML='동유럽'" onMouseOut="this.innerHTML='헝가리'">헝가리</a>　　|　　<a class="country" href="#four" onMouseOver="this.innerHTML='서유럽'" onMouseOut="this.innerHTML='영　국'">영　국</a>　　|　　<a class="country" href="#five" onMouseOver="this.innerHTML='서유럽'" onMouseOut="this.innerHTML='독　일'">독　일</a>　　|　　<a class="country" href="#six" onMouseOver="this.innerHTML='서유럽'" onMouseOut="this.innerHTML='스위스'">스위스</a>　　|　　<a class="country" href="#seven" onMouseOver="this.innerHTML='서유럽　'" onMouseOut="this.innerHTML='네덜란드'">네덜란드</a>　　|　　<a class="country" href="#eight" onMouseOver="this.innerHTML='서유럽'" onMouseOut="this.innerHTML='프랑스'">프랑스</a>　　|　　<a class="country" href="#nine" onMouseOver="this.innerHTML='남유럽　'" onMouseOut="this.innerHTML='이탈리아'">이탈리아</a>　　|　　<a class="country" href="#ten" onMouseOver="this.innerHTML='남유럽'" onMouseOut="this.innerHTML='그리스'">그리스</a></h3>
        <hr style="height : 5px; color : #68a9ff; border:0 none; background-color : #68a9ff" />
      </div>
      <div>
        <p align="center" style=" font-family : '제주고딕'; border-style:solid; border-width:2px; padding:10px; border-color:#E0F8F7; background-color:#E0F8F7;">유럽은 크게 네 지역으로 나뉜다. <br />스칸디나비아 반도를 포함한 북부 유럽, 일찍부터 산업이 발달한 알프스 산맥 위쪽의 서부 유럽, 고대 그리스·로마 문화가 꽃피었던 알프스 남쪽의 남부 유럽, 그리고 과거 사회주의 국가가 많았던 동부 유럽으로 나뉜다.<br />
 이들 중 우리가 소개할 동유럽 지역은 
 <xsl:value-of select="count(/europe_catalog/europe[@category='동유럽'])" />
개, 서유럽 지역은 
 <xsl:value-of select="count(/europe_catalog/europe[@category='서유럽'])" />
개, 남유럽 지역은 
 <xsl:value-of select="count(/europe_catalog/europe[@category='남유럽'])" />
개, 북유럽 지역은 
 <xsl:value-of select="count(/europe_catalog/europe[@category='북유럽'])" />
개(없음)로 나뉜다.
 </p>
        <p>
          <h2 align="center" style="font-size:25px;">『유럽 추천 여행지 TOP10』</h2>
          <table id="title" border="1" align="center">
            <tr bgcolor="#A9D0F5">
              <th>순위</th>
              <th>이름</th>
              <th>수도</th>
              <th>면적(ha)</th>
              <th>인구수</th>
              <th>거리(Km)</th>
            </tr>
            <xsl:call-template xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="유럽" />
          </table>
        </p>
      </div>
      <div style="text-align:center; font-size:12pt; color:#68a9ff">
        <div>@copyright team2_Europe tourist attraction</div>
        <div>19120068강지연 19120603김지원 19120748박소현</div>
      </div>
    </head>
    <body>
      <style>body {height: 100%;
overflow:hidden; 
background:#CEECF5;
}

.main{
  display: flex;
  justifly-content: center;
  align-items: center;
  height: 100vh;
}

div{
  padding: 10px;
}</style>
      <div id="one" class="main">
        <div>
          <xsl:call-template name="one" />
        </div>
      </div>
      <div id="two" class="main">
        <div>
          <xsl:call-template name="two" />
        </div>
      </div>
      <div id="three" class="main">
        <div>
          <xsl:call-template name="three" />
        </div>
      </div>
      <div id="four" class="main">
        <div>
          <xsl:call-template name="four" />
        </div>
      </div>
      <div id="five" class="main">
        <div>
          <xsl:call-template name="five" />
        </div>
      </div>
      <div id="six" class="main">
        <div>
          <xsl:call-template name="six" />
        </div>
      </div>
      <div id="seven" class="main">
        <div>
          <xsl:call-template name="seven" />
        </div>
      </div>
      <div id="eight" class="main">
        <div>
          <xsl:call-template name="eight" />
        </div>
      </div>
      <div id="nine" class="main">
        <div>
          <xsl:call-template name="nine" />
        </div>
      </div>
      <div id="ten" class="main">
        <div>
          <xsl:call-template name="ten" />
        </div>
      </div>
    </body>
  </xsl:template>
  <xsl:template name="유럽">
    <xsl:for-each select="europe_catalog/europe">
      <xsl:sort select="distance" order="ascending" data-type="number" />
      <tr>
        <td align="center">
          <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="position()" />
        </td>
        <td align="center">
          <xsl:value-of select="name" />
        </td>
        <td align="center">
          <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="capital" />
        </td>
        <td align="center">
          <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="area" />
        </td>
        <td align="center">
          <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="population" />
        </td>
        <td align="center">
          <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="distance" />
        </td>
      </tr>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="one">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='1']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='1']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='1']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="two">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='2']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='2']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='2']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="three">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='3']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='3']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='3']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="four">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='4']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='4']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='4']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="five">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='5']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"></xsl:value-of>
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='5']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='5']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="six">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='6']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='6']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='6']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="seven">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='7']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='7']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='7']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="eight">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='8']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='8']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='8']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="nine">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='9']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='9']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='9']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template name="ten">
    <h2 align="center" style="font-size:30;">
      <strong>
        <xsl:value-of xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="translate(europe_catalog/europe[@num='10']/name[@language='English'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />
      </strong>
    </h2>
    <p align="center">
      <xsl:apply-templates select="europe_catalog/europe[@num='10']/spot/main_image" />
    </p>
    <p align="center">
      <table border="0">
        <xsl:apply-templates select="europe_catalog/europe[@num='10']" />
      </table>
    </p>
  </xsl:template>
  <xsl:template match="europe_catalog/europe">
    <br />
    <tr style="font-family : '제주고딕'; font-size : 17px;">
      <th>여행지명</th>
      <td align="center">
        <h2>
          <xsl:value-of select="spot/name" />
        </h2>
      </td>
    </tr>
    <tr>
      <th>―――――――</th>
    </tr>
    <tr style="font-family : '제주고딕'; font-size : 17px; border-style:solid; border-width:20px; padding:20px; border-color:#E0F8F7; background-color:#E0F8F7;">
      <th>위치</th>
      <td align="center">
        <xsl:value-of select="spot/address" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
      </td>
    </tr>
    <tr style="font-family : '제주고딕'; font-size : 17px; border-style:solid; border-width:20px; padding:20px; border-color:#E0F8F7; background-color:#E0F8F7;">
      <th>설명</th>
      <td align="center">
        <xsl:value-of select="spot/description" />
      </td>
    </tr>
  </xsl:template>
  <xsl:template match="main_image">
    <img>
      <xsl:attribute name="src">
        <xsl:value-of select="./@file" />
      </xsl:attribute>
      <xsl:attribute name="width">
        <xsl:value-of select="700" />
      </xsl:attribute>
      <xsl:attribute name="height">
        <xsl:value-of select="500" />
      </xsl:attribute>
    </img>
  </xsl:template>
  <xsl:template match="image">
    <img>
      <xsl:attribute name="src">
        <xsl:value-of select="./@file" />
      </xsl:attribute>
    </img>
  </xsl:template>
</xsl:stylesheet>