-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.33-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ananya
--

CREATE DATABASE IF NOT EXISTS ananya;
USE ananya;

--
-- Definition of table `charity`
--

DROP TABLE IF EXISTS `charity`;
CREATE TABLE `charity` (
  `P_Id` char(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `address` varchar(30) NOT NULL,
  `City` varchar(10) DEFAULT NULL,
  `Contribution` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charity`
--

/*!40000 ALTER TABLE `charity` DISABLE KEYS */;
INSERT INTO `charity` (`P_Id`,`LastName`,`FirstName`,`address`,`City`,`Contribution`) VALUES 
 ('1','Bindra','Jaspreet','5B,Gomti Nagar','Lucknow','3501'),
 ('2','Rana','Monica','21-A,Bandra','Delhi','2768'),
 ('3','Singh','Jatinder','8,Punjabi Bagh','Delhi','2001'),
 ('4','Arora','Satinder','K/1,Shere Punjab Colony','Mumbai','1900'),
 ('5','Krishnan','Vineeta','A-75,Adarsh Nagar',NULL,NULL);
/*!40000 ALTER TABLE `charity` ENABLE KEYS */;


--
-- Definition of table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL DEFAULT '0',
  `cust_name` varchar(20) DEFAULT NULL,
  `phone_no` bigint(20) DEFAULT NULL,
  `ID_Type` varchar(20) DEFAULT NULL,
  `ID_No` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`cust_id`,`cust_name`,`phone_no`,`ID_Type`,`ID_No`,`email`,`ADDRESS`) VALUES 
 (101,'PRIYA SHARMA',4657465876,'AADHAR CARD',478478434,'priya@gmail.com','F-67 MANSAROVAR,JAIPUR'),
 (102,'ANANYA SRIVASTAVA',4576565475,'AADHAR CARD',54764564,'ananya@gmail.com','34/45 raja park,jaipur');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


--
-- Definition of table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `DepCode` char(10) DEFAULT NULL,
  `DepName` varchar(10) DEFAULT NULL,
  `Budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`DepCode`,`DepName`,`Budget`) VALUES 
 ('101','Sales',200000),
 ('102','Personnel',150000),
 ('103','Accounts',300000);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `ecode` char(10) DEFAULT NULL,
  `lastname` varchar(10) DEFAULT NULL,
  `firstname` varchar(10) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`ecode`,`lastname`,`firstname`,`department`) VALUES 
 ('101','Sharma','Amit','marketing'),
 ('102','Arora','Shiv','Personnel'),
 ('103','Lakshmi','KS','Accounts'),
 ('104','Rajlani','Shivika','Accounts'),
 ('105','Thakral','Satvik','marketing');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `prcode` varchar(10) DEFAULT NULL,
  `prname` varchar(20) DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `manufacturer` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` (`prcode`,`prname`,`unitprice`,`manufacturer`) VALUES 
 ('p101','crosstrainer',22500,'avonfitness'),
 ('p102','treadmill',28800,'agfitline'),
 ('p103','massagechair',18000,'fitexpress'),
 ('p104','vibrationtrainer',19800,'avonfitness'),
 ('p105','bike',11700,'fitexpress'),
 ('p106','vibroexerciser',20700,'avonfitness');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;


--
-- Definition of table `grocer`
--

DROP TABLE IF EXISTS `grocer`;
CREATE TABLE `grocer` (
  `Item_Id` char(10) DEFAULT NULL,
  `ItemName` varchar(20) DEFAULT NULL,
  `UnitPrice` decimal(10,0) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Date_Purchase` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grocer`
--

/*!40000 ALTER TABLE `grocer` DISABLE KEYS */;
INSERT INTO `grocer` (`Item_Id`,`ItemName`,`UnitPrice`,`Quantity`,`Date_Purchase`) VALUES 
 ('1','Rice','53',80,'2010-02-01'),
 ('2','Wheat','25',50,'2010-03-09'),
 ('3','Corn','51',100,'2010-03-11'),
 ('4','Semolina','29',50,'2010-01-15');
/*!40000 ALTER TABLE `grocer` ENABLE KEYS */;


--
-- Definition of table `loans`
--

DROP TABLE IF EXISTS `loans`;
CREATE TABLE `loans` (
  `AccNo` char(10) DEFAULT NULL,
  `cust_name` varchar(20) DEFAULT NULL,
  `loan_amount` int(11) DEFAULT NULL,
  `instalments` int(11) DEFAULT NULL,
  `int_rate` decimal(10,0) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `interest` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loans`
--

/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('ananya','ananya');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `pc`
--

DROP TABLE IF EXISTS `pc`;
CREATE TABLE `pc` (
  `pc_no` int(11) DEFAULT NULL,
  `additional_devices` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc`
--

/*!40000 ALTER TABLE `pc` DISABLE KEYS */;
INSERT INTO `pc` (`pc_no`,`additional_devices`,`status`) VALUES 
 (1,'PRINTER','');
/*!40000 ALTER TABLE `pc` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ecode` char(10) DEFAULT NULL,
  `lastname` varchar(10) DEFAULT NULL,
  `firstname` varchar(10) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`ecode`,`lastname`,`firstname`,`department`) VALUES 
 ('101','Sharma','Amit','Sales'),
 ('102','Arora','Shiv','Personnel'),
 ('103','Lakshmi','KS','Accounts'),
 ('104','Rajlani','Shivika','Accounts'),
 ('104','Thakral','Satvik','Sales'),
 ('105','Rajlani','Shivika','Accounts');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
CREATE TABLE `user_status` (
  `Booking_Id` int(11) NOT NULL DEFAULT '0',
  `PC_No` int(11) DEFAULT NULL,
  `Login_time` varchar(10) DEFAULT NULL,
  `logout_time` varchar(10) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Booking_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status`
--

/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
INSERT INTO `user_status` (`Booking_Id`,`PC_No`,`Login_time`,`logout_time`,`duration`,`Amount`,`cust_id`) VALUES 
 (200,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
