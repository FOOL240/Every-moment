/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.22-log : Database - moment_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`moment_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `moment_db`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL AUTO_INCREMENT,
  `Aname` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`Aid`,`Aname`,`password`) values (1,'admin','123456');

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `Bid` varchar(12) NOT NULL COMMENT '品牌id',
  `Bname` varchar(20) NOT NULL COMMENT '品牌名称',
  `Bimg` varchar(255) NOT NULL COMMENT '品牌图标',
  `Bcount` varchar(255) DEFAULT NULL COMMENT '品牌描述',
  PRIMARY KEY (`Bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

insert  into `brand`(`Bid`,`Bname`,`Bimg`,`Bcount`) values ('1','百达翡丽','assets/images/2nd-day.jpg','百达翡丽是一家始于1839年的瑞士著名钟表品牌，世界十大名表之首。是瑞士仅存的真正的独立制表商之一，由头至尾都是自己生产，而训练一名制表师则需要10年时间'),('2','江诗丹顿','assets/images/mih-jeans.jpg','江诗丹顿（Vacheron Constantin），世界最著名钟表品牌之一，1755年创立于瑞士日内瓦，为世界最古老最早的钟表制造厂，也是世界最著名的表厂之一。'),('3','欧米茄','assets/images/g-star-raw.jpg','欧米茄（OMEGA）是瑞士著名钟表制造商，英文名OMEGA，以希腊字母“Ω”命名。欧米茄由路易士·勃兰特（Louis Brandt）创始于1848 年。'),('4','劳力士','assets/images/weekday1.jpg','劳力士（Rolex）是瑞士著名的手表制造商，在世界主要的大都市有24个规模颇大的服务中心，年产手表45万只左右，成为市场占有量甚大的名牌手表之一。');

/*Table structure for table `checkout` */

DROP TABLE IF EXISTS `checkout`;

CREATE TABLE `checkout` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `Ppicture` varchar(765) DEFAULT NULL,
  `Pname` varchar(150) DEFAULT NULL,
  `ModelNum` int(11) DEFAULT NULL,
  `psize` int(11) DEFAULT NULL,
  `Pnumber` int(11) DEFAULT NULL,
  `Pdescribe` varchar(765) DEFAULT NULL,
  `Pprice` int(11) DEFAULT NULL,
  `createBy` int(11) DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifyBy` int(11) DEFAULT NULL,
  `modifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `checkout` */

insert  into `checkout`(`pid`,`Ppicture`,`Pname`,`ModelNum`,`psize`,`Pnumber`,`Pdescribe`,`Pprice`,`createBy`,`CreateTime`,`modifyBy`,`modifyTime`,`orderId`,`status`) values (8,'assets/images/q01.png','TRUE THINLINE蓝羽限量腕表',NULL,34,1,NULL,18000,NULL,'2020-07-09 18:04:47',NULL,'2020-07-07 10:51:57',1,1),(10,'assets/images/u01.png','TRUE THINLINE陶瓷腕表',NULL,34,1,NULL,14900,NULL,'2020-07-09 17:56:08',NULL,'2020-07-07 10:52:22',1,0),(11,'assets/images/r01.png','TRUE THINLINE星钻版腕表',NULL,34,1,NULL,18000,NULL,'2020-07-09 18:52:10',NULL,'2020-07-09 18:52:10',20,0);

/*Table structure for table `new` */

DROP TABLE IF EXISTS `new`;

