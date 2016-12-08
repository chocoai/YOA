if exists (select * from sysobjects where id = OBJECT_ID('[ERPAnPai]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPAnPai]

CREATE TABLE [ERPAnPai] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[TimeStart] [datetime]  NULL,
[TimeEnd] [datetime]  NULL,
[TimeTiXing] [datetime]  NULL,
[TypeStr] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPAnPai] WITH NOCHECK ADD  CONSTRAINT [PK_ERPAnPai] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPAnPai] ON

INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr]) VALUES ( 5,'admin','到君威酒店参加2009年度百度会议','<P>到君威酒店参加2009年度百度会议</P><P>联系电话：13696432490&nbsp;&nbsp; 023-67466469</P>','2009-3-24 12:00:00','2009-3-25 12:00:00','2009-3-24 10:00:00','个人事务','2009-3-22 10:56:22')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr]) VALUES ( 6,'admin','参加公司组织的愚人节活动','<P>参加公司组织的愚人节活动</P><P>我的电话：023-67466469</P>','2009-4-1 10:00:00','2009-4-1 22:00:00','2009-4-1 9:00:00','单位事务','2009-3-22 10:57:32')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr]) VALUES ( 7,'admin','参加新版本发布会','<P>参加新版本发布会</P><P>准备好新版本发布会所需要的各种物品。</P>','2009-4-5 11:00:00','2009-4-5 15:00:00','2009-4-5 10:00:00','公共事务','2009-3-22 10:58:37')

SET IDENTITY_INSERT [ERPAnPai] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBBSBanKuai]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBBSBanKuai]

CREATE TABLE [ERPBBSBanKuai] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BanKuaiName] [varchar]  (500) NULL,
[BanZhuList] [varchar]  (500) NULL,
[BanKuaiMiaoShu] [varchar]  (8000) NULL,
[BanKuaiImg] [varchar]  (200) NULL,
[JiaoSeXianZhiList] [varchar]  (8000) NULL,
[BuMenXianZhi] [varchar]  (8000) NULL,
[UserXianZhi] [varchar]  (8000) NULL)

ALTER TABLE [ERPBBSBanKuai] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBBSBanKuai] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBBSBanKuai] ON

INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 1,'休闲娱乐','admin','员工休闲娱乐区，畅所欲言！！！','BanKuai.gif','所有角色','所有部门','所有用户')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 2,'灌水乐园','王财务','英雄莫问出处，吹水不询缘由。「灌」就一个字...','BanKuai.gif','所有角色','所有部门','所有用户')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 3,'文学天地','张富贵','网络是虚幻的，情感是苍白的，文字是真实的；我们以虔诚的心捧赤子之笔，书写自己或别人的故事。','BanKuai.gif','所有角色','所有部门','所有用户')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 4,'贴图专区','王财务','人物 | 景物 | 体育 | 会员靓照 | 其他美图 | 图像制作 | 搞笑 | 另类...图文并茂，展示你的风采。','BanKuai.gif','所有角色','所有部门','所有用户')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 5,'时尚生活','admin','每一天，都要活出新的精彩，让年轻的个性在时尚中尽情延伸...','BanKuai.gif','所有角色','所有部门','所有用户')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 6,'音乐星空','admin,王财务,张富贵','畅游音乐的天堂，感受美好的世界。','BanKuai.gif','所有角色','所有部门','所有用户')

SET IDENTITY_INSERT [ERPBBSBanKuai] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBBSTieZi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBBSTieZi]

CREATE TABLE [ERPBBSTieZi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BanKuaiID] [int]  NULL,
[TitleStr] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[ContentStr] [text]  NULL,
[ZuiHouUser] [varchar]  (50) NULL,
[ZuiHouTime] [datetime]  NULL DEFAULT (getdate()),
[PaiXu] [int]  NULL DEFAULT (0),
[HuiFuContent] [text]  NULL)

ALTER TABLE [ERPBBSTieZi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBBSTieZi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBBSTieZi] ON

INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu],[HuiFuContent]) VALUES ( 1,6,'集团8月25日集体留影，大家来评评看','admin','2008-10-12 15:22:00','<DIV class=cnt><P>百度竞价排名，是一种按效果付费的网络推广方式。用少量的投入就可以给企业带来大量潜在客户，有效提升企业销售额和品牌知名度。</P><P>每天有超过数亿人次在百度查找信息，企业在百度注册与产品相关的关键词后，就会被查找这些产品的潜在客户找到。</P><P>竞价排名按照给企业带来的潜在客户访问数量计费，企业可以灵活控制网络推广投入，获得最大回报。<BR><IMG src="/Web/eWebEditor/sysimage/file/doc.gif" border=0><A href="/Web/WebEditorFile/2008-10-12-15-21-47.doc" target=_blank>/Web/WebEditorFile/2008-10-12-15-21-47.doc</A></P></DIV><SCRIPT language=javascript type=text/javascript>writeFoot();</SCRIPT><STYLE>#ft{clear:both;margin:0;line-height:24px;border-top:1px solid #D78E6A;text-align:center}#ft,#ft *{color:#77C;font-size:12px;font-family:Arial;white-space:nowrap}</STYLE>','admin','2008-10-12 16:23:01',0,'<table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">admin</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top">在干什么啊？</td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2008-10-12 16:20:08<br></td></tr></table><table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">admin</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top">请问大家有什么想法啊</td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2008-10-12 16:21:34<br></td></tr></table><table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">admin</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top"><P>百度竞价排名，是一种按效果付费的网络推广方式。用少量的投入就可以给企业带来大量潜在客户，有效提升企业销售额和品牌知名度。</P><P>每天有超过数亿人次在百度查找信息，企业在百度注册与产品相关的关键词后，就会被查找这些产品的潜在客户找到。</P><P>竞价排名按照给企业带来的潜在客户访问数量计费，企业可以灵活控制网络推广投入，获得最大回报。<BR></P><P>百度竞价排名，是一种按效果付费的网络推广方式。用少量的投入就可以给企业带来大量潜在客户，有效提升企业销售额和品牌知名度。</P><P>每天有超过数亿人次在百度查找信息，企业在百度注册与产品相关的关键词后，就会被查找这些产品的潜在客户找到。</P><P>竞价排名按照给企业带来的潜在客户访问数量计费，企业可以灵活控制网络推广投入，获得最大回报。<BR></P></td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2008-10-12 16:23:01<br></td></tr></table>')
INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu]) VALUES ( 2,5,'时尚生活真的好','admin','2008-10-12 16:24:05','<P>时尚生活真的好</P><P>时尚生活真的好</P><P>时尚生活真的好</P>','admin','2008-10-12 16:24:05',1)
INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu]) VALUES ( 3,5,'鹿鼎记是什么年代的产品？','admin','2008-10-12 16:26:14','<P>鹿鼎记是什么年代的产品？</P><P>鹿鼎记是什么年代的产品？</P><P>鹿鼎记是什么年代的产品？</P>','admin','2008-10-12 16:26:14',0)

SET IDENTITY_INSERT [ERPBBSTieZi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBuMen]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBuMen]

CREATE TABLE [ERPBuMen] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BuMenName] [varchar]  (50) NULL,
[ChargeMan] [varchar]  (50) NULL,
[TelStr] [varchar]  (50) NULL,
[ChuanZhen] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[DirID] [int]  NULL)

ALTER TABLE [ERPBuMen] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBuMen] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBuMen] ON

INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 1,'开发部','张富贵','13696432490','023-67466469','开发部管理集团的开发工作',0)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 2,'销售部','张小四','13696432491','023-67466468','销售部专管集团的销售工作',0)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 4,'信息部','张信','13986532480','023-67466469','主管信息采集和处理',0)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 10,'财务部','王财务','023-67466469','023-67466469','集团财务信息',0)

SET IDENTITY_INSERT [ERPBuMen] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPDanWeiInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPDanWeiInfo]

CREATE TABLE [ERPDanWeiInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[DanWeiName] [varchar]  (100) NULL,
[Tel] [varchar]  (100) NULL,
[Fax] [varchar]  (100) NULL,
[YouBian] [varchar]  (50) NULL,
[Address] [varchar]  (500) NULL,
[WebUrl] [varchar]  (200) NULL,
[Email] [varchar]  (100) NULL,
[KaiHuHang] [varchar]  (100) NULL,
[ZhangHao] [varchar]  (100) NULL)

ALTER TABLE [ERPDanWeiInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPDanWeiInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPDanWeiInfo] ON

INSERT [ERPDanWeiInfo] ([ID],[DanWeiName],[Tel],[Fax],[YouBian],[Address],[WebUrl],[Email],[KaiHuHang],[ZhangHao]) VALUES ( 1,'演示公司','13696432490','023-67466469','400000','重庆市Office AnyWhere','http://www.xxxxxxxxxx.com','zwl168918@126.com','招商银行','000000000000000000000')

SET IDENTITY_INSERT [ERPDanWeiInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPDengJi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPDengJi]

CREATE TABLE [ERPDengJi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[ShenPiRen] [varchar]  (50) NULL,
[ShenQingTime] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (8000) NULL,
[StartTime] [datetime]  NULL,
[EndTime] [datetime]  NULL,
[StateNow] [varchar]  (50) NULL,
[TypeName] [varchar]  (50) NULL)

ALTER TABLE [ERPDengJi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPDengJi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPDengJi] ON

INSERT [ERPDengJi] ([ID],[UserName],[ShenPiRen],[ShenQingTime],[BackInfo],[StartTime],[EndTime],[StateNow],[TypeName]) VALUES ( 1,'admin','admin','2009-2-15 13:35:36','下午外出办事','2009-2-15 14:00:00','2009-2-15 15:00:00','通过','WaiChu')
INSERT [ERPDengJi] ([ID],[UserName],[ShenPiRen],[ShenQingTime],[BackInfo],[StartTime],[EndTime],[StateNow],[TypeName]) VALUES ( 3,'admin','王财务','2009-2-15 13:49:32','要出去','2009-2-25 15:00:00','2009-2-25 17:00:00','待批','WaiChu')

SET IDENTITY_INSERT [ERPDengJi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPFileList]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPFileList]

CREATE TABLE [ERPFileList] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileName] [varchar]  (50) NULL,
[BianHao] [varchar]  (50) NULL,
[BackInfo] [text]  NULL,
[DaXiao] [int]  NULL,
[FileType] [varchar]  (50) NULL,
[DirID] [int]  NULL,
[ShangChuanTime] [datetime]  NULL DEFAULT (getdate()),
[FilePath] [varchar]  (200) NULL,
[UserName] [varchar]  (50) NULL,
[IFDel] [varchar]  (50) NULL,
[TypeName] [varchar]  (50) NULL,
[IfShare] [varchar]  (50) NULL,
[DirOrFile] [int]  NULL DEFAULT (0))

