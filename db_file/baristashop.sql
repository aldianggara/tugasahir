/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 10.4.21-MariaDB : Database - baristashoes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`baristashop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `baristashop`;

/*Table structure for table `tb_barang` */

DROP TABLE IF EXISTS `tb_barang`;

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL AUTO_INCREMENT,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_brg`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `tb_barang` */

insert  into `tb_barang`(`id_brg`,`nama_brg`,`keterangan`,`kategori`,`harga`,`stok`,`gambar`) values 
(1,'All Stars Chuck 70s','Sepatu All Stars ','Sepatu Pria',599999,9,'70s1.png'),
(2,'Vans Old Skool','Sepatu Sneakers Vans','Sepatu Pria',299999,14,'vans_old_skool.png'),
(3,'Nike Air Jordan Pink','Sepatu Nike','Sepatu Wanita',699999,15,'nike_pink.png'),
(13,'Tali Sepatu Hitam','Tali Sepatu ','Aksesoris',14999,15,'Tali_sepatu_hitam.png'),
(17,'kaos kaki loreng','kaos kaki','Aksesoris',24999,15,'kaos_kaki_loreng.png'),
(18,'All Stars Chuck 70s ','Sepatu All Stars ','Sepatu Wanita',599999,10,'All_Star_Pink.png'),
(19,'Adidas Continental','Sepatu Adidas','Sepatu Wanita',499999,9,'Adidas_continental_80s.png'),
(20,'Adidas Runing','Sepatu Adidas','Sepatu Wanita',559999,15,'Adidas_Runing.png'),
(21,'Adidas Continental 80s','Sepatu Adidas','Sepatu Pria',499999,10,'continen_80s.png'),
(22,'Nike Cortez','Sepatu Nike','Sepatu Pria',599999,10,'Cortez.png'),
(23,'Insole Sepatu','Insole','Aksesoris',349999,50,'insole_sepatu.png'),
(24,'Das Salen Spot','Pembersih Sepatu','Aksesoris',69999,50,'pembersih_sepatu.png'),
(25,'Gabino Casual','Sepatu Gabino','Sepatu Anak',99999,25,'gabino.png'),
(26,'New Balance Canvas','Sepatu New Balance','Sepatu Anak',129999,25,'NB_Cnvas.png'),
(27,'N&B Canvas Karakter','Sepatu New Balance','Sepatu Anak',129999,20,'canvas_karakter.png'),
(28,'Average Sport LED','Sepatu Average','Sepatu Anak',149999,15,'sport_led.png'),
(29,'Skipping Role','Skipping Role','Peralatan Olahraga',14999,10,'skiping.png'),
(30,'Dumbell','Dumbell','Peralatan Olahraga',149999,20,'Dumbell.png'),
(31,'Matras Fortble','Matras','Peralatan Olahraga',129999,15,'Matras_Fortable.png'),
(32,'Sit-UF Bar','Bar Sit-UF','Peralatan Olahraga',99999,20,'Sit-uf_Bars.png');

/*Table structure for table `tb_invoice` */

DROP TABLE IF EXISTS `tb_invoice`;

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tb_invoice` */

insert  into `tb_invoice`(`id`,`nama`,`alamat`,`tgl_pesan`,`batas_bayar`) values 
(1,'','','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'','','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,'','','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,'','','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(6,'','','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `tb_pesanan` */

DROP TABLE IF EXISTS `tb_pesanan`;

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pesanan` */

insert  into `tb_pesanan`(`id`,`id_invoice`,`id_brg`,`nama_brg`,`jumlah`,`harga`,`pilihan`) values 
(1,1,3,'Blazer',1,500000,''),
(2,2,1,'All Stars',1,300000,''),
(3,2,4,'Nike Casual',1,500000,''),
(4,2,2,'Vans Sneaker',1,300000,''),
(5,4,4,'Nike Casual',1,500000,''),
(6,4,1,'All Stars',1,300000,''),
(7,5,15,'Bola',1,400000,''),
(8,6,2,'Vans Sneaker',1,300000,'');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`nama`,`username`,`password`,`role_id`) values 
(1,'Administrator','admin','123',1),
(2,'Pengunjung','user','user',2),
(8,'han','han','han',2),
(9,'han','han','han',2);

/* Trigger structure for table `tb_pesanan` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_stok_barang` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `update_stok_barang` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
UPDATE tb_barang SET stok = stok-NEW.jumlah
WHERE id_brg=NEW.id_brg;
END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
