/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50096
Source Host           : 127.0.0.1:3306
Source Database       : exam2

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-01-04 02:08:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `user_id` int(255) NOT NULL auto_increment,
  `user` longtext collate utf8_unicode_ci,
  `password` longtext collate utf8_unicode_ci,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '王敏', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `class_id` int(255) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci,
  PRIMARY KEY  (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', '雀斑');
INSERT INTO `classes` VALUES ('2', 'ccae班');
INSERT INTO `classes` VALUES ('3', '火箭班');
INSERT INTO `classes` VALUES ('4', '水班');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL auto_increment,
  `question` mediumtext,
  `answer` text,
  `choices` mediumtext,
  `type` int(11) default NULL,
  `score` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '“删除背景”工具是PowerPoint2016中新增的图片编辑功能', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('2', 'PowerPoint在放映幻灯片时，必须从第一张幻灯片开始放映', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('3', 'PowerPoint提供的设计模板只包含预定义的各种格式，不包含实际文本内容', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('4', '使用幻灯片母版的作用是进行全局设置和修改，并使该更改应用到演示文稿的所有幻灯片', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('5', '假如一个函数可以使用多个参数，那么参数与参数之间只用半角句号进行分隔', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('6', '公式中括号的优先级最高，即在符号之前使用括号可以改变顺序，最先执行括号内的运算，再执行括号外的运算', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('7', '删除分类汇总时只是将汇总数据删除，并不影响原始数据', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('8', '在Excel编辑中，插入一个“图表”后可使用“撤销”命令撤销该操作', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('9', '在PowerPoint2016中，可以将演示文稿保存为Windows Media视频格式', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('10', '在PowerPoint2016中可以对插入的视频进行编辑', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('11', '在PowerPoint2016的审阅选项卡中可以进行拼写检查、语言翻译、中文简繁体转换操作', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('12', '在PowerPoint2016的视图选项卡中，演示文稿视图有普通视图、幻灯片浏览、备注和阅读模式四种模式', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('13', '在创建图表时，一定要选择好图表的类型，因为一旦创建好图表后，其类型是不能被修改的', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('14', '在设计数据透视表的布局时，一般将最关心的内容放在数据区中，再将与其相关的内容分别放在行字段或者列字段区域中', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('15', '在输入公式过程中，不需要先输入“=”，否则单元格中将直接显示输入的内容', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('16', '对于非相邻区域的数据可以按住Ctrl键选择不相邻的区域，再进行插入图表操作', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('17', '已知A1：D1单元格区域中的数据分别为“88”、“78”、“65”、“91”，而E1中的公式为“=COUNTIF（A1：B1，”>=85”）”，则E1单元格的值为“0”', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('18', '折线图用于分析数据随时间的变化趋势，将同一数据系列的数据点在图上用直线连接起来，通常用于分析数据的变化趋势', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('19', '演示文稿广播时只能是纯文本，不包含音频和视频', '0', null, '0', '4');
INSERT INTO `questions` VALUES ('20', '迷你图是工作表单元格中的一个微型图表，用于显示数值系列中的趋势，可以直观地表示数据', '1', null, '0', '4');
INSERT INTO `questions` VALUES ('21', ' Excel XP/2003的“自动求和”功能有所扩充，能够进行（ ）运算 (Excel) ', '[1,1,1,1]', '[\"A、平均值\",\"B、计数\",\"C、求和\",\"D、最大值\"]', '2', '5');
INSERT INTO `questions` VALUES ('22', ' PowerPoint中，下列有关发送演示文稿的说法中错误的是（ ）', '[0,1,1,1]', '[\"A、在发送信息之前，必须设置好OUTLOOK2000要用到的配置文件\",\"B、准备好要发送的演示文稿后，选择“编辑”菜单中的链接，再选择“邮件收件人”命\",\"C、如果以附件形式发送时，发送的是当前幻灯片的内容\",\"D、如果以邮件正文形式发送时，则发送的是整个演示文稿文件，还可以在邮件正文添加说明文字\"]', '2', '5');
INSERT INTO `questions` VALUES ('23', ' 在新建PowerPoint文稿时，会弹出一个“PowerPoint”对话框，在该对话框中不包括以下哪项内容( )', '[0,1,1,1]', '[\"A、放映幻灯片\",\"B、自动版式\",\"C、空演示文稿\",\"D、内容提示向导\"]', '2', '5');
INSERT INTO `questions` VALUES ('24', ' 要退出EXCEL应用程序,可以（ ）(Excel) ', '[1,1,1,1]', '[\"A、双击EXCEL标题栏左侧的\\形图标\",\"B、同时按ALT和F4键\",\"C、单击EXCEL标题栏右端的叉号按钮\",\"D、单击菜单项命令\\文件/退出\\答案\"]', '2', '5');
INSERT INTO `questions` VALUES ('25', '“单元格格式”对话框中的对齐标签中，下面哪些既属于水平对齐方式又属于垂直对齐方式（ ）(Excel) ', '[0,1,1,1]', '[\"A、跨列居中\",\"B、分散对齐\",\"C、居中\",\"D、两端对齐\"]', '2', '5');
INSERT INTO `questions` VALUES ('26', '(  )是PowerPoint中提供的母板', '[0,1,1,1]', '[\"A、配色母板\",\"B、讲义母板\",\"C、备注母板\",\"D、设计模板\"]', '2', '5');
INSERT INTO `questions` VALUES ('27', '下列Excel2003工作表的描述中，正确的是( )(Excel)', '[1,1,0,1]', '[\"A、在EXCEL中，默认的单元格宽度是“8”个字符宽\",\"B、在Excel使用数据分类汇总命令时必须先对数据清单进行排序\",\"C、Excel在排序时，若将三个以上字段进行排序，其原则是先排重要的序列，最后再排最不重要的三个字段\",\"D、在Excel里对于日期和时间的排序，要先把日期和时间以数字的形式进行排序，然后再转换为文字形式表示\"]', '2', '5');
INSERT INTO `questions` VALUES ('28', '下列关于“资源管理器”的叙述，正确的是(  )', '[1,1,0,1]', '[\"A、使用资源管理器，可以移动文件\",\"B、使用资源管理器，可以启动应用程序 \",\"C、使用资源管理器，可以管理文件 \",\"D、使用资源管理器，可以连接网络驱动器\"]', '2', '5');
INSERT INTO `questions` VALUES ('29', '下列操作项目中可以实现数据求和功能的有(  ) (Excel)', '[1,1,1,0]', '[\"A、合并计算\",\"B、分类汇总\",\"C、数据透视表\",\"D、分列\"]', '2', '5');
INSERT INTO `questions` VALUES ('30', '下列说法中不正确的是( ) (Excel)', '[1,1,1,0]', '[\"A、清除法单元格是指清除该单元格\",\"B、单元格与单元格内的数据是相独立的\",\"C、如果没有设置数字格式，则数据以通用格式存储，数值以最大精确度显示\",\"D、电子表格软件是对二维表格进行处理并可制作成报表的应用软件\"]', '2', '5');
INSERT INTO `questions` VALUES ('31', '下列说法中正确的是( )', '[1,1,0,0]', '[\"A、Excel中制作的表格可以插入到Word文档中\",\"B、Excel 2003中每个工作簿包含1～255个工作表\",\"C、启动Excel 2003，若不进行任何设置，则缺省工作表数为16个\",\" D、Excel 2003的一张工作表最大有255列\"]', '2', '5');
INSERT INTO `questions` VALUES ('32', '下列说法中正确的是( ) (Excel) ', '[0,0,1,1]', '[\"A、工作表中的列宽和行高是固定不变的\",\"B、按HOME键可以使\r\n\r\n光标回到A1单元格\r\n\",\"C、双击Excel窗口左上角的控制菜单可以快速退出Excel\",\"D、在Excel中，可以通过“编辑”菜单中的“查找”或“替换”命令实现对单元格的相应操作\"]', '2', '5');
INSERT INTO `questions` VALUES ('33', '关于计算机系统的技术指标，正确的说法是( )', '[0,1,0,1]', '[\"A、字长的长短只影响计算机的精度，计算机的速度快慢与字长无关\",\"B、系统时钟的快慢在很大程度上决定了计算机的运算速度 \",\"C、存储器的容量以位(bn)为基本单位来表示 \",\"D、存储容量单位的换算关系是1024，例如1MB=1024KB \"]', '2', '5');
INSERT INTO `questions` VALUES ('34', '在Ｅxcel中可以使用DATEDIF(  ) 函数计算', '[1,1,1,1]', '[\"A、年数\",\"B、月数\",\"C、日数\",\"D、年龄\"]', '2', '5');
INSERT INTO `questions` VALUES ('35', '在PowerPoint 2003中，下列有关复制幻灯片的说法，正确的是(  )', '[0,1,1,1]', '[\"A、可以在演示文稿内使用幻灯片副本\",\"B、可以使用、复制、和、粘贴、命令\",\"C、选定幻灯片后选择、插入、菜单中的、幻灯片副本、命令 \",\"D、可以在浏览视图中按住Shift键，并拖动幻灯片\"]', '2', '5');
INSERT INTO `questions` VALUES ('36', '有关“保存”和“另存为”命令说法正确的是（ ）(Excel)', '[1,1,0,1]', '[\"A、“保存”可以用来保存文件\",\"B、“另存为”命令也可以用来保存文件\",\"C、“保存”将会改变文件的名字\",\"D、“另存为”命令可以重新保存在新的文件里\"]', '2', '5');
INSERT INTO `questions` VALUES ('37', '要选中区域A3:B4,以下选项中正确的有（ ）(Excel) ', '[1,0,1,1]', '[\"A、A3,SHEFT+B4 \",\"B、A3,CTRL+B4 \",\"C、A3_A4_B4_A3\",\"D、CTRL+A4,CTRL+B3,CTRL+B4 \"]', '2', '5');
INSERT INTO `questions` VALUES ('38', '通过（ ）操作可以复制工作表 (Excel) ', '[0,1,1,1]', '[\"A、选中需要复制的工作表标签左击\",\"B、选中需要复制的工作表标签右击\",\"C、从弹出的菜单中选择“移动或复制工作表”命令，打开“移动或复制工作表”对话框\",\"D、从弹出的菜单中选择“建立副本”复选框，单击确定\"]', '2', '5');
INSERT INTO `questions` VALUES ('39', '防火墙的类型包括( )', '[1,1,0,1]', '[\"A、数据包过滤\",\"B、应用级网关\",\"C、网关\",\"D、复合型防火墙\"]', '2', '5');
INSERT INTO `questions` VALUES ('40', 'Excel 中，设置某单元格中的数据格式，应使用（ ）', '2', '[\'A、“插入”菜单中的“单元格”命令\', \'B、“格式”菜单中的“单元格”命令\', \'C、“数据”菜单 \', \'D、“编辑”菜单 \']', '1', '4');
INSERT INTO `questions` VALUES ('41', 'PowerPoint2000中，下列关于幻灯片的说法中，正确的是( )', '3', '[\'A、有页眉和页脚\', \'B、有页眉，无页脚 \', \'C、无页眉，有页脚\', \'D、无页眉和页脚 \']', '1', '4');
INSERT INTO `questions` VALUES ('42', 'PowerPoint2000中，对幻灯片色彩进行调整时，不能进行（ ）幻灯片配色方案操作', '3', '[\'A、添加\', \'B、更改 \', \'C、剪切\', \'D、删除\']', '1', '4');
INSERT INTO `questions` VALUES ('43', 'PowerPoint2000中，当将视图方式切换到备注页视图方式时，其默认显示比例( ) ', '1', '[\'A、小于100%\', \'B、等于100% \', \'C、大于100%\', \'D、无默认显示比例 \']', '1', '4');
INSERT INTO `questions` VALUES ('44', 'PowerPoint中增加隐藏不常用菜单项的特性，要显示它们，应把鼠标指针移到( ）上 ', '1', '[\'A、菜单底部的双下箭头\', \'B、菜单顶部\', \'C、菜单底部 \', \'D、菜单顶部的双下箭头\']', '1', '4');
INSERT INTO `questions` VALUES ('45', 'Windows的目录结构采用的是（  ） ', '1', '[\'A、树形结构\', \'B、线形结构\', \'C、层次结构 \', \'D、网状结构\']', '1', '4');
INSERT INTO `questions` VALUES ('46', '下列有关操作系统的描述，错误的是（ ） ', '4', '[\'A、具有文件管理的功能\', \'B、使计算机方便使用\', \'C、协调计算机资源的使用 \', \'D、处理硬件故障 \']', '1', '4');
INSERT INTO `questions` VALUES ('47', '下列设备中，属于输出设备的是（ ）', '1', '[\'A、显示器\', \'B、键盘\', \'C、鼠标\', \'D、手字板\']', '1', '4');
INSERT INTO `questions` VALUES ('48', '使所有幻灯片上均出现“图片”字样的最好方法是( ) ', '3', '[\'A、逐张幻灯片输入该文字 \', \'B、在第一张幻灯片输入该文字后，按Shift键并在最后一张幻灯片上输入该文字 \', \'C、在幻灯片母版上输入该文字 \', \'D、在第一张幻灯片输入该文字后，按Ctrl键并在最后一张幻灯片上输入该文字\']', '1', '4');
INSERT INTO `questions` VALUES ('49', '在Excel工作表中，若选择某一区域的第一个单元格为D1，最后一个单元格为D5，则该区域正确的表示为（ ）', '3', '[\'A、D1-D5 \', \'B、D1，D5 \', \'C、D1：D5 \', \'D、D1&D5 \']', '1', '4');
INSERT INTO `questions` VALUES ('50', '在Excel工作表的单元格中计算一组数据后出现########，这是由于（  ）所致', '1', '[\'A、单元格显示宽度不够\', \'B、计算数据出错\', \'C、计算机公式出错 \', \'D、数据格式出错\']', '1', '4');
INSERT INTO `questions` VALUES ('51', '在Windows环境下，要设置屏幕保护，可在（ ）中进行', '3', '[\'A、文件管理器\', \'B、Windows设置程序\', \'C、控制面板 \', \'D、程序管理器 \']', '1', '4');
INSERT INTO `questions` VALUES ('52', '在word中，（ ）不能够通过“插入”→“图片”命令插入，以及通过控点调整大小', '4', '[\'A、剪贴画\', \'B、艺术字\', \'C、组织结构图\', \'D、视频\']', '1', '4');
INSERT INTO `questions` VALUES ('53', '在Word中，有关“自动更正”功能的叙述中，正确的是（ ）', '4', '[\'A、可以自动扩展任意缩写文字\', \'B、可以理解缩写文字，并进行翻译\', \'C、可以检查任何错误，并加以纠正 \', \'D、可以自动扩展定义过的缩写文字 \']', '1', '4');
INSERT INTO `questions` VALUES ('54', '在幻灯片浏览视图下，移动当前幻灯片到10号幻灯片后面的方法是（ ）', '2', '[\'A、按Shift键拖动当前幻灯片到目标位置 \', \'B、单击“剪切”按钮，单击10号幻灯片，再单击“粘贴”按钮 \', \'C、按Ctrl键拖动当前幻灯片到目标位置\', \'D、按A1t键拖动当前幻灯片到目标位置\']', '1', '4');
INSERT INTO `questions` VALUES ('55', '对计算机软件和硬件资源进行管理和控制的软件是（ ）', '4', '[\'A、文件管理程序\', \'B、输入输出管理程序\', \'C、命令处理程序 \', \'D、操作系统\']', '1', '4');
INSERT INTO `questions` VALUES ('56', '将十进制数139转换成的二进制数（ ） ', '3', '[ A、10001010 \', \'B、10001111 \', \'C、10001011 \', \'D、10001100 \']', '1', '4');
INSERT INTO `questions` VALUES ('57', '用高级语言编写的程序必须经过（ ）翻译成机器语言程序，计算机才能执行', '3', '[\'A、汇编语言 \', \'B、汇编程序\', \' C、编译程序 \', \'D、低级语言\']', '1', '4');
INSERT INTO `questions` VALUES ('58', '要在选定的幻灯片版式中输入文字，应该( )', '1', '[\'A、单击占位符，然后直接输入文字\', \'B、首先删除占位符中的文字，然后输入文字 \', \'C、选中幻灯片，直接输入文字 \', \'D、首先删除占位符，然后输入文字\']', '1', '4');
INSERT INTO `questions` VALUES ('59', '选取文本框内的全部文本，可以将光标置于文本框中，然后( ) ', '1', '[\'A、按Ctrl+A键\', \'B、连续按两下F1键\', \'C、按Ctrl+B键\', \'D、连续按两下F3键\']', '1', '4');
INSERT INTO `questions` VALUES ('60', 'Excel 2000提供的筛选功能包括___________和____________', '自动筛选，高级筛选', null, '3', '6');
INSERT INTO `questions` VALUES ('61', 'Office套装软件主要包括：____________、____________、____________、Outlook、Access、和FrontPage6个组件', 'Word，Excel，PowerPoint', null, '3', '9');
INSERT INTO `questions` VALUES ('62', 'windows是一个完全____________化的环境，其中最主要的____________设备或称交互工具是鼠标', '图形，定位 ', null, '3', '6');
INSERT INTO `questions` VALUES ('63', 'Windows的文件名中用“*”代表任意____________个字符，用“？”代表任意____________个字符', '多，某一', null, '3', '6');
INSERT INTO `questions` VALUES ('64', 'Word提供____________功能，查看实际打印的效果', '打印预览', null, '3', '3');
INSERT INTO `questions` VALUES ('65', '在Excel 2000工作表中，对数据库进行分类汇总之前，必须先对作为分类依据的字段进行____________操作', '排序', null, '3', '3');
INSERT INTO `questions` VALUES ('66', '在word 2000中，插入图片文件可分为____________、____________和____________3种方式', '插入，链接文件，插入和链接', null, '3', '9');
INSERT INTO `questions` VALUES ('67', '在word中，分节符只有在____________与大纲视图方式中才可见到，不能在____________方式及打印结果中见到', '普通视图，页面视图 ', null, '3', '6');
INSERT INTO `questions` VALUES ('68', '在word中，页眉和页脚的建立方法一样，都用____________菜单中的____________命令进行设置', '视图，页眉和页脚 ', null, '3', '6');
INSERT INTO `questions` VALUES ('69', '在Word文档中插入页码，则单击“____________”菜单中的“____________”命令设置', '插入，页码', null, '3', '6');
INSERT INTO `questions` VALUES ('70', '处理器管理最基本的功能是处理____________事件', '中断', null, '3', '3');
INSERT INTO `questions` VALUES ('71', '存储器一般可以分为___________存储器和____________存储器两种。主存储器又称____________', '主，辅助，内存', null, '3', '9');
INSERT INTO `questions` VALUES ('72', '微型计算机系统结构由____________、__________、____________、输入设备、输出设备五大部分组成', '运算器，控制器，存储器 ', null, '3', '9');
INSERT INTO `questions` VALUES ('73', '操作系统可以分成单用户、批处理、实时、____________、____________以及分布式操作系统', '分时，网络 ', null, '3', '6');
INSERT INTO `questions` VALUES ('74', '操作系统的功能由5个部分组成：处理器管理、存储器管理、____________管理、____________管理和作业管理', '设备，文件', null, '3', '6');
INSERT INTO `questions` VALUES ('75', '构成存储器的最小单位是____________，存储容量一般以____________为单位', '二进制位(bit)，字节(Byte)', null, '3', '6');
INSERT INTO `questions` VALUES ('76', '每个用户请求计算机系统完成的一个独立的操作称为____________', '作业', null, '3', '3');
INSERT INTO `questions` VALUES ('77', '窗口是Windows____________程序存在的基本方式，每一个窗口都代表一段运行的____________', '应用，程序', null, '3', '6');
INSERT INTO `questions` VALUES ('78', '要安装或卸除某个中文输入法，应先启动____________，再使用其中____________的功能', '控制面板，区域选项 ', null, '3', '6');
INSERT INTO `questions` VALUES ('79', '计算机系统一般有____________和____________两大系统组成', '硬件，软件', null, '3', '6');
INSERT INTO `questions` VALUES ('84', '设x=1，y=2，2x+y=', '3', '[\"1\",\"2\",\"3\",\"4\"]', '1', '25');
INSERT INTO `questions` VALUES ('85', 'abcd紧接着的之后的三个字母是什么', '[1,0,1,1]', '[\"e\",\"h\",\"f\",\"g\"]', '2', '25');
INSERT INTO `questions` VALUES ('86', '认真上课对吗', '1', null, '0', '25');
INSERT INTO `questions` VALUES ('87', '1+1=？', '2', null, '3', '25');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `user_id` int(255) NOT NULL auto_increment,
  `user` longtext,
  `password` longtext,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `studentID` USING BTREE (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '黑帆', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('2', '李念儿', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('3', '李灵黛', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('4', '李曼婷', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('5', '柳婵诗', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('6', '柳辰飞', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('7', '邹诗雨', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('8', '马梦涵', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('9', '凌霜华', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('10', '江城子', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('11', '韩千叶', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('12', '张碧萱', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('13', '王俊文', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('14', '张晓', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('15', '陈城', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('16', '罗雪怡', '*318A97B79A244462B853FC344402458373343CFF');
INSERT INTO `student` VALUES ('17', '猫', '*A4B6157319038724E3560894F7F932C8886EBFCF');

-- ----------------------------
-- Table structure for student_class
-- ----------------------------
DROP TABLE IF EXISTS `student_class`;
CREATE TABLE `student_class` (
  `class_id` int(255) default NULL,
  `student_id` int(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_class
-- ----------------------------
INSERT INTO `student_class` VALUES ('1', '1');
INSERT INTO `student_class` VALUES ('1', '2');
INSERT INTO `student_class` VALUES ('1', '3');
INSERT INTO `student_class` VALUES ('1', '4');
INSERT INTO `student_class` VALUES ('2', '5');
INSERT INTO `student_class` VALUES ('2', '6');
INSERT INTO `student_class` VALUES ('2', '7');
INSERT INTO `student_class` VALUES ('2', '8');
INSERT INTO `student_class` VALUES ('3', '9');
INSERT INTO `student_class` VALUES ('3', '10');
INSERT INTO `student_class` VALUES ('3', '11');
INSERT INTO `student_class` VALUES ('3', '12');
INSERT INTO `student_class` VALUES ('4', '13');
INSERT INTO `student_class` VALUES ('4', '14');
INSERT INTO `student_class` VALUES ('4', '15');
INSERT INTO `student_class` VALUES ('4', '16');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `id` int(255) default NULL,
  `name` longtext,
  `student_num` longtext,
  `sex` longtext,
  `class` int(255) default NULL,
  UNIQUE KEY `studentID` USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('1', '黑帆', '201801', '男', '1');
INSERT INTO `student_info` VALUES ('2', '李念儿', '201802', '女', '1');
INSERT INTO `student_info` VALUES ('3', '李灵黛', '201803', '女', '1');
INSERT INTO `student_info` VALUES ('4', '李曼婷', '201804', '女', '1');
INSERT INTO `student_info` VALUES ('5', '柳婵诗', '201805', '女', '2');
INSERT INTO `student_info` VALUES ('6', '柳辰飞', '201806', '男', '2');
INSERT INTO `student_info` VALUES ('7', '邹诗雨', '201807', '女', '2');
INSERT INTO `student_info` VALUES ('8', '马梦涵', '201808', '女', '2');
INSERT INTO `student_info` VALUES ('9', '凌霜华', '201809', '女', '3');
INSERT INTO `student_info` VALUES ('10', '江城子', '201810', '男', '3');
INSERT INTO `student_info` VALUES ('11', '韩千叶', '201811', '男', '3');
INSERT INTO `student_info` VALUES ('12', '张碧萱', '201812', '女', '3');
INSERT INTO `student_info` VALUES ('13', '王俊文', '201813', '男', '4');
INSERT INTO `student_info` VALUES ('14', '张晓', '201814', '男', '4');
INSERT INTO `student_info` VALUES ('15', '陈城', '201815', '男', '4');
INSERT INTO `student_info` VALUES ('16', '罗雪怡', '201816', '女', '4');
INSERT INTO `student_info` VALUES ('17', '猫', '123456', '女', '1');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `user_id` int(255) NOT NULL auto_increment,
  `user` longtext,
  `password` longtext,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '王丹', '*A4B6157319038724E3560894F7F932C8886EBFCF');
INSERT INTO `teacher` VALUES ('2', '陈晨', '*A4B6157319038724E3560894F7F932C8886EBFCF');
INSERT INTO `teacher` VALUES ('3', '3', '*00A51F3F48415C7D4E8908980D443C29C69B60C9');

-- ----------------------------
-- Table structure for test_paper
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
CREATE TABLE `test_paper` (
  `paper_id` int(255) NOT NULL auto_increment,
  `paper_name` longtext,
  `type` int(255) default NULL,
  `data` text,
  `time` longtext,
  PRIMARY KEY  (`paper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES ('1', '卷1', null, '[{\"type\":0,\"id\":[5, 11, 12, 17, 20]},{\"type\":1,\"id\":[41, 46, 50, 54, 57]},{\"type\":2,\"id\":[22, 27, 31, 34, 37]},{\"type\":3,\"id\":[64, 71, 73, 78, 79]}]', '1546527406414');
INSERT INTO `test_paper` VALUES ('2', '卷2', null, '[{\"type\":0,\"id\":[2, 3, 4, 7, 13]},{\"type\":1,\"id\":[40, 45, 47, 49, 53]},{\"type\":2,\"id\": [21, 26, 28, 30]},{\"type\":3,\"id\":[66, 70, 74, 75, 77]}]', '1546527406414');
INSERT INTO `test_paper` VALUES ('3', '卷3', null, '[{\"type\":0,\"id\":[9, 14, 16, 18, 19]},{\"type\":1,\"id\": [42, 43, 52, 55, 59]},{\"type\":2,\"id\":[23, 24, 33, 35, 39]},{\"type\":3,\"id\":[60, 63, 65, 68, 72]}]', '1546527406414');
INSERT INTO `test_paper` VALUES ('4', '卷4', null, '[{\"type\":0,\"id\":[1, 6, 8, 10, 15]},{\"type\":1,\"id\": [44, 48, 51, 56, 58]},{\"type\":2,\"id\":[25, 29, 32, 36, 38]},{\"type\":3,\"id\":[61, 62, 67, 69, 76]}]', '1546527406414');
INSERT INTO `test_paper` VALUES ('15', '卷5', '1', '[{\"type\":0,\"id\":[86]},{\"type\":1,\"id\":[84]},{\"type\":2,\"id\":[85]},{\"type\":3,\"id\":[87]}]', '1546537198262');

-- ----------------------------
-- Table structure for test_result
-- ----------------------------
DROP TABLE IF EXISTS `test_result`;
CREATE TABLE `test_result` (
  `paper_id` int(255) default NULL,
  `student_id` int(255) default NULL,
  `score` int(255) default NULL,
  `class_id` int(255) default NULL,
  `time` longtext collate utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of test_result
-- ----------------------------
INSERT INTO `test_result` VALUES ('4', '1', '83', '1', null);
INSERT INTO `test_result` VALUES ('3', '2', '94', '1', null);
INSERT INTO `test_result` VALUES ('1', '3', '57', '1', null);
INSERT INTO `test_result` VALUES ('3', '4', '79', '1', null);
INSERT INTO `test_result` VALUES ('2', '5', '97', '2', null);
INSERT INTO `test_result` VALUES ('1', '6', '88', '2', null);
INSERT INTO `test_result` VALUES ('4', '7', '81', '2', null);
INSERT INTO `test_result` VALUES ('3', '8', '60', '2', null);
INSERT INTO `test_result` VALUES ('3', '9', '64', '3', null);
INSERT INTO `test_result` VALUES ('4', '10', '68', '3', null);
INSERT INTO `test_result` VALUES ('1', '11', '76', '3', null);
INSERT INTO `test_result` VALUES ('1', '12', '92', '3', null);
INSERT INTO `test_result` VALUES ('2', '13', '53', '4', null);
INSERT INTO `test_result` VALUES ('2', '14', '72', '4', null);
INSERT INTO `test_result` VALUES ('4', '15', '91', '4', null);
INSERT INTO `test_result` VALUES ('2', '16', '85', '4', null);
INSERT INTO `test_result` VALUES ('1', '17', '8', '-1', '1546531425919');
INSERT INTO `test_result` VALUES ('13', '17', '0', '-1', '1546536521910');
INSERT INTO `test_result` VALUES ('13', '17', '0', '-1', '1546536756236');
INSERT INTO `test_result` VALUES ('15', '17', '75', '-1', '1546537252291');