ALTER TABLE [ERPFileList] WITH NOCHECK ADD  CONSTRAINT [PK_ERPFileList] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPFileList] ON

INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 98,'密码卡.JPG','BH025','<P>//写日志</P>',35,'JPG',0,'2009-3-22 11:36:27','633539661413294284.JPG','admin','否','个人文件','否',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 99,'我的公务文件','GW00289',0,'dir',0,'2008-8-10 12:38:17','admin','否','个人文件','是',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 100,'我的共享','GX085',0,'dir',0,'2008-8-10 11:10:36','admin','否','个人文件','是',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 101,'网站效果图.rar','HLWeb01','网站效果图',633,'rar',100,'2009-3-22 11:37:56','633539635013919284.rar','admin','否','个人文件','否',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 102,'新网站效果','New238',0,'dir',100,'2008-8-10 11:12:23','admin','否','个人文件','否',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 103,'网站文件','JJ03258',0,'dir',99,'2008-8-10 11:12:57','admin','否','个人文件','是',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 104,'网页构想.doc','LH036','网站设计方案',153,'doc',103,'2008-8-10 16:18:13','633539818935794284.doc','admin','否','个人文件','否',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 105,'测试文件','001',0,'dir',0,'2008-9-3 15:16:17','admin','否','我的硬盘','否',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 106,'电子表格.xls','XLS001','电子表格数据测试',14,'xls',105,'2008-9-3 14:53:14','633560503945781250.xls','admin','否','我的硬盘','否',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 107,'幻灯片.ppt','PPT001','幻灯片测试',9,'ppt',105,'2008-9-3 14:53:35','633560504155468750.ppt','admin','否','我的硬盘','否',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 108,'数据库.mdb','MDB001','数据库测试',93,'mdb',105,'2008-9-3 14:54:14','633560504549218750.mdb','admin','否','我的硬盘','否',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 109,'共享文件','0325',0,'dir',0,'2008-9-3 15:16:39','admin','否','我的硬盘','是',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 110,'新建 Microsoft Word 文档 (2).doc','sdf','f',20,'doc',0,'2009-3-20 16:18:27','633731627072031250.doc','admin','是','个人文件','否',0)

SET IDENTITY_INSERT [ERPFileList] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPForm]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPForm]

CREATE TABLE [ERPForm] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FormName] [varchar]  (50) NULL,
[FormType] [varchar]  (50) NULL,
[ShiYongUserList] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[TiaoJianList] [varchar]  (8000) NULL,
[ContentStr] [text]  NULL)

ALTER TABLE [ERPForm] WITH NOCHECK ADD  CONSTRAINT [PK_ERPForm] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPForm] ON

INSERT [ERPForm] ([ID],[FormName],[FormType],[TimeStr],[UserName],[ContentStr]) VALUES ( 6,'发文登记','公文管理','2009-3-22 10:26:47','admin','<TABLE title="" cellSpacing=0 cellPadding=0 width=600 align=center border=0><TBODY><TR height=35><TD style="FONT-SIZE: 12px" vAlign=center align=middle width="100%" height=50><FONT color=#ff0000><H3><BR>发文登记表</H3></FONT></TD></TR><TR height=35><TD style="FONT-SIZE: 12px" vAlign=center width="100%"><TABLE title="" cellSpacing=0 borderColorDark=#ffffff cellPadding=5 width="100%" align=center borderColorLight=#ff0000 border=1><TBODY><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;标题</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 508px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=46 name=14814></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;发文类型</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="21%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 210px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=6519></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;文号</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="22%"><SPAN id=sWenHao width="100%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 206px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=11004></SPAN><!--<INPUT type="text" id=WenHao name=WenHao value="" style="width:100%;" maxlength=100 >--></TD></TR><SCRIPT language=vbscript>     '查找当前选中的类型文号是否允许修改     function LeiXingChange()      if formData.LeiXing.value<>"" then       mystatus.style.display = ""       sWenHao.style.display ="none"       frmWH.action="WenHao.asp"       frmWH.target ="FTongJi"       frmWH.LeiXing.value =formData.LeiXing.value       frmWH.submit()      end if     end function     LeiXingChange    </SCRIPT><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;密级</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="22%"><SELECT name=""> <OPTION value=高 selected>高</OPTION> <OPTION value=中>中</OPTION> <OPTION value=低>低</OPTION></SELECT></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;紧急程度</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="21%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 204px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=17141></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;发文时间</TD><TD style="FONT-SIZE: 12px" vAlign=center><INPUT id=0.7730247343370162 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 205px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" onclick=setday(this) size=21 name=16799></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;签发人</TD><TD style="FONT-SIZE: 12px" vAlign=center><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 200px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly value=宏控件-用户姓名 name=15172></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;承办人</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="40%"><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 203px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly value=宏控件-用户姓名 name=766></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;承办单位</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="40%"><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 198px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=22 value=宏控件-用户部门 name=1212></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;发送内容</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3 height=50><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 504px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 38px" name=1287 rows=1 cols=24></TEXTAREA></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;备注</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3 height=50><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 503px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 43px" name=5864 cols=23></TEXTAREA></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>')
INSERT [ERPForm] ([ID],[FormName],[FormType],[TimeStr],[UserName],[ContentStr]) VALUES ( 7,'收文登记','生产管理','2009-3-22 10:26:40','admin','<P align=center><FONT style="LETTER-SPACING: 5px" color=#ff0000 size=5><B><BR>分公司收文单</B></FONT></P><TABLE cellSpacing=0 borderColorDark=#ffffff cellPadding=6 width=730 align=center bgColor=#ffffff borderColorLight=#ff0000 border=1><TBODY><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>收文类别 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 119px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=7 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>文件编号 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=5 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>秘密等级 </FONT></TD><TD><SELECT name=""> <OPTION value=高 selected>高</OPTION> <OPTION value=中>中</OPTION> <OPTION value=低>低</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>收文日期 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 121px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=12 name=2008416165222640></SPAN></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>收文份数 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData('text'))" id=Text1 ondragenter="return false" style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; IME-MODE: disabled; BORDER-LEFT: 0px; WIDTH: 115px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=10 name=19076></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>紧急程度 </FONT></TD><TD><SELECT name=""> <OPTION value=高 selected>高</OPTION> <OPTION value=中>中</OPTION> <OPTION value=低>低</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>收文字号 </FONT></TD><TD><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: #000000 1px solid" name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>来文单位 </FONT></TD><TD colSpan=3><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=11 value=宏控件-用户部门 name=15160></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>主 题 词 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 549px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=51 name=2008416165222640></SPAN></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>文件标题 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 547px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=49 name=2008416165222640></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>备&nbsp;&nbsp;&nbsp;&nbsp;注 </FONT></TD><TD colSpan=5><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 562px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 35px" name=2008416165222640 cols=25></TEXTAREA></TD></TR></TBODY></TABLE>')

SET IDENTITY_INSERT [ERPForm] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPFormType]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPFormType]

CREATE TABLE [ERPFormType] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FormTypeList] [varchar]  (2000) NULL)

ALTER TABLE [ERPFormType] WITH NOCHECK ADD  CONSTRAINT [PK_ERPFormType] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPFormType] ON

INSERT [ERPFormType] ([ID],[FormTypeList]) VALUES ( 1,'生产管理|公文管理|单位管理|考勤管理')

SET IDENTITY_INSERT [ERPFormType] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPGongGao]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPGongGao]

CREATE TABLE [ERPGongGao] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[UserBuMen] [varchar]  (50) NULL,
[FuJian] [varchar]  (2000) NULL,
[ContentStr] [text]  NULL,
[TypeStr] [varchar]  (50) NULL)

ALTER TABLE [ERPGongGao] WITH NOCHECK ADD  CONSTRAINT [PK_ERPGongGao] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPGongGao] ON

INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[UserBuMen],[FuJian],[ContentStr],[TypeStr]) VALUES ( 1,'集团财务条例已经更改，请各位留意查看','2008-7-21 15:15:43','admin','开发部','633522500735312500.jpg|633522500845000000.jpg|','集团财务条例已经更改，请各位留意查看，所有需要报销以及核款的操作已经移交到财务一部，请前往一部办理。','单位')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[UserBuMen],[FuJian],[ContentStr],[TypeStr]) VALUES ( 2,'开发部8月份工作纵览','2008-7-21 15:36:27','admin','开发部','633522514097968750.jpg','<P>1：开发车辆管理系统</P><P>2：完善人力资源模块</P><P>3：开发客户管理子系统</P>','部门')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[UserBuMen],[FuJian],[ContentStr],[TypeStr]) VALUES ( 3,'集团考勤制度更改','2008-9-3 16:28:18','admin','开发部','633560560123906250.jpg|633560560459375000.doc','集团考勤制度已经修改，请各位员工注意。','单位')

SET IDENTITY_INSERT [ERPGongGao] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJiaoSe]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJiaoSe]

CREATE TABLE [ERPJiaoSe] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[JiaoSeName] [varchar]  (50) NULL,
[BackInfo] [varchar]  (1000) NULL,
[QuanXian] [varchar]  (8000) NULL)

ALTER TABLE [ERPJiaoSe] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJiaoSe] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJiaoSe] ON

INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 3,'超级管理员','超级管理员角色','|001||001a||001d||001e||||||||||002||002a||002s||002m||002e||||||||003||003e||||||||||||||004||004a||004r||004d||004e||||||||005||005a||005d||005e||||||||||006||006a||006s||006m||006e||||||||007||007d||007e||||||||||||008||008a||008r||008d||008e||||||||009||009a||009s||009d||009e||||||||010||010a||010m||010d||010e||||||||011||011a||011m||011d||011e||||||||012||012a||012m||012d||012e||||||||013||013a||013m||013d||013e||||||||014||014a||014m||014d||014e||||||||015||015a||015m||015d||015e||||||||016||016e||||||||||||||017||017a||017m||017d||017e||||||||018||018e||||||||||||||019||019a||019m||019d||019e||||||||020||||||||||||||||021||021m||||||||||||||022||||||||||||||023||023m||||||||||||||024||024a||024m||024d||024e||||||||025||025a||025m||025d||025e||||||||026||||||||||||||||074||074a||074d||074e||||||||||075||075e||||||||||||||076||076e||||||||||||||077||077d||077e||||||||||||078||078d||078e||||||||||||079||079a||079m||079d||079e||||||||080||080m||||||||||||||081||081a||081m||081d||081e||||||||082||082a||082m||082d||082e||||||||083||083a||083m||083d||083e||||||||084||084d||084e||||||||||||085||085d||085e||||||||||||027||027a||027m||027d||027e||||||||028||028e||||||||||||||029||||||||||||||||030||030a||030d||030e||||||||||031||031a||031d||031e||||||||||032||032a||032d||032e||||||||||033||033a||033d||033e||||||||||034||034a||034d||034e||||||||||035||035p||035n||035e||||||||||036||036p||036n||036e||||||||||037||037p||037n||037e||||||||||038||038p||038n||038e||||||||||039||039p||039n||039e||||||||||040||040m||||||||||||||041||041e||||||||||||||042||042e||||||||||||||043||||||||||||||||044||||||||||||||||045||||||||||||||||046||046n||046a||046m||046d||046e||||||047||047n||047a||047m||047d||047e||||||048||048n||048a||048m||048d||048e||||||049||||||||||||||||050||050n||050a||050m||050d||050e||||||051||||||||||||||||052||052d||052r||052e||||||||||053||||||||||||||||054||054a||054m||054d||054e||||||||055||||||||||||||||056||056m||||||||||||||057||057e||||||||||||||058||058a||058d||058e||||||||||059||||||||||||||||060||||||||||||||||061||||||||||||||||062||||||||||||||||063||||||||||||||||064||||||||||||||||065||||||||||||||||066||||||||||||||||067||||||||||||||||068||068m||||||||||||||069||069a||069m||069d||069e||||||||070||070a||070m||070d||070e||||||||071||071a||071m||071d||071e||||||||086||086a||086m||086d||086e||||||||072||072d||072e||||||||||||073|||||||||||||')
INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 4,'一般管理员','一般管理者，权限配置比较安全','|001||001a||||||||||002||||||||003||||||||||||||004||||||||005||||||||||006||||||||007||||||||||||008||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||035||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||053||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||065|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||')
INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 8,'测试角色','测试专用角色','|001||001a||001d||001e||||||||||002||002a||002s||002m||002e||||||||003||003e||||||||||||||004||004a||004r||004d||004e||||||||005||005a||005d||005e||||||||||006||006a||006s||006m||006e||||||||007||007d||007e||||||||||||008||008a||008r||008d||008e||||||||009||009a||009s||009d||009e||||||||010||010a||010m||010d||010e||||||||011||011a||011m||011d||011e||||||||012||012a||012m||012d||012e||||||||013||013a||013m||013d||013e||||||||014||014a||014m||014d||014e||||||||015||015a||015m||015d||015e||||||||016||016e||||||||||||||017||017a||017m||017d||017e||||||||018||018e||||||||||||||019||019a||019m||019d||019e||||||||020||||||||||||||||021||021m||||||||||||||022||022m||||||||||||||023||023m||||||||||||||024||024a||024m||024d||024e||||||||025||025a||025m||025d||025e||||||||026||||||||||||||||027||027a||027m||027d||027e||||||||028||028e||||||||||||||029||||||||||||||||030||030a||030d||030e||||||||||031||031a||031d||031e||||||||||032||032a||032d||032e||||||||||033||033a||033d||033e||||||||||034||034a||034d||034e||||||||||035||035p||035n||035e||||||||||036||036p||036n||036e||||||||||037||037p||037n||037e||||||||||038||038p||038n||038e||||||||||039||039p||039n||039e||||||||||040||040m||||||||||||||041||041e||||||||||||||042||042e||||||||||||||043||||||||||||||||044||||||||||||||||045||||||||||||||||046||046n||046a||046m||046d||046e||||||047||047n||047a||047m||047d||047e||||||048||048n||048a||048m||048d||048e||||||049||||||||||||||||050||050n||050a||050m||050d||050e||||||051||||||||||||||||052||052d||052r||052e||||||||||053||||||||||||||||054||054a||054m||054d||054e||||||||055||||||||||||||||056||056m||||||||||||||057||057e||||||||||||||058||058a||058d||058e||||||||||059||||||||||||||||060||||||||||||||||061||||||||||||||||062||||||||||||||||063||||||||||||||||064||||||||||||||||065||||||||||||||||066||||||||||||||||067||||||||||||||||068||068m||||||||||||||069||069a||069m||069d||069e||||||||070||070a||070m||070d||070e||||||||071||071a||071m||071d||071e||||||||072||072d||072e||||||||||||073||073m|||||||||||||')

SET IDENTITY_INSERT [ERPJiaoSe] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPKaoQin]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPKaoQin]

CREATE TABLE [ERPKaoQin] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[GuiDingTime1] [datetime]  NULL,
[DengJiTime1] [datetime]  NULL,
[GuiDingTime2] [datetime]  NULL,
[DengJiTime2] [datetime]  NULL,
[GuiDingTime3] [datetime]  NULL,
[DengJiTime3] [datetime]  NULL,
[GuiDingTime4] [datetime]  NULL,
[DengJiTime4] [datetime]  NULL,
[GuiDingTime5] [datetime]  NULL,
[DengJiTime5] [datetime]  NULL,
[GuiDingTime6] [datetime]  NULL,
[DengJiTime6] [datetime]  NULL,
[KaoQinRiQi] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPKaoQin] WITH NOCHECK ADD  CONSTRAINT [PK_ERPKaoQin] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPKaoQin] ON

INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[DengJiTime2],[GuiDingTime3],[DengJiTime3],[GuiDingTime4],[DengJiTime4],[GuiDingTime5],[GuiDingTime6],[KaoQinRiQi]) VALUES ( 3,'admin','2009-2-15 9:10:00','2009-2-15 11:41:01','2009-2-15 11:50:00','2009-2-15 11:41:05','2009-2-15 13:10:00','2009-2-15 12:15:18','2009-2-15 17:20:00','2009-2-15 12:15:22','2009-2-15 18:40:00','2009-2-15 21:50:00','2009-2-15 11:40:00')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[DengJiTime2],[GuiDingTime3],[DengJiTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 4,'王财务','2009-2-15 9:10:00','2009-2-15 12:20:35','2009-2-15 11:50:00','2009-2-15 12:20:40','2009-2-15 13:10:00','2009-2-15 12:20:42','2009-2-15 17:20:00','2009-2-15 12:20:34')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 5,'admin','2009-2-16 9:10:00','2009-2-16 9:58:58','2009-2-16 11:50:00','2009-2-16 13:10:00','2009-2-16 17:20:00','2009-2-16 9:58:51')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 6,'admin','2009-3-20 9:10:00','2009-3-20 11:50:00','2009-3-20 13:10:00','2009-3-20 17:20:00','2009-3-20 18:37:37')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[DengJiTime2],[GuiDingTime3],[DengJiTime3],[GuiDingTime4],[DengJiTime4],[KaoQinRiQi]) VALUES ( 7,'admin','2009-3-22 9:10:00','2009-3-22 11:34:38','2009-3-22 11:50:00','2009-3-22 11:34:44','2009-3-22 13:10:00','2009-3-22 11:34:41','2009-3-22 17:20:00','2009-3-22 11:34:47','2009-3-22 11:34:36')

SET IDENTITY_INSERT [ERPKaoQin] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPKaoQinSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPKaoQinSetting]

CREATE TABLE [ERPKaoQinSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[GuiDingTime1] [varchar]  (50) NULL,
[GuiDingTime2] [varchar]  (50) NULL,
[GuiDingTime3] [varchar]  (50) NULL,
[GuiDingTime4] [varchar]  (50) NULL,
[GuiDingTime5] [varchar]  (50) NULL,
[GuiDingTime6] [varchar]  (50) NULL)

ALTER TABLE [ERPKaoQinSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPKaoQinSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPKaoQinSetting] ON

INSERT [ERPKaoQinSetting] ([ID],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[GuiDingTime5],[GuiDingTime6]) VALUES ( 1,'09:10:00','11:50:00','13:10:00','17:20:00','未设置:未设置:00','未设置:未设置:00')

SET IDENTITY_INSERT [ERPKaoQinSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPLanEmail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPLanEmail]

CREATE TABLE [ERPLanEmail] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[EmailTitle] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[EmailContent] [text]  NULL,
[FuJian] [varchar]  (2000) NULL,
[FromUser] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[EmailState] [varchar]  (50) NULL DEFAULT ('未读'))

ALTER TABLE [ERPLanEmail] WITH NOCHECK ADD  CONSTRAINT [PK_ERPLanEmail] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPLanEmail] ON

INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 23,'集团9-25日组织员工前往新加坡学习','2008-6-2 15:36:40','集团9-25日组织员工前往新加坡学习，请各位有需要的员工主动前往集团财务部王部长处填写登记表格，过期不侯，谢谢！','633519211898437500.jpg||633519212427812500.doc','admin','admin','已读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 24,'集团9-25日组织员工前往新加坡学习','2008-6-2 15:36:40','集团9-25日组织员工前往新加坡学习，请各位有需要的员工主动前往集团财务部王部长处填写登记表格，过期不侯，谢谢！','633519211898437500.jpg||633519212427812500.doc','admin','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 25,'财务部紧急通知，各部门注意！','2008-6-2 15:36:40','财务部从8月1日开始将不再兑换2007年的报销发票或者数据，请各位员工互相转达。','633519214789218750.doc','admin','admin','已读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 26,'财务部紧急通知，各部门注意！','2008-6-2 15:36:40','财务部从8月1日开始将不再兑换2007年的报销发票或者数据，请各位员工互相转达。','633519214789218750.doc','admin','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 36,'您所制定的日程安排提醒时间到。(7月28日我的日程安排，参加活动)','2009-3-20 17:14:13','您所制定的日程安排提醒时间到。(7月28日我的日程安排，参加活动)','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 37,'您所制定的日程安排提醒时间到。(7月28日我的日程安排，参加活动)','2009-3-20 17:15:13','您所制定的日程安排提醒时间到。(7月28日我的日程安排，参加活动)','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 38,'您所制定的日程安排提醒时间到。(7月28日我的日程安排，参加活动)','2009-3-20 17:15:35','您所制定的日程安排提醒时间到。(7月28日我的日程安排，参加活动)','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 41,'您有新的会议需要参加！(集团第三次开发部技术讨论会)','2009-3-20 18:13:09','您有新的会议需要参加！(集团第三次开发部技术讨论会)','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 42,'您有新的会议需要参加！(集团第三次开发部技术讨论会)','2009-3-20 18:13:09','您有新的会议需要参加！(集团第三次开发部技术讨论会)','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 43,'您有新的会议需要参加！(集团第三次开发部技术讨论会)','2009-3-20 18:13:09','您有新的会议需要参加！(集团第三次开发部技术讨论会)','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 45,'您有新的工作需要办理！(admin--收文登记(2009-3-20))','2009-3-20 18:29:33','您有新的工作需要办理！(admin--收文登记(2009-3-20))','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 46,'您有新的工作需要办理！(admin--收文登记(2009-3-20))','2009-3-20 18:29:34','您有新的工作需要办理！(admin--收文登记(2009-3-20))','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 47,'您有新的工作需要办理！(admin--收文登记(2009-3-20))','2009-3-20 18:29:34','您有新的工作需要办理！(admin--收文登记(2009-3-20))','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 48,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:29:56','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 49,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:29:56','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 50,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:29:56','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 51,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:30:34','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 52,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:30:34','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 53,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:30:34','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 54,'您的工作已经正常结束！(admin--发文流程(2009-3-20))','2009-3-20 18:31:13','您的工作已经正常结束！(admin--发文流程(2009-3-20))','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 55,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:32:22','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 56,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:32:22','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 57,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:32:22','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 58,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:34:37','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 59,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:34:37','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 60,'您有新的工作需要办理！(admin--发文流程(2009-3-20))','2009-3-20 18:34:37','您有新的工作需要办理！(admin--发文流程(2009-3-20))','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 61,'您有新的文件需要接收！(测试)','2009-3-20 18:35:42','您有新的文件需要接收！(测试)','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 62,'您有新的文件需要接收！(测试)','2009-3-20 18:35:42','您有新的文件需要接收！(测试)','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 63,'您有新的文件需要接收！(测试)','2009-3-20 18:35:42','您有新的文件需要接收！(测试)','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 64,'您有新的工作需要办理！(admin--收文登记(2009-3-20))','2009-3-22 10:01:41','您有新的工作需要办理！(admin--收文登记(2009-3-20))','系统消息','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 65,'您的工作已经正常结束！(admin--发文流程(2009-3-20))','2009-3-22 10:03:17','您的工作已经正常结束！(admin--发文流程(2009-3-20))','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 67,'您有新的工作需要办理！(admin--发文流程(2009-3-22))','2009-3-22 10:25:17','您有新的工作需要办理！(admin--发文流程(2009-3-22))','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 68,'您有新的工作需要办理！(admin--发文流程(2009-3-22))','2009-3-22 10:25:17','您有新的工作需要办理！(admin--发文流程(2009-3-22))','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 70,'您有新的工作需要办理！(admin--收文登记(2009-3-20))','2009-3-22 10:34:59','您有新的工作需要办理！(admin--收文登记(2009-3-20))','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 71,'您有新的工作需要办理！(admin--收文登记(2009-3-20))','2009-3-22 10:34:59','您有新的工作需要办理！(admin--收文登记(2009-3-20))','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 72,'您有新的工作需要办理！(admin--收文登记(2009-3-22))','2009-3-22 10:42:52','您有新的工作需要办理！(admin--收文登记(2009-3-22))','系统消息','admin','删除')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 73,'您有新的工作需要办理！(admin--收文登记(2009-3-22))','2009-3-22 10:42:52','您有新的工作需要办理！(admin--收文登记(2009-3-22))','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 74,'您有新的工作需要办理！(admin--收文登记(2009-3-22))','2009-3-22 10:42:52','您有新的工作需要办理！(admin--收文登记(2009-3-22))','系统消息','张富贵','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 75,'您有新的会议需要参加！(公司年度宣讲大会)','2009-3-22 11:01:00','您有新的会议需要参加！(公司年度宣讲大会)','系统消息','admin','已读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 76,'您有新的会议需要参加！(公司年度宣讲大会)','2009-3-22 11:01:00','您有新的会议需要参加！(公司年度宣讲大会)','系统消息','王财务','未读')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 77,'您有新的会议需要参加！(公司年度宣讲大会)','2009-3-22 11:01:00','您有新的会议需要参加！(公司年度宣讲大会)','系统消息','张富贵','未读')

SET IDENTITY_INSERT [ERPLanEmail] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMeeting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMeeting]

CREATE TABLE [ERPMeeting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[MeetingTitle] [varchar]  (500) NULL,
[MeetingZhuTi] [varchar]  (5000) NULL,
[MiaoShu] [varchar]  (5000) NULL,
[ChuXiRen] [varchar]  (8000) NULL,
[WangLuoHuiYiShiIP] [varchar]  (50) NULL,
[HuiYiZhuChi] [varchar]  (50) NULL,
[KaiShiTime] [datetime]  NULL DEFAULT (getdate()),
[JieShuTime] [datetime]  NULL DEFAULT (getdate()),
[HuiYiJiYao] [text]  NULL,
[ZhuanXieRen] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[CurentOnline] [varchar]  (8000) NULL)

ALTER TABLE [ERPMeeting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMeeting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMeeting] ON

INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[HuiYiJiYao],[ZhuanXieRen],[TimeStr]) VALUES ( 1,'集团第三次财务会议','主要研究最新的财务情况、制定下一步预算','重要会议，希望及时参加','王财务,admin,张富贵','192.168.1.11','王财务','2008-9-14 14:20:00','2008-9-14 15:30:00','会议纪要暂未写入。','admin','2008-9-13 9:27:27')
INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[ZhuanXieRen],[TimeStr]) VALUES ( 4,'集团第三次开发部技术讨论会','商谈开发部今后动向','商谈开发部今后动向，开发类型转换','admin,王财务,张富贵','192.168.1.11','admin','2009-3-20 18:00:00','2009-3-20 19:00:00','admin','2009-3-20 18:13:09')
INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[HuiYiJiYao],[ZhuanXieRen],[TimeStr]) VALUES ( 5,'公司年度宣讲大会','宣讲本公司今年度发生的各种事务','宣讲本公司今年度发生的各种事务','admin,王财务,张富贵','192.168.1.1','admin','2009-3-22 10:00:00','2010-4-1 12:00:00','宣讲本公司今年度发生的各种事务&nbsp;&nbsp; 一直要讲一年。。。。。真厉害啊','admin','2009-3-22 11:01:00')

SET IDENTITY_INSERT [ERPMeeting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMoBan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMoBan]

CREATE TABLE [ERPMoBan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[IFShare] [varchar]  (50) NULL)

ALTER TABLE [ERPMoBan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMoBan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMoBan] ON

INSERT [ERPMoBan] ([ID],[TitleStr],[ContentStr],[TimeStr],[UserName],[IFShare]) VALUES ( 1,'集团内部通知通告模板(8月10日前使用)','<P align=center><FONT color=#ff0033><STRONG><BR>20080910号决议--使用对外主机必须在信息部备案<BR><HR></STRONG></FONT></P>百度，2000年1月创立于北京中关村，是全球最大的中文网站、最大的中文搜索引擎。 <P>2000年1月1日，公司创始人李彦宏、徐勇从美国硅谷回国，创建了百度。创立之初，百度便将“让人们更便捷地获取信息”作为自己的使命，并为此始终如一、不懈地努力奋斗。</P><P>2000年5月，百度首次为门户网站——硅谷动力提供搜索技术服务，之后迅速占领中国搜索引擎市场，成为最主要的搜索技术提供商。2001年8月，发布Baidu.com搜索引擎Beta版，从后台技术提供者转为面向公众独立提供搜索服务，并且在中国首创了竞价排名商业模式，2001年10月22日正式发布Baidu搜索引擎。</P><P>2003年12月，开创性地推出贴吧，开搜索社区化之先河。</P><P>2005年8月5日，百度在美国纳斯达克上市，成为2005年全球资本市场上最为引人注目的上市公司。</P><P>2008年1月23日，百度日本公司正式运营，百度全面启动国际化战略。 </P><P>百度坚信，让人们更便捷地获取信息，让人类的智慧相互沟通与交融，即有利于人类智慧的发展，也有利于促进人们的平等，推动社会的进步。</P><P align=right>集团新闻发布---信息中心</P><P align=right>2008-9-20</P>','2008-7-28 17:55:34','admin','否')
INSERT [ERPMoBan] ([ID],[TitleStr],[ContentStr],[TimeStr],[UserName],[IFShare]) VALUES ( 2,'百度--全球最大的中文网站、最大的中文搜索引擎','百度，2000年1月创立于北京中关村，是全球最大的中文网站、最大的中文搜索引擎。&nbsp; <P>2000年1月1日，公司创始人李彦宏、徐勇从美国硅谷回国，创建了百度。创立之初，百度便将“让人们更便捷地获取信息”作为自己的使命，并为此始终如一、不懈地努力奋斗。</P><P>2000年5月，百度首次为门户网站——硅谷动力提供搜索技术服务，之后迅速占领中国搜索引擎市场，成为最主要的搜索技术提供商。2001年8月，发布Baidu.com搜索引擎Beta版，从后台技术提供者转为面向公众独立提供搜索服务，并且在中国首创了竞价排名商业模式，2001年10月22日正式发布Baidu搜索引擎。</P><P>2003年12月，开创性地推出贴吧，开搜索社区化之先河。</P><P>2005年8月5日，百度在美国纳斯达克上市，成为2005年全球资本市场上最为引人注目的上市公司。</P><P>2008年1月23日，百度日本公司正式运营，百度全面启动国际化战略。 </P><P>百度坚信，让人们更便捷地获取信息，让人类的智慧相互沟通与交融，即有利于人类智慧的发展，也有利于促进人们的平等，推动社会的进步。</P><P align=right>集团信息化建设部---信息三部</P>','2008-7-28 17:59:11','admin','是')

SET IDENTITY_INSERT [ERPMoBan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMobile]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMobile]

CREATE TABLE [ERPMobile] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FaSongUser] [varchar]  (50) NULL,
[ToUserList] [varchar]  (8000) NULL,
[ContentStr] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPMobile] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMobile] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMobile] ON

INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 1,'admin','13696432490','请发送试用软件序列号给我，谢谢！','2008-7-21 12:51:34')

SET IDENTITY_INSERT [ERPMobile] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNetEmail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNetEmail]

CREATE TABLE [ERPNetEmail] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[EmailTitle] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[EmailContent] [text]  NULL,
[FuJian] [varchar]  (2000) NULL,
[FromUser] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[EmailState] [varchar]  (50) NULL DEFAULT ('未读'))

ALTER TABLE [ERPNetEmail] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNetEmail] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNetEmail] ON

INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 40,'关于组织联邦快递公司的建议','2008-7-19 8:49:08','关于组织联邦快递公司的建议，很好，需要建立这样的机构。','admin','zwl168918@126.com','已发')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 41,'恭喜您申请的新浪免费电子邮箱正式开通','2008-7-19 1:03:05','尊敬的myerpsystem@sina.com?


