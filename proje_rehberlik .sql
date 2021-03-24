-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 02 Haz 2016, 11:28:29
-- Sunucu sürümü: 5.6.12-log
-- PHP Sürümü: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `proje_rehberlik`
--
CREATE DATABASE IF NOT EXISTS `proje_rehberlik` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `proje_rehberlik`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gorusmeler`
--

CREATE TABLE IF NOT EXISTS `gorusmeler` (
  `gorusmeID` int(11) NOT NULL AUTO_INCREMENT,
  `gorusmeTC` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `gorusme_neden` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `gorusme_tur` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `gorusme_tarih` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `gorusme_sonuc` text COLLATE utf8_turkish_ci NOT NULL,
  `test_sonuc` int(11) NOT NULL,
  `gorusme_yapan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `gorusme_durumu` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`gorusmeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=33 ;

--
-- Tablo döküm verisi `gorusmeler`
--

INSERT INTO `gorusmeler` (`gorusmeID`, `gorusmeTC`, `gorusme_neden`, `gorusme_tur`, `gorusme_tarih`, `gorusme_sonuc`, `test_sonuc`, `gorusme_yapan`, `gorusme_durumu`) VALUES
(26, '12345678902', 'Item 1', 'Item 1', '01', 'nas?ls?n', 40, 'Omerkonca', 'sonuclandi '),
(27, '12345', 'Okul Sorunlar?', 'Psikolojik Dan??ma', '01.05.2014', 'merhaba', 37, 'omerkonca', 'bitmedi'),
(28, '25', 'Okul Sorunlar?', 'Kariyer Dan??ma', '2016/05/31 7:06:22', 'merhaba', 45, 'Omerkonca', 'bitmedi'),
(29, '4', 'Meslek Seçimi', 'Görü?me', '2016/05/31 7:10:29', 'merhaba', 38, 'Omerkonca', 'bitmedi'),
(30, '19382620417', 'Meslek Seçimi', 'Görü?me', '2016/05/31 9:22:15', 'Sonuclandi.', 51, 'ersinpekmez', 'sonuclandi '),
(31, '19382620418', 'S?nav Heyacan?', 'S?nav Kayg?s?', '2016/05/31 9:29:26', 'sonuç olumlu.', 46, 'ersinpekmez', 'sonuclandi ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `kullaniciID` int(10) NOT NULL AUTO_INCREMENT,
  `kullanici_adi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sifre` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `adi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `soyadi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `telefon` int(11) NOT NULL,
  `adres` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL,
  `kullaniciTipi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`kullaniciID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci AUTO_INCREMENT=18 ;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kullaniciID`, `kullanici_adi`, `sifre`, `adi`, `soyadi`, `telefon`, `adres`, `kullaniciTipi`) VALUES
(7, 'omer01', 'omer01', 'Ömer', 'Konca', 321654987, 'Adana', 'mudur'),
(14, '20193520824', '520652', 'ömer', 'konca', 312310202, 'Adana / Altindag', 'rehberci'),
(16, '20452620518', '5252', 'ersin', 'pekmez', 478963, 'adana', 'rehberci');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenciler`
--

CREATE TABLE IF NOT EXISTS `ogrenciler` (
  `ogrenciID` int(11) NOT NULL AUTO_INCREMENT,
  `tc` varchar(15) COLLATE utf8mb4_turkish_ci NOT NULL,
  `adi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `soyadi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `dogumTarihi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `dogumYeri` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `cinsiyet` varchar(15) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sinif` varchar(10) COLLATE utf8mb4_turkish_ci NOT NULL,
  `numara` int(25) NOT NULL,
  `ogrencisifre` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `velisi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `veliTel` int(20) NOT NULL,
  PRIMARY KEY (`ogrenciID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci AUTO_INCREMENT=7 ;

--
-- Tablo döküm verisi `ogrenciler`
--

INSERT INTO `ogrenciler` (`ogrenciID`, `tc`, `adi`, `soyadi`, `dogumTarihi`, `dogumYeri`, `cinsiyet`, `sinif`, `numara`, `ogrencisifre`, `velisi`, `veliTel`) VALUES
(1, '4', 'Murat', 'Ak', '08.05.1999', 'Osmaniye', 'Erkek', 'a8', 56, 'a4', 'a', 9),
(2, '25', '?sa', 'Sari', '17.02.2001', 'Düzce', 'Erkek', 'a3', 7, 'b1', 'Hasan', 9),
(3, '12345678902', 'Ali', 'Sel', '25.10.2002', 'Hatay', 'Erkek', 'a4', 123456789, 'aa3', 'a', 3),
(4, '19382620417', 'Umut', 'Kaya', '02.05.2005', 'Zonguldak', 'Erkek', 'a7', 1453, 'umut', 'umut', 3762935),
(5, '19382620418', 'Yusuf', 'Bal', '15.12.2007', 'Ordu', 'Erkek', 'c5', 1071, '1071', 'hasan', 3754512),
(6, '20452620417', 'Hüseyin', 'tekin', '20.06.2004', 'Osmaniye', 'Erkek', 'a7', 1081, '7878', 'Ertan', 3452626);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevular`
--

CREATE TABLE IF NOT EXISTS `randevular` (
  `randevuID` int(11) NOT NULL AUTO_INCREMENT,
  `atanacakgorusme` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `gorusmeyapan` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `gorusmetarihi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `gorusmesaati` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`randevuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
