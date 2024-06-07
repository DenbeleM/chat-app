SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Table structure for table `ban_list`

CREATE TABLE `ban_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ban_reason` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `banned_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Table structure for table `chat_room`

CREATE TABLE `chat_room` (
  `room_id` int(11) NOT NULL,
  `room_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `room_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `owner` int(11) NOT NULL,
  `created_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `messages`

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sent_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `request_join`

CREATE TABLE `request_join` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- Table structure for table `room_member`


CREATE TABLE `room_member` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `join_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- Table structure for table `user`


CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lastName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `profilePicture` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `session` text NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `joinned_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `user`

INSERT INTO `user` (`id`, `firstName`, `lastName`, `profilePicture`, `username`, `password`, `session`, `admin`, `verified`, `joinned_time`) VALUES
(1, 'Zubyer', 'Anwar ', 'https://w7.pngwing.com/pngs/754/2/png-transparent-samsung-galaxy-a8-a8-user-login-telephone-avatar-pawn-blue-angle-sphere-thumbnail.png', 'zubeyranwar', '12345678', '36abd83f011d92b06c801c99f1884c6c', 1, 0, '2019-07-05 20:52:10');

-- Indexes for table `ban_list`

ALTER TABLE `ban_list`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `chat_room`

ALTER TABLE `chat_room`
  ADD PRIMARY KEY (`room_id`);

-- Indexes for table `messages`

ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `request_join`

ALTER TABLE `request_join`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `room_member`

ALTER TABLE `room_member`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `user`

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `ban_list`

ALTER TABLE `ban_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_room`
--
ALTER TABLE `chat_room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `messages`

ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `request_join`

ALTER TABLE `request_join`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

-- AUTO_INCREMENT for table `room_member`

ALTER TABLE `room_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `user`

ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