欢迎使用新浪网为您提供的免费电子邮件系统?
新浪网为您提供的免费电子邮箱：myerpsystem@sina.com，已经开通。您可以立刻开始用这个邮箱来发送或接收电子邮件?

根据《新浪免费邮箱服务使用协议》，我们会对连续90天未通过任何形式（WEB/POP）登录过的免费邮箱采取冻结处理?
邮箱被冻结后其所有电子邮件、通讯录、功能设置都将被清空，且不可恢复。冻结期间（?您未登录邮箱的第91天～?80天），发送到该邮箱的邮件将被退还给发件人?
一旦您的免费邮箱被冻结，可以通过WEB登录或客户端POP收信的方式激活邮箱，激活后的邮箱当即恢复正常使用。请注意，被冻结的邮箱无法通过客户端SMTP发信的方式激活?
如果连续180天未登录邮箱，您的帐号将被删除并可以被其他人注册使用?
在此，新浪邮箱提示您：请至少?0天登录一次您的免费邮箱，以便使其处于正常使用状态?


如果您使用Outlook、Foxmail等客户端软件管理邮件，请注意最新的邮件服务器设置?
收信（pop3）服务器：pop.sina.com 
发信（smtp）服务器：smtp.sina.com 
请选择smtp服务器要求身份验证选项?



新浪免费邮箱功能?
     
超大空间、超大附?

新浪免费邮箱为您提供了高?G?000兆）的免费空间，更可以发?5兆大附件?
         
邮件?

系统已经给您提供了六个邮件夹：未读邮件（夹）、收件夹、已发送邮件（夹）、草稿夹、已删除邮件（夹）、垃圾邮件（夹），您还可以根据需要建立新的邮件夹，例如为了将特定长者的来信与其他的信件分开，您可以建立一个叫做“长者”的邮件夹?
         
邮件过滤 

您可以对收到的邮件进行自动筛选处理，将垃圾邮件过滤掉，为特殊的邮件指定一个邮件夹。例如：将所有发信地址包含“sina.com”的来信都自动存放到“新浪网友”邮件夹中。您可以通过点击顶部的“设置”链接，再点选“分类保存”、“黑名单”和“白名单”选项来开始设置?        
  
自动回复 

如果您最近因出差或其它原因，无法及时开启邮箱，或仅仅希望在正式回信之前，通知对方来信收悉。则可以根据具体情况，编写一封自动回复的信件。这样，当您的邮箱收到一封邮件时，会自动发出事先准备好的信件，避免了回信延迟所可能带来的误会。可以通过点击顶部的“设置”链接，再点选“自动回复”选项来开始设置?
         
邮件查找 

如果您一时在众多的邮件中找不到的特定的邮件，只要大概记得寄件人地址、邮件主题或邮件中所包含的一些字，就可以通过邮件查询功能来检索到这封邮件?
         
通讯?

如果您将经常联系的朋友邮件地址保存进通讯录，以后就可以方便的向他们发送邮件而无须输入邮件地址。此外，在通讯录里还有分组功能，可以为具有同样属性的网友建立一个小组。例如，可以将所有的同事归入一个叫做“同事”的小组，当有一封需要向同事们广而告之的信时，可以直接向这个小组发信，避免了重复操作的麻烦?
         
开始写邮件 
        现在，就请点击左侧的“写信”按钮来开始撰写并发送您的第一封新浪免费邮件吧！支持html邮件编辑哦！ 
         
想享受VIP级的电子邮件服务吗？请选择新浪VIP邮箱?

        新浪VIP邮箱是为您量身定制的超强电子邮件系统：它使用独立带宽，运行高速快捷；强大的在线杀毒和反垃圾邮件功能保证您的电子通信环境安全稳定?

        能发?0M超大附件，配有G级存储空间，让您的邮件收发体验更加顺畅?

        服务器上双备份邮件内容，让您的邮件永不丢失！

        独有的加密登录系统，保护您的邮件内容和密码免遭黑客窃取?

        更提供强大的通讯录功能、邮件查杀病毒、短信提醒、邮件过滤，邮件转发，多多功能让您目不暇接?

        不要犹豫，点击此处立即抢鲜体验：http://vip.sina.com.cn/register/reg_vipmail.php 
        
        想了解更多VIP邮箱信息，请点击此处?http://vip.sina.com.cn/
     
如果您有任何疑问，请浏览新浪邮箱帮助中心 http://mail.sina.com.cn/help2/serverstage.html
     
感谢您对新浪网的支持?



-------------------------------------------------------------------
SINA.com.cn 新浪网北?                           You are the One
http://www.sina.com.cn/　　　　　　　新浪  一切由你开?','（sinamail@sina.com）','admin','已读')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 42,'邮件服务器','2008-7-19 9:17:52','请问什么才是好的邮件服务器呢？','633520558498906250.jpg','admin','myerpsystem@sina.com','已发')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 43,'免费发布软件供求信息','2008-7-19 11:06:42','你好，软件妈妈 http://www.softmama.com 软件推广平台免费为您提供服务！最新业界资讯，免费发布软件供求信息，免费发布软件商品！
 
 
如有打扰，请见谅！','王俊强（zowadada@126.com）','admin','已读')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 44,'关于新财务部通知，财务部部长离任','2008-7-21 12:11:49','关于新财务部通知，财务部部长离任，如果需要报销，请提前发起申请。','admin','zwl168918@126.com','已发')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 45,'关于新财务部通知，财务部部长离任','2008-7-21 12:11:49','关于新财务部通知，财务部部长离任，如果需要报销，请提前发起申请。2008-7-21 12:11:49','MailAttachments/633519217371718750.doc','zwl168918@126.com（zwl168918@126.com）','admin','已读')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 46,'市场部经理d期待与您合作!','2008-7-31 15:31:39','MailAttachments/633531183362500000格式8.jpg','sijfshfshu（otyc@chinaip.tv）','admin','已读')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 63,'zwl168918你好！这是给你准备的','2008-9-3 1:56:08','zwl168918你好，正像我们费尽心机找到你一样，也许你也在找我们。三年来，我们的目标就是打造出一个给像你这样的人用的网站(不要奇怪，我们对你略知一二，我们要找的就是有品有趣的人~)今天，代表近百万用户邀请你加入。这是一个热闹又保持一定分寸的社区，她很聪明，她亲切友好，试一下，你会爱上她。(这里已经有很多有意思的人了，大家都在等你~~)





&raquo;点击接受邀请






如果上面链接不可点，请复制下列地址到浏览器打开

http://www.mpspaces.cn/index2.html


最好的电子邮箱 http://www.126.com','liyanwang15303（liyanwang15303@tom.com）','admin','已读')

SET IDENTITY_INSERT [ERPNetEmail] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPRedHead]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPRedHead]

CREATE TABLE [ERPRedHead] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileName] [varchar]  (200) NULL,
[FilePath] [varchar]  (100) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPRedHead] WITH NOCHECK ADD  CONSTRAINT [PK_ERPRedHead] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPRedHead] ON

INSERT [ERPRedHead] ([ID],[FileName],[FilePath],[UserName],[TimeStr]) VALUES ( 5,'开发部行文模板','633733195766250000.doc','admin','2009-3-22 11:52:56')
INSERT [ERPRedHead] ([ID],[FileName],[FilePath],[UserName],[TimeStr]) VALUES ( 6,'其他行文模板','633733195885937500.doc','admin','2009-3-22 11:53:08')

SET IDENTITY_INSERT [ERPRedHead] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPRiZhi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPRiZhi]

CREATE TABLE [ERPRiZhi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[DoSomething] [varchar]  (1000) NULL,
[IpStr] [varchar]  (50) NULL)

ALTER TABLE [ERPRiZhi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPRiZhi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPRiZhi] ON

INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1304,'admin','2009-3-22 11:44:16','用户删除红头文件','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1305,'admin','2009-3-22 11:52:56','用户添加红头文件(开发部行文模板)','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1306,'admin','2009-3-22 11:53:08','用户添加红头文件(其他行文模板)','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1307,'admin','2009-3-22 11:54:49','查看文件信息(密码卡.JPG)','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1308,'admin','2009-3-22 12:22:27','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1309,'admin','2009-3-22 12:25:11','用户修改角色信息(超级管理员)','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1310,'admin','2009-3-22 12:25:18','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1311,'admin','2009-3-22 12:35:55','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1312,'admin','2009-3-22 12:38:17','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1313,'admin','2009-3-22 12:38:23','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1314,'admin','2009-3-22 12:45:20','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1315,'admin','2009-3-22 12:51:15','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1316,'admin','2009-3-22 12:52:06','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1317,'admin','2009-3-22 16:19:21','用户登陆系统','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1318,'admin','2009-3-22 16:19:44','用户登陆系统','127.0.0.1')

SET IDENTITY_INSERT [ERPRiZhi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSerils]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSerils]

CREATE TABLE [ERPSerils] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[SerilsStr] [varchar]  (200) NULL,
[DateStr] [varchar]  (200) NULL)

ALTER TABLE [ERPSerils] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSerils] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSerils] ON

INSERT [ERPSerils] ([ID],[SerilsStr],[DateStr]) VALUES ( 1,'6C41160D8DA54C25F056B4048F834BD29A9C29503DD8003E','90333ED94DDE2C4A3ACF4BC21571AD1E')

SET IDENTITY_INSERT [ERPSerils] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPShenPi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPShenPi]

CREATE TABLE [ERPShenPi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ContentStr] [varchar]  (5000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL)

ALTER TABLE [ERPShenPi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPShenPi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPShenPi] ON

INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 1,'同意此文件所写内容','2008-7-28 18:11:19','admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 2,'不同意，该提案不可取，请重新修正。','2008-7-28 18:12:13','admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 3,'请转交财务部处理，我已阅。','2008-7-28 18:12:45','admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 4,'请转向信息部处理后，再转回处理。','2008-7-28 18:14:28','admin')

SET IDENTITY_INSERT [ERPShenPi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSystemSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSystemSetting]

CREATE TABLE [ERPSystemSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileType] [varchar]  (8000) NULL)

ALTER TABLE [ERPSystemSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSystemSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSystemSetting] ON

INSERT [ERPSystemSetting] ([ID],[FileType]) VALUES ( 1,'|doc||jpg||xls||cad||rar||zip||wps||wps||ppt||txt||gif||mdb|')

SET IDENTITY_INSERT [ERPSystemSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkInfo]

CREATE TABLE [ERPTalkInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkRoomName] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[ContentStr] [varchar]  (8000) NULL)

ALTER TABLE [ERPTalkInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkInfo] ON

INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 1,'午餐过后','admin','所有人','2008-9-12 11:41:59','大家好啊？')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 2,'午餐过后','admin','所有人','2008-9-12 11:42:23','我要问好')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 3,'午餐过后','admin','所有人','2008-9-12 11:43:33','怎么了啊')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 4,'午餐过后','admin','admin','2008-9-12 11:44:25','什么时候啊？')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 5,'午餐过后','admin','所有人','2008-9-12 11:44:54','天涯明月刀')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 6,'午餐过后','admin','所有人','2008-9-12 11:45:31','测试一下啊')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 7,'午餐过后','admin','所有人','2008-9-12 12:00:53','你们什么时间在呢？')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 8,'午餐过后','admin','admin','2008-9-12 12:01:04','我在的时候，你在吗？')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 9,'午餐过后','admin','王财务','2008-9-12 12:03:28','干啥？')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 10,'午餐过后','王财务','admin','2008-9-12 12:03:45','不干啥，不爽嗦')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 11,'午餐过后','admin','所有人','2008-9-12 12:04:00','大家好')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 12,'午餐过后','王财务','所有人','2008-9-12 12:04:26','No')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 13,'午餐过后','王财务','王财务','2008-9-12 12:04:53','自己对自己说')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 14,'疑难解答','admin','所有人','2008-9-13 11:15:45','大家好啊，我是新来的。请多关照。')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[TimeStr],[ContentStr]) VALUES ( 15,'疑难解答','admin','2009-2-10 9:19:02','我来了，大家好啊')

SET IDENTITY_INSERT [ERPTalkInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkOnlineUser]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkOnlineUser]

CREATE TABLE [ERPTalkOnlineUser] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkRoomName] [varchar]  (500) NULL,
[LoginUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPTalkOnlineUser] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkOnlineUser] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkOnlineUser] ON

INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 1,'午餐过后','admin','2009-3-22 11:40:31')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 2,'工作交流','admin','2009-2-13 9:03:44')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 3,'商务交流','王财务','2008-9-12 12:02:42')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 4,'午餐过后','王财务','2008-9-12 12:06:06')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 5,'休闲沟通','admin','2008-9-12 12:06:49')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 6,'销售二组沟通','admin','2008-9-12 12:07:52')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 7,'意见建议','admin','2009-3-22 11:40:28')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 8,'领导协商','admin','2009-3-22 11:40:18')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 9,'疑难解答','admin','2009-3-22 11:40:22')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 10,'商务交流','admin','2009-3-22 11:40:25')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 11,'开发部沟通','admin','2009-2-13 9:03:41')

SET IDENTITY_INSERT [ERPTalkOnlineUser] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkSetting]

CREATE TABLE [ERPTalkSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkName] [varchar]  (5000) NULL)

ALTER TABLE [ERPTalkSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkSetting] ON

INSERT [ERPTalkSetting] ([ID],[TalkName]) VALUES ( 1,'疑难解答|商务交流|意见建议|午餐过后|休闲沟通|工作交流|聊天灌水|开发部沟通|销售一组沟通|销售二组沟通|财务人员沟通|领导协商')

SET IDENTITY_INSERT [ERPTalkSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTelFile]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTelFile]

CREATE TABLE [ERPTelFile] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[FromUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[FileType] [varchar]  (50) NULL,
[ToUser] [varchar]  (8000) NULL,
[YiJieShouRen] [varchar]  (8000) NULL,
[ContentStr] [text]  NULL,
[FuJianStr] [varchar]  (1000) NULL,
[ChuanYueYiJian] [text]  NULL)

ALTER TABLE [ERPTelFile] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTelFile] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTelFile] ON

INSERT [ERPTelFile] ([ID],[TitleStr],[FromUser],[TimeStr],[FileType],[ToUser],[YiJieShouRen],[ContentStr],[FuJianStr],[ChuanYueYiJian]) VALUES ( 1,'集团内部工作条例','admin','2008-9-10 15:14:37','集团条例','王财务,张富贵,admin','王财务,admin','百度，2000年1月创立于北京中关村，是全球最大的中文网站、最大的中文搜索引擎。 <P>2000年1月1日，公司创始人李彦宏、徐勇从美国硅谷回国，创建了百度。创立之初，百度便将“让人们更便捷地获取信息”作为自己的使命，并为此始终如一、不懈地努力奋斗。</P><P>2000年5月，百度首次为门户网站——硅谷动力提供搜索技术服务，之后迅速占领中国搜索引擎市场，成为最主要的搜索技术提供商。2001年8月，发布Baidu.com搜索引擎Beta版，从后台技术提供者转为面向公众独立提供搜索服务，并且在中国首创了竞价排名商业模式，2001年10月22日正式发布Baidu搜索引擎。</P><P>2003年12月，开创性地推出贴吧，开搜索社区化之先河。</P><P>2005年8月5日，百度在美国纳斯达克上市，成为2005年全球资本市场上最为引人注目的上市公司。</P><P>2008年1月23日，百度日本公司正式运营，百度全面启动国际化战略。 </P><P>百度坚信，让人们更便捷地获取信息，让人类的智慧相互沟通与交融，即有利于人类智慧的发展，也有利于促进人们的平等，推动社会的进步。</P>','633566563715781250.doc|633566563787343750.doc|','<font color=#001EFF>admin(2008-9-10 15:40:13)：</font>文章不错，我要保存下来<hr height=1px><font color=#001EFF>admin(2008-9-10 15:40:32)：</font>我来测试签收的性能如何<hr height=1px><font color=#001EFF>王财务(2008-9-10 15:47:11)：</font>很好，很强大<hr height=1px>')

SET IDENTITY_INSERT [ERPTelFile] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTongXunLu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTongXunLu]

CREATE TABLE [ERPTongXunLu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[IfShare] [varchar]  (50) NULL,
[TypeStr] [varchar]  (50) NULL,
[FenZu] [varchar]  (50) NULL,
[NameStr] [varchar]  (50) NULL,
[Sex] [varchar]  (50) NULL,
[BirthDay] [varchar]  (50) NULL,
[NiCheng] [varchar]  (50) NULL,
[ZhiWu] [varchar]  (50) NULL,
[PeiOu] [varchar]  (500) NULL,
[ZiNv] [varchar]  (500) NULL,
[DanWeiMingCheng] [varchar]  (500) NULL,
[DanWeiDiZhi] [varchar]  (500) NULL,
[DanWeiYouBian] [varchar]  (50) NULL,
[DanWieDianHua] [varchar]  (50) NULL,
[DanWeiChuanZhen] [varchar]  (50) NULL,
[JiaTingZhuZhi] [varchar]  (500) NULL,
[JiaTingYouBian] [varchar]  (50) NULL,
[JiaTingDianHua] [varchar]  (50) NULL,
[ShouJi] [varchar]  (50) NULL,
[XiaoLingTong] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[QQ] [varchar]  (50) NULL,
[Msn] [varchar]  (50) NULL,
[BackInfo] [text]  NULL)

ALTER TABLE [ERPTongXunLu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTongXunLu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTongXunLu] ON

INSERT [ERPTongXunLu] ([ID],[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ],[Msn],[BackInfo]) VALUES ( 1,'admin','否','公共通讯簿','客户','张思强','男','1980-7-2','小强','总经理','伊丽莎白','威廉王子','中国网络','重庆渝北区金开大道1133号','400000','023-67466469','023-67466469-8088','重庆渝北区金开大道1135号','400001','023-67466468','13696432490','023-67466467','zwl168918@126.com','9618195','zhangsansa@hotmail.com','此人很好很强大。')
INSERT [ERPTongXunLu] ([ID],[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ],[Msn],[BackInfo]) VALUES ( 2,'admin','否','个人通讯簿','同学','刘晓昌','女','1972-3-6','阿昌','总裁','王富贵','王战神','富贵集团中国投资公司','长江路富贵别墅区富贵村','400008','023-88881888','023-88881886','长江路富贵别墅区富贵村三队','400007','023-88888688','13696432490','023-67466469','zwl168918@126.com','9618195','zwl168918@hotmail.com','天上人家在此处，天涯不堪回首。')
INSERT [ERPTongXunLu] ([ID],[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ],[Msn],[BackInfo]) VALUES ( 3,'admin','是','个人通讯簿','战友','王大海','男','1970-3-26','海哥','总经理','王富贵','王战神','富贵集团中国投资公司','长江路富贵别墅区富贵村','400008','023-88881888','023-88881886','长江路富贵别墅区富贵村三队','400007','023-88888688','13696432490','023-67466469','zwl168918@126.com','9618195','zwl168918@hotmail.com','天上人家在此处，天涯不堪回首。')

SET IDENTITY_INSERT [ERPTongXunLu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPUser]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPUser]

CREATE TABLE [ERPUser] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[UserPwd] [varchar]  (200) NULL,
[TrueName] [varchar]  (50) NULL,
[Serils] [varchar]  (50) NULL,
[Department] [varchar]  (50) NULL,
[JiaoSe] [varchar]  (50) NULL,
[ActiveTime] [datetime]  NULL,
[ZhiWei] [varchar]  (50) NULL,
[ZaiGang] [varchar]  (50) NULL,
[EmailStr] [varchar]  (50) NULL,
[IfLogin] [varchar]  (50) NULL,
[Sex] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[BirthDay] [varchar]  (50) NULL,
[MingZu] [varchar]  (50) NULL,
[SFZSerils] [varchar]  (50) NULL,
[HunYing] [varchar]  (50) NULL,
[ZhengZhiMianMao] [varchar]  (50) NULL,
[JiGuan] [varchar]  (50) NULL,
[HuKou] [varchar]  (500) NULL,
[XueLi] [varchar]  (50) NULL,
[ZhiCheng] [varchar]  (50) NULL,
[BiYeYuanXiao] [varchar]  (50) NULL,
[ZhuanYe] [varchar]  (50) NULL,
[CanJiaGongZuoTime] [varchar]  (50) NULL,
[JiaRuBenDanWeiTime] [varchar]  (50) NULL,
[JiaTingDianHua] [varchar]  (50) NULL,
[JiaTingAddress] [varchar]  (500) NULL,
[GangWeiBianDong] [text]  NULL,
[JiaoYueBeiJing] [text]  NULL,
[GongZuoJianLi] [text]  NULL,
[SheHuiGuanXi] [text]  NULL,
[JiangChengJiLu] [text]  NULL,
[ZhiWuQingKuang] [text]  NULL,
[PeiXunJiLu] [text]  NULL,
[DanBaoJiLu] [text]  NULL,
[NaoDongHeTong] [text]  NULL,
[SheBaoJiaoNa] [text]  NULL,
[TiJianJiLu] [text]  NULL,
[BeiZhuStr] [text]  NULL,
[FuJian] [varchar]  (5000) NULL,
[POP3UserName] [varchar]  (50) NULL,
[POP3UserPwd] [varchar]  (50) NULL,
[POP3Server] [varchar]  (50) NULL,
[POP3Port] [varchar]  (50) NULL,
[SMTPUserName] [varchar]  (50) NULL,
[SMTPUserPwd] [varchar]  (50) NULL,
[SMTPServer] [varchar]  (50) NULL,
[SMTPFromEmail] [varchar]  (50) NULL,
[TiXingTime] [varchar]  (50) NULL DEFAULT (30),
[IfTiXing] [varchar]  (50) NULL DEFAULT ('是'))

