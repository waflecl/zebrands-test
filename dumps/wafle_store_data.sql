-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: wafle_store
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$5J5SjkMobsTxnWQBI67Pbg$FIQs8Rp9/Yo2vo191VLmjozoeHrlcD7GAEh0lFkcNbk=','2021-04-18 21:04:12.564772',1,'wafle','','','ezepeda@wafle.cl',1,1,'2021-04-17 18:46:01.924705');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-04-17 18:47:57.629533','2','admin',3,'',4,1),(2,'2021-04-17 21:07:56.200800','1','Monitors',1,'[{\"added\": {}}]',7,1),(3,'2021-04-17 21:08:41.678906','2','Storage',1,'[{\"added\": {}}]',7,1),(4,'2021-04-17 21:23:26.609875','1','Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black',1,'[{\"added\": {}}]',8,1),(5,'2021-04-18 01:00:29.684752','1','Monitors',2,'[]',7,1),(6,'2021-04-18 01:00:37.400711','2','Storage',2,'[]',7,1),(7,'2021-04-18 01:00:43.070780','1','Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black',2,'[]',8,1),(8,'2021-04-18 04:23:13.410124','1','Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(9,'2021-04-18 04:42:00.444358','1','Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(10,'2021-04-18 14:39:07.053118','3','Joysticks',1,'[{\"added\": {}}]',7,1),(11,'2021-04-18 14:40:21.487353','2','Microsoft control xbox wireless with cable USB-C 2.7mts',1,'[{\"added\": {}}]',8,1),(12,'2021-04-18 14:50:11.372807','3','Unidad SSD 480GB WD Green M.2 2280, SATA III 6GB/s, Lectura 545 MB/s',1,'[{\"added\": {}}]',8,1),(13,'2021-04-18 15:38:02.668350','4','Processors',1,'[{\"added\": {}}]',7,1),(14,'2021-04-18 15:38:43.757999','5','Memory RAM',1,'[{\"added\": {}}]',7,1),(15,'2021-04-18 15:47:34.608337','4','LG Monitor LED 23.6\" 24L600F-B',1,'[{\"added\": {}}]',8,1),(16,'2021-04-18 16:41:36.470385','4','LG Monitor LED 23.6\" 24L600F-B',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'Monitors','Monitors','2021-04-17 21:07:56.200083','2021-04-18 01:00:29.683741',NULL,'monitors'),(2,'Storage','Storage devices','2021-04-17 21:08:41.678396','2021-04-18 01:00:37.399711',NULL,'storage'),(3,'Joysticks','Game controller','2021-04-18 14:39:07.045649','2021-04-18 14:39:07.045677',NULL,'joysticks'),(4,'Processors','CPU Processors','2021-04-18 15:38:02.667642','2021-04-18 15:38:02.667672',NULL,'processors'),(5,'Memory RAM','RAM Modules','2021-04-18 15:38:43.757416','2021-04-18 15:38:43.757446',NULL,'memory-ram');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `store_orderproduct`
--

LOCK TABLES `store_orderproduct` WRITE;
/*!40000 ALTER TABLE `store_orderproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_orderproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black','MT759LGE97','LG','78667','uploads/20MK400H_08032018_Z01.jpg','2021-04-17 21:23:26.606410','2021-04-18 04:42:00.440530','<table class=\"table table-bordered\">\r\n<tbody>\r\n<tr>\r\n<th class=\"bg-webstore fg-webstore\">Característica</th>\r\n<th class=\"bg-webstore fg-webstore\">Valor</th>\r\n</tr>\r\n<tr>\r\n<td>Diagonal de la pantalla</td>\r\n<td>50,8 cm (20\")</td>\r\n</tr>\r\n<tr>\r\n<td>Brillo de la pantalla (típico)</td>\r\n<td>300 cd / m²</td>\r\n</tr>\r\n<tr>\r\n<td>Resolución de la pantalla</td>\r\n<td>1366 x 768 Pixeles</td>\r\n</tr>\r\n<tr>\r\n<td>Relación de aspecto nativa</td>\r\n<td>16:9</td>\r\n</tr>\r\n<tr>\r\n<td>Tiempo de respuesta</td>\r\n<td>2 ms</td>\r\n</tr>\r\n<tr>\r\n<td>Tipo de pantalla</td>\r\n<td>TN</td>\r\n</tr>\r\n<tr>\r\n<td>Tipo HD</td>\r\n<td>WXGA</td>\r\n</tr>\r\n<tr>\r\n<td>Tecnología de visualización</td>\r\n<td>LED</td>\r\n</tr>\r\n<tr>\r\n<td>Forma de la pantalla</td>\r\n<td>Plana</td>\r\n</tr>\r\n<tr>\r\n<td>Razón de contraste (típica)</td>\r\n<td>1000:1</td>\r\n</tr>\r\n<tr>\r\n<td>Máxima velocidad de actualización</td>\r\n<td>60 Hz</td>\r\n</tr>\r\n<tr>\r\n<td>Ángulo de visión, horizontal</td>\r\n<td>170°</td>\r\n</tr>\r\n<tr>\r\n<td>Ángulo de visión, vertical</td>\r\n<td>160°</td>\r\n</tr>\r\n<tr>\r\n<td>Número de colores de la pantalla</td>\r\n<td>16,78 millones de colores</td>\r\n</tr>\r\n<tr>\r\n<td>Superficie de la pantalla</td>\r\n<td>Mate</td>\r\n</tr>\r\n<tr>\r\n<td>Formato de vídeo soportado</td>\r\n<td>1080p</td>\r\n</tr>\r\n<tr>\r\n<td>Nombre comercial de la relación de contraste dinámico</td>\r\n<td>Mega Contrast</td>\r\n</tr>\r\n<tr>\r\n<td>Tamaño de pixel</td>\r\n<td>0,31125 x 0,31125 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Intervalo de escaneado horizontal</td>\r\n<td>30 - 89 kHz</td>\r\n</tr>\r\n<tr>\r\n<td>Intervalo de escaneado vertical</td>\r\n<td>56 - 75 Hz</td>\r\n</tr>\r\n<tr>\r\n<td>Gama de colores</td>\r\n<td>72%</td>\r\n</tr>\r\n<tr>\r\n<td>DDC / CI</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>AMD FreeSync</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Tecnología Flicker free (reduce el parpadeo de la pantalla)</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Certificado Energy Star</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Conformidad EPEAT</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Color del producto</td>\r\n<td>Negro</td>\r\n</tr>\r\n<tr>\r\n<td>Cantidad de puertos VGA (D-Sub)</td>\r\n<td>1</td>\r\n</tr>\r\n<tr>\r\n<td>Entrada de audio</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Salida de auriculares</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Número de puertos HDMI</td>\r\n<td>1</td>\r\n</tr>\r\n<tr>\r\n<td>Salida de audio</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>HDCP</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>montaje VESA</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Interfaz de panel de montaje</td>\r\n<td>100 x 100 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Ajuste de la inclinación</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Ángulo de inclinación</td>\r\n<td>-5 - 20°</td>\r\n</tr>\r\n<tr>\r\n<td>Exhibición en pantalla (OSD)</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Número de lenguajes OSD</td>\r\n<td>18</td>\r\n</tr>\r\n<tr>\r\n<td>Conectar y usar (Plug and Play)</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo energético</td>\r\n<td>27 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (inactivo)</td>\r\n<td>0,3 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (apagado)</td>\r\n<td>0,3 W</td>\r\n</tr>\r\n<tr>\r\n<td>Voltaje de entrada AC</td>\r\n<td>100 - 240 V</td>\r\n</tr>\r\n<tr>\r\n<td>Frecuencia de entrada AC</td>\r\n<td>50 - 60 Hz</td>\r\n</tr>\r\n<tr>\r\n<td>Ancho</td>\r\n<td>625,6 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Profundidad</td>\r\n<td>44 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Altura</td>\r\n<td>375,2 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Peso</td>\r\n<td>4,2 kg</td>\r\n</tr>\r\n<tr>\r\n<td>Ancho del dispositivo (con soporte)</td>\r\n<td>625,6 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Profundidad dispositivo (con soporte)</td>\r\n<td>204,1 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Altura del dispositivo (con soporte)</td>\r\n<td>468,7 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Peso (con soporte)</td>\r\n<td>4,6 kg</td>\r\n</tr>\r\n<tr>\r\n<td>Stand incluido</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Cables incluidos</td>\r\n<td>HDMI</td>\r\n</tr>\r\n<tr>\r\n<td>Manual de usuario</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Ancho del paquete</td>\r\n<td>709 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Profundidad del paquete</td>\r\n<td>459 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Altura del paquete</td>\r\n<td>159 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Peso del paquete</td>\r\n<td>6,1 kg</td>\r\n</tr>\r\n</tbody>\r\n</table>','monitor-lg-20mk400h-tn-led-195-1366x768-vga-hdmi-black'),(2,'Microsoft control xbox wireless with cable USB-C 2.7mts','MM952MSX15','Microsoft','51990','uploads/1V8-00007-200.jpg','2021-04-18 14:40:21.482767','2021-04-18 14:40:21.482794','ControlControl inalámbrico Xbox + cable USB-C\r\n\r\nVive la experiencia del diseño modernizado del control inalámbrico de Xbox, que presenta superficies esculpidas y una geometría refinada\r\npara una mayor comodidad durante el juego. Juega de forma inalámbrica o usa el cable USB-C incluido de 2.7 metros para disfrutar de una\r\nexperiencia de juego con cable. Mantén siempre el objetivo con el pad direccional híbrido y el agarre texturizado en los gatillos, en los botones\r\nsuperiores y en la carcasa trasera.\r\nUsa la aplicación Accesorios de Xbox para reasignar botones y crear perfiles de control personalizados para tus juegos favoritos. Empareja y\r\n\r\nalterna rápidamente con Xbox Series X, Xbox One, PC con Windows 10,celulares o tabletas Android y iOS. Conecta cualquier auricular\r\ncompatible con la entrada de audio de 3.5 mm\r\n\r\nCaracterísticas\r\n<ul>\r\n 	<li><strong>Eleva tu juego</strong>\r\nVive la experiencia del diseño modernizado del control inalámbrico de Xbox, que presenta superficies esculpidas\r\ny una geometría refinada para una mayor comodidad y control con el menor esfuerzo durante el juego.</li>\r\n 	<li><strong>Conéctate y juega</strong>\r\nJuega de forma inalámbrica o usa el cable USB-C incluido de 2.7 metros para disfrutar de una experiencia de juego con cable.</li>\r\n 	<li><strong>Perfiles de control personalizados</strong>\r\nUsa la aplicación Accesorios de Xbox para reasignar botones y crear perfiles de control personalizados para tus juegos favoritos.*\r\nAdemás, conecta cualquier auricular compatible con la entrada de audio de 3.5 mm.*</li>\r\n 	<li><strong>Mantén siempre tu objetivo</strong>\r\nMantén siempre el objetivo con el pad direccional híbrido y el agarre texturizado en los gatillos, en los botones superiores\r\ny en la carcasa trasera.</li>\r\n 	<li>Empareja y alterna fácilmente\r\nEmpareja y alterna rápidamente con Xbox Series X, Xbox One, PC con Windows 10, celulares o tabletas Android y iOS.*</li>\r\n</ul>\r\n&nbsp;','microsoft-control-xbox-wireless-with-cable-usb-c-27mts'),(3,'Unidad SSD 480GB WD Green M.2 2280, SATA III 6GB/s, Lectura 545 MB/s','DH962WDC13','Western Digital','52990','uploads/1550867361415-62335655_3335112772.jpg','2021-04-18 14:50:11.370163','2021-04-18 14:50:11.370187','<table class=\"table table-bordered\">\r\n<tbody>\r\n<tr>\r\n<th class=\"bg-webstore fg-webstore\">Característica</th>\r\n<th class=\"bg-webstore fg-webstore\">Valor</th>\r\n</tr>\r\n<tr>\r\n<td>Factor de forma de disco SSD</td>\r\n<td>M.2</td>\r\n</tr>\r\n<tr>\r\n<td>SDD, capacidad</td>\r\n<td>480 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Interfaz</td>\r\n<td>Serial ATA III</td>\r\n</tr>\r\n<tr>\r\n<td>Tipo de memoria</td>\r\n<td>SLC</td>\r\n</tr>\r\n<tr>\r\n<td>NVMe</td>\r\n<td>No</td>\r\n</tr>\r\n<tr>\r\n<td>Componente para</td>\r\n<td>PC/ordenador portátil</td>\r\n</tr>\r\n<tr>\r\n<td>Velocidad de lectura</td>\r\n<td>545 MB/s</td>\r\n</tr>\r\n<tr>\r\n<td>Velocidad de transferencia de datos</td>\r\n<td>6 Gbit/s</td>\r\n</tr>\r\n<tr>\r\n<td>Tiempo medio entre fallos</td>\r\n<td>1000000 h</td>\r\n</tr>\r\n<tr>\r\n<td>Sistema operativo Windows soportado</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Certificación</td>\r\n<td>FCC, UL, TUV, KC, BSMI, VCCI</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (lectura)</td>\r\n<td>2,8 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (escritura)</td>\r\n<td>2,8 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (promedio)</td>\r\n<td>0,08 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo energético (en suspensión)</td>\r\n<td>0,03 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de potencia DevSlp (modo sueño)</td>\r\n<td>10 mW</td>\r\n</tr>\r\n<tr>\r\n<td>Intervalo de temperatura operativa</td>\r\n<td>0 - 70 °C</td>\r\n</tr>\r\n<tr>\r\n<td>Intervalo de temperatura de almacenaje</td>\r\n<td>-55 - 85 °C</td>\r\n</tr>\r\n<tr>\r\n<td>Vibración operativa</td>\r\n<td>5 G</td>\r\n</tr>\r\n<tr>\r\n<td>Vibración no operativa</td>\r\n<td>4,9 G</td>\r\n</tr>\r\n<tr>\r\n<td>Golpes en funcionamiento</td>\r\n<td>1500 G</td>\r\n</tr>\r\n<tr>\r\n<td>Ancho</td>\r\n<td>80 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Profundidad</td>\r\n<td>22 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Altura</td>\r\n<td>1,5 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Peso</td>\r\n<td>6,52 g</td>\r\n</tr>\r\n<tr>\r\n<td>Color del producto</td>\r\n<td>Negro, Azul</td>\r\n</tr>\r\n<tr>\r\n<td>Interfaces de disco de estado sólido</td>\r\n<td>SATA3</td>\r\n</tr>\r\n<tr>\r\n<td>Tamaño</td>\r\n<td>2.5</td>\r\n</tr>\r\n<tr>\r\n<td>Incluye kit para desktop</td>\r\n<td>No</td>\r\n</tr>\r\n</tbody>\r\n</table>','unidad-ssd-480gb-wd-green-m2-2280-sata-iii-6gbs-lectura-545-mbs'),(4,'LG Monitor LED 23.6\" 24L600F-B','MT000LGE35','LG','247990','uploads/LG_Electronics-44708341-medium_01-mobile_qd9yhm6.jpg','2021-04-18 15:47:34.606000','2021-04-18 16:41:36.465774','<table class=\"MuiTable-root\">\r\n<tbody class=\"MuiTableBody-root\">\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Descripción</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Monitor LED 23.6\" 24L600F-B</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Producto</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Monitor</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Marca</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">LG</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Modelo</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">24GL600F-B</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Color</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Negro</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Tamaño de la pantalla</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">23.6\"</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Resolucion</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Full HD 1920x1080</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Tecnologia</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">LED</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Entradas USB</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">No</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Smart TV</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">No</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Control Remoto incluido</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">No</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Entradas HDMI</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">2</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Tipo</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Monitor</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Dimensiones</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">55.68 x 41.98 x 18.06 (ancho x profundidad x alto)</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Peso</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">3.7 kg</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">País de origen</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">China</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Garantía otorgada por el Fabricante</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">1 año</td>\r\n</tr>\r\n</tbody>\r\n</table>','lg-monitor-led-236-24l600f-b');
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `store_product_categories`
--

LOCK TABLES `store_product_categories` WRITE;
/*!40000 ALTER TABLE `store_product_categories` DISABLE KEYS */;
INSERT INTO `store_product_categories` VALUES (1,1,1),(2,2,3),(3,3,2),(4,4,1);
/*!40000 ALTER TABLE `store_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `store_productvisited`
--

LOCK TABLES `store_productvisited` WRITE;
/*!40000 ALTER TABLE `store_productvisited` DISABLE KEYS */;
INSERT INTO `store_productvisited` VALUES (1,'zmx0ylkod0yr76nje3j8lcd2ouixhy2r',1),(2,'zmx0ylkod0yr76nje3j8lcd2ouixhy2r',2),(3,'zmx0ylkod0yr76nje3j8lcd2ouixhy2r',3),(4,'zmx0ylkod0yr76nje3j8lcd2ouixhy2r',4),(5,'ba27m60hkt4d3dxa7e88xl5vikqrbd9c',2),(6,'ba27m60hkt4d3dxa7e88xl5vikqrbd9c',1),(7,'ba27m60hkt4d3dxa7e88xl5vikqrbd9c',4),(8,'ba27m60hkt4d3dxa7e88xl5vikqrbd9c',3);
/*!40000 ALTER TABLE `store_productvisited` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 20:34:20
