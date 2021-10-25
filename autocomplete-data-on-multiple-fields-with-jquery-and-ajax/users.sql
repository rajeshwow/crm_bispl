

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `age` int(2) NOT NULL,
  `salary` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

INSERT INTO `users` (`id`, `username`, `fname`, `lname`, `email`, `age`, `salary`) VALUES
(1, 'yssyogesh', 'Yogesh', 'singh', 'yssyogesh@makitweb.com', 23, '24000'),
(2, 'sonarika', 'Sonarika', 'Bhadoria', 'sonarika@gmail.com', 23, '44000'),
(3, 'akilesh', 'Akilesh', 'sahu', 'akilesh93@gmail.com', 24, '32000'),
(4, 'shreya', 'Shreya', 'Joshi', 'shreya@gmail.com', 24, '25000'),
(5, 'ajay', 'Ajay', 'Singh', 'ajaysingh@gmail.com', 25, '31000'),
(6, 'vijay', 'Vijay', 'maurya', 'vijayec@gmail.com', 24, '26000'),
(7, 'sunil', 'Sunil', 'singh', 'sunilsingh94@gmail.com', 23, '27000'),
(8, 'vishal', 'Vishal', 'sahu', 'vishal92@gmail.com', 25, '44000'),
(9, 'mukesh', 'Mukesh', 'sharma', 'mukesh@gmail.com', 26, '32000'),
(10, 'nitin', 'Nitin', 'singh', 'nitin@gmail.com', 27, '38000');