ALTER TABLE [ERPUser] WITH NOCHECK ADD  CONSTRAINT [PK_ERPUser] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPUser] ON

INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[EmailStr],[IfLogin],[Sex],[POP3UserName],[POP3UserPwd],[POP3Server],[POP3Port],[SMTPUserName],[SMTPUserPwd],[SMTPServer],[SMTPFromEmail],[TiXingTime],[IfTiXing]) VALUES ( 1,'admin','B5C32B00080A8967','张小三','KF008','开发部','超级管理员','2009-3-22 16:27:47','部长','是','zwl168918@126.com','是','男','zwl168918','test','pop3.126.com','110','zwl168918','test','smtp.126.com','zwl168918@126.com','60','是')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[EmailStr],[IfLogin],[Sex],[BackInfo],[BirthDay],[MingZu],[SFZSerils],[HunYing],[ZhengZhiMianMao],[JiGuan],[HuKou],[XueLi],[ZhiCheng],[BiYeYuanXiao],[ZhuanYe],[CanJiaGongZuoTime],[JiaRuBenDanWeiTime],[JiaTingDianHua],[JiaTingAddress],[GangWeiBianDong],[JiaoYueBeiJing],[GongZuoJianLi],[SheHuiGuanXi],[JiangChengJiLu],[ZhiWuQingKuang],[PeiXunJiLu],[DanBaoJiLu],[NaoDongHeTong],[SheBaoJiaoNa],[TiJianJiLu],[BeiZhuStr],[FuJian],[TiXingTime],[IfTiXing]) VALUES ( 2,'张富贵','F3F4DAC321F39044','张富贵','KF001','开发部','超级管理员,一般管理员','2009-3-20 10:49:14','部长','是','zhangfugui@126.com','是','男','此人心情很好，经常出去旅游','1980-7-24','汉','342401198025648560','未婚','党员','海南三亚','重庆三亚大酒店综合户口','博士','总工程师','重庆大学','计算机科学与技术','2005-6-29','2008-7-1','023-64676469','家庭详细住址','岗位变动情况','教育背景','工作简历','社会关系','奖惩记录','职务情况','培训记录','担保记录','劳动合同签订情况','社保缴纳情况','体检记录','备 注','633518025940937500.jpg|633518025940937500.jpg|','30','是')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[EmailStr],[IfLogin],[Sex],[FuJian],[TiXingTime],[IfTiXing]) VALUES ( 18,'王财务','F3F4DAC321F39044','王富贵','0023','财务部','一般管理员','2009-3-20 11:01:13','部长','是','wang@126.com','是','女','633560539256718750.jpg|633560539482968750.doc','30','是')

SET IDENTITY_INSERT [ERPUser] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPUserDesk]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPUserDesk]

CREATE TABLE [ERPUserDesk] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[ModelName] [varchar]  (50) NULL,
[LookNum] [int]  NULL DEFAULT (5))

ALTER TABLE [ERPUserDesk] WITH NOCHECK ADD  CONSTRAINT [PK_ERPUserDesk] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPUserDesk] ON

INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 103,'王财务','内部邮件',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 104,'王财务','Internet邮件',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 105,'王财务','手机短信',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 106,'王财务','单位公告通知',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 107,'王财务','部门公告通知',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 108,'王财务','投票',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 109,'王财务','日程安排',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 110,'王财务','工作日志',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 111,'王财务','公共通讯簿',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 112,'王财务','共享通讯簿',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 113,'王财务','个人通讯簿',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 114,'王财务','我的会议',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 115,'王财务','我的计划',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 116,'王财务','个人文件',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 117,'王财务','共享文件',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 118,'王财务','我的硬盘',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 119,'王财务','共享硬盘',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 120,'王财务','接收文件',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 128,'admin','待办工作',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 129,'admin','我的工作',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 130,'admin','内部邮件',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 131,'admin','单位公告通知',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 132,'admin','部门公告通知',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 133,'admin','日程安排',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 135,'admin','手机短信',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 136,'admin','投票',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 137,'admin','工作日志',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 138,'admin','公共通讯簿',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 139,'admin','共享通讯簿',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 140,'admin','个人通讯簿',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 142,'admin','我的计划',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 143,'admin','个人文件',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 144,'admin','共享文件',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 145,'admin','我的硬盘',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 146,'admin','共享硬盘',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 147,'admin','接收文件',5)

SET IDENTITY_INSERT [ERPUserDesk] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPVote]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPVote]

CREATE TABLE [ERPVote] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[ContentStr] [varchar]  (8000) NULL,
[ScoreStr] [varchar]  (800) NULL,
[TouPiaoRenList] [varchar]  (8000) NULL DEFAULT (''))

ALTER TABLE [ERPVote] WITH NOCHECK ADD  CONSTRAINT [PK_ERPVote] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPVote] ON

INSERT [ERPVote] ([ID],[TitleStr],[TimeStr],[UserName],[ContentStr],[ScoreStr]) VALUES ( 1,'国庆节到什么地方去旅游呢？请大家发表意见','2008-7-21 16:18:47','admin','海南|大连|黄山|马尔代夫|非洲|月球','3|2|3|4|5|7')

SET IDENTITY_INSERT [ERPVote] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkFlow]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkFlow]

CREATE TABLE [ERPWorkFlow] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFlowName] [varchar]  (50) NULL,
[FormName] [varchar]  (50) NULL,
[UserList] [varchar]  (8000) NULL,
[GuiDangType] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[JianJie] [varchar]  (2000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPWorkFlow] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkFlow] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkFlow] ON

INSERT [ERPWorkFlow] ([ID],[WorkFlowName],[FormName],[GuiDangType],[UserName],[JianJie],[TimeStr]) VALUES ( 7,'发文流程','发文登记','公文管理','admin','发文登记时采用此流程。','2009-3-22 10:27:47')
INSERT [ERPWorkFlow] ([ID],[WorkFlowName],[FormName],[GuiDangType],[UserName],[JianJie],[TimeStr]) VALUES ( 8,'收文登记','收文登记','公文管理','admin','收文登记时采用此流程。','2009-3-22 10:27:42')

SET IDENTITY_INSERT [ERPWorkFlow] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkFlowJieDian]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkFlowJieDian]

CREATE TABLE [ERPWorkFlowJieDian] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFlowID] [int]  NULL,
[JieDianSerils] [varchar]  (50) NULL,
[JieDianName] [varchar]  (50) NULL,
[JieDianAddr] [varchar]  (50) NULL,
[NextJieDianSerils] [varchar]  (50) NULL,
[PingShenMoShi] [varchar]  (500) NULL,
[ShengPiUserSetting] [varchar]  (50) NULL,
[JieShuHours] [int]  NULL,
[IFEditFile] [varchar]  (50) NULL,
[IFDelFile] [varchar]  (50) NULL,
[TiaoJianTiaoZhuan] [varchar]  (8000) NULL,
[JingBanRenYuanList] [varchar]  (8000) NULL)

ALTER TABLE [ERPWorkFlowJieDian] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkFlowJieDian] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkFlowJieDian] ON

INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[TiaoJianTiaoZhuan],[JingBanRenYuanList]) VALUES ( 1,1,'1','填写请假申请','开始','2,3','一人通过可向下流转','审批时自由指定',24,'是','是','请假天数[数字型]'大于'10→3|请假天数[数字型]'小于等于'10→2|请假部门[常规型]'等于'开发部→3|请假部门[常规型]'不等于'开发部→2','admin,王财务,张富贵')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 2,1,'2','部门审核','中间段','4','全部通过可向下流转','审批时从经办人列表中指定',24,'否','否','王财务,张富贵')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 3,1,'3','单位核准','中间段','4','一人通过可向下流转','审批时自由指定',24,'是','是','admin,王财务,张富贵')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 4,1,'4','完成归档','结束','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 6,3,'1','员工销假','开始','2','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 7,3,'2','销假成功','结束','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 10,4,'1','开始了','开始','2','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 11,4,'2','测试下哦','中间段','3','一人通过可向下流转','审批时自由指定',24,'否','否','admin,王财务,张富贵')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 12,4,'3','砂纸','中间段','4','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 13,4,'4','结束了哦','结束','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 16,6,'1','1','开始','2','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 17,8,'1','收文申请','开始','2','一人通过可向下流转','审批时自由指定',24,'是','是','admin,王财务,张富贵')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 18,8,'2','部门审核','中间段','3','一人通过可向下流转','审批时自由指定',24,'是','是','admin,王财务,张富贵')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 19,8,'3','单位审核','中间段','4','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 20,8,'4','收文归档','结束','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 21,7,'1','发文申请','开始','2','一人通过可向下流转','审批时自由指定',24,'是','是')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 22,7,'2','发文初审','中间段','3','一人通过可向下流转','审批时自由指定',24,'是','是','admin,王财务,张富贵')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 23,7,'3','发文通过','结束','一人通过可向下流转','审批时自由指定',24,'是','是')

SET IDENTITY_INSERT [ERPWorkFlowJieDian] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkPlan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkPlan]

CREATE TABLE [ERPWorkPlan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[FuJianStr] [varchar]  (2000) NULL,
[UserName] [varchar]  (100) NULL,
[CanLookUser] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPWorkPlan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkPlan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkPlan] ON

INSERT [ERPWorkPlan] ([ID],[TitleStr],[ContentStr],[FuJianStr],[UserName],[CanLookUser],[TimeStr]) VALUES ( 1,'我的2008-09-04工作计划，测试专用','<P>这个主要是用作测试专用的，今日工作计划是：</P><P>1：吃饭</P><P>2：睡觉</P><P>3：打游戏</P>','633561231302500000.doc||633561246099687500.doc','admin','王财务,张富贵,admin','2008-9-4 11:30:25')

SET IDENTITY_INSERT [ERPWorkPlan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkRiZhi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkRiZhi]

CREATE TABLE [ERPWorkRiZhi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TitleStr] [varchar]  (1000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[TypeStr] [varchar]  (50) NULL,
[ContentStr] [text]  NULL)

ALTER TABLE [ERPWorkRiZhi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkRiZhi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkRiZhi] ON