CREATE TABLE `new` (
  `nid` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻id',
  `title` varchar(50) NOT NULL COMMENT '新闻标题',
  `content` varchar(225) NOT NULL COMMENT '新闻内容',
  `nimg` varchar(225) NOT NULL COMMENT '新闻图片',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `new` */

insert  into `new`(`nid`,`title`,`content`,`nimg`) values (1,'江诗丹顿 “One of Not Many卓尔不群”限时体验店 以全新视觉设计精彩亮相上海恒隆广场','[腕表之家 品牌新闻]2020年7月2日，上海，为进一步彰显别具一格的品牌世界和“One of Not Many卓尔不群”的传播理念，瑞士高级钟表制造商江诗丹顿以全新视觉设计，于2020年7月2日至31日首次在上海地标性高端购物中心——恒隆广场精彩呈献“One of Not Many卓尔不群”限时体验店。','assets/images/new1.jpg'),(2,'欧米茄携手刘诗诗发布 “我的选择”星座系列腕表全新广告大片','[腕表之家 品牌新闻]瑞士著名专业制表品牌欧米茄 (OMEGA) 发布星座系列女士腕表2020年全新广告大片，由品牌名人大使刘诗诗倾情演绎，全新呈现了星座系列女士腕表的独特气质与典雅风范。','assets/images/new2.jpg'),(3,'百达翡丽“降维”出新款运动钢表！是“眼红”劳力士吗？','世界顶奢腕表品牌百达翡丽为了庆祝新制表大楼普朗莱乌特竣工，推出了一款“蓝盘三针钢表”，型号为6007A-001。虽然目前百达翡丽官方并没有公布这款腕表在国内的公价，但参考鹦鹉螺5711基础钢款的公价，笔者预测6007A-001的公价应该在20万元左右。','assets/images/new3.jpg'),(4,'爱马仕推出两款Arceau Canadian Wild限量腕表','[腕表之家 品牌新闻] 1978年由Henri d’Origny设计的爱马仕Arceau系列腕表，以圆形表壳搭配不对称表耳，散发隽永魅力。如今，Arceau系列新增两款白色金镶钻腕表，利用表盘捕捉大自然的野性气息，各限量发行24枚。','assets/images/new4.jpg');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `Oid` int(11) DEFAULT NULL,
  `Sname` varchar(33) DEFAULT NULL,
  `Sphone` varchar(45) DEFAULT NULL,
  `SAddress` varchar(765) DEFAULT NULL,
  `OrderNum` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`Oid`,`Sname`,`Sphone`,`SAddress`,`OrderNum`) values (1,'1','张三','四川省成都市','1524685754');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `Pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `Pname` varchar(100) NOT NULL COMMENT '商品名称',
  `Images` varchar(255) NOT NULL COMMENT '图片',
  `count` int(11) NOT NULL COMMENT '数量',
  `describe` varchar(600) NOT NULL COMMENT '商品描述',
  `Psize` varchar(20) NOT NULL COMMENT '商品尺寸',
  `Price` int(11) NOT NULL COMMENT '价格',
  PRIMARY KEY (`Pid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`Pid`,`Pname`,`Images`,`count`,`describe`,`Psize`,`Price`) values (6,'TRUE THINLINE星钻版腕表','assets/images/r01.png',0,'Rado瑞士雷达表与屡获殊荣的西班牙设计师Inma Bermúdez将奢华材质和迷人元素融入Rado瑞士雷达表真薄系列之中，联袂呈献Rado瑞士雷达表真薄系列星钻腕表。该款腕表采用多刻面蓝宝石玻璃表镜切割技术，并独具慧眼地运用光吸收与光线折射反射的原理，于品牌突破性的极薄表壳上营造出幻妙的深邃之感。','',18000),(7,'TRUE THINLINE真薄系列腕表','assets/images/s01.png',0,'受大自然和Rado瑞士雷达表合作伙伴，意大利大型花园组织Grandi Giardini Italiani的灵感启发，Rado瑞士雷达表True Thinline真薄系列自然系的腕表融合了Rado瑞士雷达表True Thinline真薄系列的所有优异特性。Rado瑞士雷达True Thinline真薄系列自然系腕表的三款腕表分别对应三种自然界元素，即大地、海洋和树叶，以三种色彩彰显Grandi Giardini Italiani的标识，并搭配三种创新的全新表盘设计。','',15700),(8,'TRUE THINLINE真薄系列腕表','assets/images/x01.png',0,'Rado瑞士雷达表True Thinline真薄系列可谓是一款Rado瑞士雷达表的经典时计。这一系列的石英表款于2011年首次推出，是Rado瑞士雷达表迄今为止最纤薄的腕表系列之一，亦是品牌最早采用突破性的一体成型表壳，且以全高科技陶瓷打造而成的腕表系列。超凡轻盈、不易磨损且佩戴舒适，该款腕表的设计经得起时间的考验。','',15700),(9,'TRUE THINLINE陶瓷腕表','assets/images/u01.png',0,'绿色是植物的颜色，代表着生命。 英伦绿的色调略带淡淡的蓝色，显得静谧、清爽且内敛。英伦绿取自《纯粹主义色彩集》中三种英伦绿色调之一，一如维罗那绿般精巧内敛。','',14900),(10,'TRUE THINLINE真薄系列腕表','assets/images/v01.png',0,'Rado瑞士雷达表True Thinline真薄系列可谓是一款Rado瑞士雷达表的经典时计。这一系列的石英表款于2011年首次推出，是Rado瑞士雷达表迄今为止最纤薄的腕表系列之一，亦是品牌最早采用突破性的一体成型表壳，且以全高科技陶瓷打造而成的腕表系列。超凡轻盈、不易磨损且佩戴舒适，该款腕表的设计经得起时间的考验。','',17300),(12,'TRUE THINLINE自动机械腕表','assets/images/y01.png',100,'方形高科技陶瓷腕表是Rado瑞士雷达表得以成名的标志性表款。 True真系列真我腕表重塑经典，为这一品牌代表作赋予了全新的风貌。作为品牌首款采用方形一体成型高科技陶瓷表壳的腕表，True真系列真我腕表具有轻盈、耐磨的优良特性且佩戴舒适。Rado瑞士雷达表True真系列真我镶钻腕表更以强烈的设计感和独树一帜的风格引领着未来腕间风潮。','100',15600);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `Uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `Uname` varchar(20) NOT NULL COMMENT '用户账号',
  `Password` varchar(20) NOT NULL COMMENT '密码',
  `Email` varchar(255) NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`Uid`,`Uname`,`Password`,`Email`) values (1,'贝壳女孩','19911007','199110007@qq.com'),(2,'admin','123456','admin@qq.com'),(3,'Everymoment','123456','everymoment@163.com'),(5,'test','123456','test@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
