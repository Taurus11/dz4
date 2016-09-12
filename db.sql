-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 22 2016 г., 21:24
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `status` enum('active','passive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `status`) VALUES
(4, 'modis', 'active'),
(5, 'id', 'active'),
(6, 'et', 'active'),
(7, 'quia', 'active'),
(8, 'rerum', 'active'),
(9, 'aloi', 'active'),
(10, 'qwerty', 'active'),
(11, 'beatae', 'active'),
(12, 'quae', 'active'),
(13, 'exercitationem', 'active'),
(14, 'qui', 'active'),
(15, 'occaecati', 'active'),
(16, 'illum', 'active');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date_order` date NOT NULL,
  `status` enum('active','passive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `date_order`, `status`) VALUES
(4, 8, '2016-01-04', 'active'),
(5, 10, '2016-02-09', 'active'),
(6, 1, '2016-01-16', 'active'),
(7, 3, '2016-01-04', 'active'),
(8, 9, '2016-02-18', 'active'),
(9, 4, '2016-02-14', 'active'),
(10, 5, '2016-02-05', 'active'),
(11, 9, '2016-02-17', 'active'),
(12, 5, '2016-02-13', 'active'),
(13, 1, '2016-01-30', 'active'),
(14, 4, '2016-02-14', 'active'),
(15, 8, '2016-01-13', 'active'),
(16, 3, '2016-01-05', 'active'),
(17, 6, '2016-01-01', 'active'),
(18, 2, '2016-01-29', 'active'),
(19, 7, '2016-01-08', 'active'),
(20, 10, '2016-02-01', 'active'),
(21, 12, '2016-01-01', 'active');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `price` float NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `id_order`, `id_product`, `price`, `count`) VALUES
(1, 1, 4, 3665.21, 2),
(2, 1, 1, 2995.83, 2),
(3, 1, 10, 2658.82, 2),
(4, 2, 3, 3665.21, 2),
(5, 2, 6, 3938.06, 2),
(6, 2, 1, 2995.83, 2),
(7, 3, 3, 3665.21, 2),
(8, 3, 5, 2927.24, 2),
(9, 3, 7, 4058.82, 2),
(10, 4, 3, 3665.21, 2),
(11, 4, 2, 659.73, 2),
(12, 4, 1, 2995.83, 2),
(13, 5, 8, 561.3, 2),
(14, 5, 6, 3938.06, 2),
(15, 5, 9, 718.18, 2),
(16, 6, 5, 2927.24, 2),
(17, 6, 10, 2658.82, 2),
(18, 6, 9, 718.18, 2),
(19, 7, 10, 2658.82, 2),
(20, 7, 2, 659.73, 2),
(21, 7, 1, 2995.83, 2),
(22, 8, 8, 561.3, 2),
(23, 8, 1, 2995.83, 2),
(24, 8, 3, 3665.21, 2),
(25, 9, 5, 2927.24, 2),
(26, 9, 10, 2658.82, 2),
(27, 9, 8, 561.3, 2),
(28, 10, 1, 2995.83, 2),
(29, 10, 9, 718.18, 2),
(30, 10, 2, 659.73, 2),
(31, 1, 9, 718.18, 2),
(32, 1, 10, 2658.82, 2),
(33, 1, 2, 659.73, 2),
(34, 2, 1, 2995.83, 2),
(35, 2, 10, 2658.82, 2),
(36, 2, 8, 561.3, 2),
(37, 3, 5, 2927.24, 2),
(38, 3, 6, 3938.06, 2),
(39, 3, 7, 4058.82, 2),
(40, 4, 10, 2658.82, 2),
(41, 4, 5, 2927.24, 2),
(42, 4, 9, 718.18, 2),
(43, 5, 9, 718.18, 2),
(44, 5, 5, 2927.24, 2),
(45, 5, 4, 3915.78, 2),
(46, 6, 10, 2658.82, 2),
(47, 6, 3, 3665.21, 2),
(48, 6, 8, 561.3, 2),
(49, 7, 5, 2927.24, 2),
(50, 7, 1, 2995.83, 2),
(51, 7, 3, 3665.21, 2),
(52, 8, 9, 718.18, 2),
(53, 8, 2, 659.73, 2),
(54, 8, 5, 2927.24, 2),
(55, 9, 5, 2927.24, 2),
(56, 9, 4, 3915.78, 2),
(57, 9, 3, 3665.21, 2),
(58, 10, 7, 4058.82, 2),
(59, 10, 5, 2927.24, 2),
(61, 0, 2, 23, 2),
(62, 2, 12, 111, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_catalog` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `status` enum('active','passive') NOT NULL,
  `img` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `id_catalog`, `title`, `mark`, `count`, `price`, `description`, `status`, `img`) VALUES