INSERT [ERPWorkRiZhi] ([ID],[UserName],[TitleStr],[TimeStr],[TypeStr],[ContentStr]) VALUES ( 1,'admin','7月27工作日志--文件模块如何设计？','2008-7-27 16:12:14','个人日志','在现有的模式下，能设计分布式结构吗？值得我们自己好好的思考和实验。')
INSERT [ERPWorkRiZhi] ([ID],[UserName],[TitleStr],[TimeStr],[TypeStr],[ContentStr]) VALUES ( 2,'admin','关于集团项目管理系统三层结构的合理性分析','2008-7-27 16:15:35','工作日志','<P>在仔细分析了项目系统的设计架构后，我认为：</P><P>1：采用纯粹的三层结构使得程序代码僵硬</P><P>2：易于维护，但是不易于理解</P><P>3：无法与现有框架集成</P><P>4：文档中心无法调用</P>')

SET IDENTITY_INSERT [ERPWorkRiZhi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkToDo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkToDo]

CREATE TABLE [ERPWorkToDo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkName] [varchar]  (200) NULL,
[FormName] [varchar]  (200) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[WorkFlowID] [int]  NULL,
[FormContent] [text]  NULL,
[FuJianList] [varchar]  (5000) NULL,
[ShenPiYiJian] [text]  NULL,
[JieDianID] [int]  NULL,
[JieDianName] [varchar]  (200) NULL,
[ShenPiRenList] [varchar]  (8000) NULL,
[TongGuoRenList] [varchar]  (8000) NULL,
[StateNow] [varchar]  (50) NULL,
[LateTime] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPWorkToDo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkToDo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkToDo] ON

INSERT [ERPWorkToDo] ([ID],[WorkName],[FormName],[UserName],[TimeStr],[WorkFlowID],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiRenList],[StateNow],[LateTime]) VALUES ( 13,'admin--收文登记(2009-3-20)','收文登记','admin','2009-3-20 18:29:34',8,'<P align=center><FONT style="LETTER-SPACING: 5px" color=#ff0000 size=5><B><BR>分公司收文单</B></FONT></P><TABLE cellSpacing=0 borderColorDark=#ffffff cellPadding=6 width=730 align=center bgColor=#ffffff borderColorLight=#ff0000 border=1><TBODY><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>收文类别 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 119px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=7 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>文件编号 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=5 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>秘密等级 </FONT></TD><TD><SELECT name=""> <OPTION value=高 selected>高</OPTION> <OPTION value=中>中</OPTION> <OPTION value=低>低</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>收文日期 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 121px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=12 name=2008416165222640></SPAN></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>收文份数 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData('text'))" id=Text1 ondragenter="return false" style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; IME-MODE: disabled; BORDER-LEFT: 0px; WIDTH: 115px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=10 name=19076></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>紧急程度 </FONT></TD><TD><SELECT name=""> <OPTION value=高 selected>高</OPTION> <OPTION value=中>中</OPTION> <OPTION value=低>低</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>收文字号 </FONT></TD><TD><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: #000000 1px solid" name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>来文单位 </FONT></TD><TD colSpan=3><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=11 value=开发部 name=15160></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>主 题 词 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 549px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=51 name=2008416165222640></SPAN></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>文件标题 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 547px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=49 name=2008416165222640></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>备&nbsp;&nbsp;&nbsp;&nbsp;注 </FONT></TD><TD colSpan=5><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 562px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 35px" name=2008416165222640 cols=25></TEXTAREA></TD></TR></TBODY></TABLE>','<font color=#0000FF>admin&nbsp;&nbsp;2009-3-22 10:34:45&nbsp;&nbsp;</font><BR>同意此文件所写内容
<hr>',20,'收文归档','admin,王财务,张富贵','正在办理','2009-3-22 10:34:59')
INSERT [ERPWorkToDo] ([ID],[WorkName],[FormName],[UserName],[TimeStr],[WorkFlowID],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[StateNow],[LateTime]) VALUES ( 14,'admin--发文流程(2009-3-20)','发文登记','admin','2009-3-20 18:29:56',7,'<TABLE title="" cellSpacing=0 cellPadding=0 width=600 align=center border=0><TBODY><TR height=35><TD style="FONT-SIZE: 12px" vAlign=center align=middle width="100%" height=50><FONT color=#ff0000><H3><BR>发文登记表</H3></FONT></TD></TR><TR height=35><TD style="FONT-SIZE: 12px" vAlign=center width="100%"><TABLE title="" cellSpacing=0 borderColorDark=#ffffff cellPadding=5 width="100%" align=center borderColorLight=#ff0000 border=1><TBODY><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;标题</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 508px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=46 name=14814></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;发文类型</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="21%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 210px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=6519></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;文号</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="22%"><SPAN id=sWenHao width="100%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 206px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=11004></SPAN><!--<INPUT type="text" id=WenHao name=WenHao value="" style="width:100%;" maxlength=100 >--></TD></TR><SCRIPT language=vbscript>     '查找当前选中的类型文号是否允许修改     function LeiXingChange()      if formData.LeiXing.value<>"" then       mystatus.style.display = ""       sWenHao.style.display ="none"       frmWH.action="WenHao.asp"       frmWH.target ="FTongJi"       frmWH.LeiXing.value =formData.LeiXing.value       frmWH.submit()      end if     end function     LeiXingChange    </SCRIPT><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;密级</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="22%"><SELECT name=""> <OPTION value=高 selected>高</OPTION> <OPTION value=中>中</OPTION> <OPTION value=低>低</OPTION></SELECT></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;紧急程度</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="21%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 204px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=17141></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;发文时间</TD><TD style="FONT-SIZE: 12px" vAlign=center><INPUT id=0.7730247343370162 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 205px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" onclick=setday(this) size=21 name=16799></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;签发人</TD><TD style="FONT-SIZE: 12px" vAlign=center><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 200px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly value=admin name=15172></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;承办人</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="40%"><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 203px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly value=admin name=766></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;承办单位</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="40%"><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 198px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=22 value=开发部 name=1212></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;发送内容</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3 height=50><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 504px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 38px" name=1287 rows=1 cols=24></TEXTAREA></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;备注</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3 height=50><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 503px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 43px" name=5864 cols=23></TEXTAREA></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>','<font color=#0000FF>admin&nbsp;&nbsp;2009-3-20 18:31:09&nbsp;&nbsp;</font><BR>同意此文件所写内容
<hr><font color=#0000FF>admin&nbsp;&nbsp;2009-3-20 18:30:58&nbsp;&nbsp;</font><BR>同意此文件所写内容
<hr><font color=#0000FF>admin&nbsp;&nbsp;2009-3-20 18:30:15&nbsp;&nbsp;</font><BR>同意此文件所写内容
<hr>',23,'结束','正常结束','2009-3-20 18:29:34')
INSERT [ERPWorkToDo] ([ID],[WorkName],[FormName],[UserName],[TimeStr],[WorkFlowID],[FormContent],[JieDianID],[JieDianName],[ShenPiRenList],[StateNow],[LateTime]) VALUES ( 17,'admin--收文登记(2009-3-22)','收文登记','admin','2009-3-22 10:42:52',8,'<P align=center><FONT style="LETTER-SPACING: 5px" color=#ff0000 size=5><B><BR>分公司收文单</B></FONT></P><TABLE cellSpacing=0 borderColorDark=#ffffff cellPadding=6 width=730 align=center bgColor=#ffffff borderColorLight=#ff0000 border=1><TBODY><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>收文类别 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 119px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=7 value=测试类别 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>文件编号 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=5 value=警0902-0386 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>秘密等级 </FONT></TD><TD><SELECT name=""> <OPTION value=高>高</OPTION> <OPTION value=中 selected>中</OPTION> <OPTION value=低>低</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>收文日期 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 121px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=12 value=2009-9-8 name=2008416165222640></SPAN></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>收文份数 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData('text'))" id=Text1 ondragenter="return false" style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; IME-MODE: disabled; BORDER-LEFT: 0px; WIDTH: 115px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=10 value=10 name=19076></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>紧急程度 </FONT></TD><TD><SELECT name=""> <OPTION value=高>高</OPTION> <OPTION value=中>中</OPTION> <OPTION value=低 selected>低</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>收文字号 </FONT></TD><TD><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: #000000 1px solid" value=警0902-0386 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>来文单位 </FONT></TD><TD colSpan=3><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=11 value=开发部 name=15160></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>主 题 词 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 549px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=51 name=2008416165222640></SPAN></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>文件标题 </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 547px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=49 name=2008416165222640></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>备&nbsp;&nbsp;&nbsp;&nbsp;注 </FONT></TD><TD colSpan=5><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 562px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 35px" name=2008416165222640 cols=25></TEXTAREA></TD></TR></TBODY></TABLE>',18,'部门审核','admin,王财务,张富贵','正在办理','2009-3-22 10:42:52')

SET IDENTITY_INSERT [ERPWorkToDo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPYinZhang]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPYinZhang]

CREATE TABLE [ERPYinZhang] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[YinZhangName] [varchar]  (50) NULL,
[YinZhangLeiBie] [varchar]  (50) NULL,
[YinZhangMiMa] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[ImgPath] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPYinZhang] WITH NOCHECK ADD  CONSTRAINT [PK_ERPYinZhang] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPYinZhang] ON

INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 1,'演示文稿专用章','公共印章','123456','admin','633728155806250000.gif','2009-3-16 15:53:14')
INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 2,'演示文稿私章','私人印章','123456','admin','633728155458281250.gif','2009-3-16 15:52:25')
INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 4,'开发部专用章','公共印章','123456','admin','633733184507812500.gif','2009-3-22 11:34:10')

SET IDENTITY_INSERT [ERPYinZhang] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPYinZhangLog]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPYinZhangLog]

CREATE TABLE [ERPYinZhangLog] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[DoSomething] [varchar]  (1000) NULL,
[IpStr] [varchar]  (50) NULL,
[TypeStr] [varchar]  (50) NULL)

ALTER TABLE [ERPYinZhangLog] WITH NOCHECK ADD  CONSTRAINT [PK_ERPYinZhangLog] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPYinZhangLog] ON

INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 17,'admin','2009-3-20 16:08:52','用户使用印章：演示文稿专用章(公共印章)','127.0.0.1','公共印章')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 18,'admin','2009-3-20 18:34:04','用户使用印章：演示文稿私章(私人印章)','127.0.0.1','私人印章')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 19,'admin','2009-3-22 11:53:53','用户使用印章：开发部专用章(公共印章)','127.0.0.1','公共印章')

SET IDENTITY_INSERT [ERPYinZhangLog] OFF