(1, 5, 'ad', 'impedit', 51, 2995.83, 'Sunt id consequatur deserunt. Repudiandae veritatis minus assumenda dolorem adipisci quia ratione. Aut adipisci voluptatem qui minima voluptatem rerum.', 'active', 'img/pattern.png'),
(2, 4, 'accusamus', 'temporibus', 75, 659.73, 'Est voluptatibus est est et dignissimos excepturi nemo. Possimus assumenda quibusdam ea cupiditate est. Qui repellat quis nihil.', 'active', 'img/cooltech.png'),
(3, 10, 'soluta', 'sed', 50, 3665.21, 'Similique accusantium veritatis eaque sapiente molestiae soluta. Facilis tempore ipsam dolores totam sed. Aspernatur culpa dolores sit incidunt magni hic ab.', 'active', 'img/cooltech.png'),
(4, 10, 'eos', 'fugiat', 23, 3915.78, 'Cupiditate autem libero quo voluptate. Omnis ullam sit id ab. Nisi expedita nulla sunt asperiores.', 'active', 'img/cooltech.png'),
(5, 5, 'ullam', 'impedit', 57, 2927.24, 'Cupiditate natus animi et libero. Incidunt aspernatur nam et cum sit assumenda deserunt.', 'active', 'img/cooltech.png'),
(6, 9, 'animi', 'fugit', 27, 3938.06, 'Eum cupiditate consequatur ut aut et placeat. Eos assumenda provident ratione aut aliquid. Qui amet error voluptatem in et omnis. Molestiae nisi vitae quis.', 'active', 'img/result.png'),
(7, 2, 'illo', 'omnis', 61, 4058.82, 'Distinctio quibusdam quibusdam ea ut libero quo. Est quae dolorem culpa ducimus quo voluptas perspiciatis. Praesentium et velit facilis consequuntur sed quia. Harum saepe saepe qui.', 'active', 'img/cooltech.png'),
(8, 1, 'aut', 'praesentium', 53, 561.3, 'Ducimus odio quos reprehenderit delectus. Voluptatem aut perferendis vel est ab. Sapiente qui consequatur possimus eum dolor mollitia repellendus fuga. Nobis temporibus accusantium ea.', 'active', 'img/cooltech.png'),
(9, 8, 'non', 'possimus', 16, 718.18, 'Eveniet ipsa maxime et modi voluptas recusandae. Assumenda qui fugit fugit quisquam omnis consectetur. Saepe voluptatem eveniet qui facilis aspernatur.', 'active', 'img/cooltech.png'),
(10, 3, 'laboriosam', 'esse', 96, 2658.82, 'Recusandae ipsa ut optio possimus quasi esse nam reprehenderit. Sapiente cum et voluptatem delectus. Et deleniti fugit quis cumque dicta alias repudiandae. Sunt est id minus.', 'active', 'img/cooltech.png'),
(11, 3, 'fdgdg', 'dfgdg', 3, 232, 'dfgfg', 'active', 'img/01_main_14_01.jpg'),
(12, 10, 'impedit', 'quasi', 32, 4346.6, 'Tempore nam et velit tempore repudiandae officiis earum. Officia quis tempora rerum esse nemo minus. Sunt est qui facere ex cum veniam et. Beatae consequatur nisi autem accusantium accusamus.', 'active', 'img/cooltech.png'),
(13, 6, 'esse', 'molestiae', 71, 3632.99, 'Ullam quod harum repellat quis soluta qui. Aut reprehenderit qui accusamus cupiditate neque ipsa error quisquam. Omnis dolore autem vero ipsam sint.', 'active', 'img/cooltech.png'),
(14, 4, 'maiores', 'necessitatibus', 25, 176.89, 'Debitis cum placeat at. Quod sint ut et quo deleniti. Repellendus quisquam earum ab sint accusamus ut.', 'active', 'img/cooltech.png'),
(15, 4, 'laudantium', 'libero', 59, 832.78, 'Natus sequi quam facere vero. Exercitationem sint fugit dolore facilis. Libero pariatur ea illum eos.', 'active', 'img/cooltech.png'),
(16, 8, 'numquam', 'perferendis', 73, 4742.39, 'Consequatur rerum dolorem quo hic ducimus aliquid deserunt. Sed sit impedit ipsa voluptatem commodi. Quasi velit pariatur et dolor ut voluptates ea. Voluptatem dicta est omnis libero quam.', 'active', 'img/cooltech.png'),
(17, 9, 'dolor', 'magni', 68, 4297.15, 'Corrupti saepe qui et eveniet. Ducimus accusantium est et totam inventore rem. Necessitatibus expedita ipsum pariatur amet. Excepturi deleniti et nemo ex minus vero sit molestiae.', 'active', 'img/cooltech.png'),
(18, 4, 'fugiat', 'iusto', 17, 1903.35, 'Quidem labore voluptas ut error praesentium voluptatem eum architecto. Animi quos mollitia quam ipsam amet. Dolorem ut quia blanditiis sunt. Voluptatem vel sint doloremque enim iure corrupti hic.', 'active', 'img/cooltech.png'),
(19, 7, 'ea', 'cupiditate', 44, 1128.31, 'Ut optio maiores sint consequuntur consequatur totam eum. Veritatis est corporis sunt perferendis natus ea. Esse voluptatibus laboriosam omnis.', 'active', 'img/cooltech.png'),
(20, 8, 'sapiente', 'blanditiis', 85, 4554.69, 'Voluptas occaecati est minima corporis molestiae ea vero. Assumenda asperiores et sed consequatur deleniti ut mollitia. Totam voluptates expedita et est iusto ut. Quibusdam omnis qui nisi laboriosam.', 'active', 'img/cooltech.png'),
(21, 1, 'et', 'omnis', 24, 927.2, 'Quis dignissimos vero eaque sed facere id recusandae. Est possimus et occaecati magni recusandae animi aut. Quis iste omnis ex fugiat. Tempora dolores ipsum qui.', 'active', 'img/cooltech.png'),
(22, 2, 'qweqw', 'qwe', 3, 123, 'addsdsd', 'active', '/img'),
(23, 2, 'qweqw', 'qwe', 3, 123, 'addsdsd', 'active', '/img');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `reg_date` date NOT NULL,
  `last_update` date NOT NULL,
  `status` enum('active','passive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `birthday`, `email`, `password`, `is_active`, `reg_date`, `last_update`, `status`) VALUES
(1, 'Nick', 'Huels', '1995-02-07', 'pkunde@sauer.com', '8G)qf]4nC<Zl&b=q', 1, '2012-03-25', '2015-07-13', 'active'),
(2, 'Chauncey', 'Ratke', '1987-08-03', 'lkuhlman@stanton.com', '-2|I](`0=', 1, '2013-06-08', '2015-09-25', 'active'),
(3, 'Jaron', 'Cremin', '1978-01-31', 'courtney.kris@crooks.com', 'RE[x%b*6ki@WfG', 1, '2008-05-26', '2015-05-29', 'active'),
(4, 'Carmelo', 'Sawayn', '1984-11-07', 'terrill.marks@hotmail.com', 'j7+ep;El`hHLr', 1, '2013-05-28', '2015-02-03', 'active'),
(5, 'Mikayla', 'Hackett', '1987-05-04', 'odie88@sauer.biz', '(.U-f}?;/Vo!vgmxJJf', 1, '2010-10-22', '2015-02-12', 'active'),
(6, 'Enos', 'Hansen', '1974-02-16', 'hoeger.hailee@hotmail.com', 'd`Ta50p:\\@*,0g6,aA', 1, '2009-03-07', '2015-08-31', 'active'),
(7, 'Austyn', 'Denesik', '1996-03-12', 'rollin18@marquardt.com', '-%zT5i6?p99To|%z', 1, '2013-07-04', '2015-08-30', 'active'),
(8, 'Audrey', 'Cormier', '1973-05-07', 'dibbert.caterina@krajcik.com', '/KTi*HVC', 1, '2007-01-22', '2015-09-28', 'active'),
(9, 'Okey', 'Stiedemann', '1994-10-16', 'ashley88@adams.net', '7iFzm*', 1, '2005-09-28', '2015-01-16', 'active'),
(10, 'Julia', 'Treutel', '1990-02-19', 'lenore.reilly@hotmail.com', 'J<[M|#%XIc/2OpX*?)', 1, '2010-09-02', '2015-01-07', 'active'),
(11, 'Creola', 'Weissnat', '1982-07-17', 'loyce84@fritsch.biz', '}2H/b2"|$C>w(GlaTwIu', 1, '2005-12-23', '2015-09-05', 'active'),
(12, 'Amina', 'Braun', '1970-08-19', 'keyshawn.bashirian@hotmail.com', 'EaM,wn[_bkCMw"`Qq]', 1, '2010-05-13', '2015-04-26', 'active'),
(13, 'Abbie', 'Weissnat', '1992-09-20', 'vella.jast@yahoo.com', 'Sy>,#b(a;D9_', 1, '2013-05-27', '2015-07-08', 'active'),
(14, 'Robb', 'Jones', '1993-10-19', 'halle.olson@krajcik.info', 'Ce&6t7h?+l9{7`MCw~', 1, '2013-09-30', '2015-05-01', 'active'),
(15, 'Chadrick', 'Vandervort', '1991-10-27', 'wilbert.konopelski@olson.com', '75z~Nmj%sI', 1, '2012-06-29', '2015-04-25', 'active'),
(16, 'Nasir', 'Stanton', '1979-07-24', 'kkris@gibson.org', '-A]iQtESahdI*e', 1, '2009-12-07', '2015-03-24', 'active'),
(17, 'Eliane', 'Altenwerth', '1983-02-10', 'hilpert.rubie@buckridge.com', '+Ex5hH-c{H+79sbC~x', 1, '2007-04-22', '2015-10-15', 'active'),
(18, 'Rahsaan', 'Little', '1976-08-21', 'ygrady@hotmail.com', '%P=;x8', 1, '2008-11-25', '2015-11-19', 'active'),
(19, 'Rosalinda', 'Turcotte', '1995-06-16', 'delphia.feil@gmail.com', 'ZZef,Uc', 1, '2007-02-23', '2015-06-27', 'active'),
(20, 'Easter', 'Kuhlman', '1985-10-20', 'zbraun@hotmail.com', 'Nf)vNjTQN', 1, '2008-03-05', '2015-03-21', 'active'),
(21, 'as', 'asss', '2016-01-04', 'bcb@mmm.com', 'qqwqwqw', 12, '0000-00-00', '0000-00-00', 'active');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
