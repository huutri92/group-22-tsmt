﻿Use TSMT

/*Delete all data in provinces*/

DELETE FROM Districts
/*DBCC CHECKIDENT('Districts', RESEED, 0)/*reset increment identity*//
*/
DELETE FROM Provinces 
/*DBCC CHECKIDENT('Provinces', RESEED, 0)*/

/*Insert data into table Provinces*/
INSERT INTO Provinces (ProvinceID, Name) VALUES
(3, N'TP.HCM'),
(2, N'Hà Nội'),
(10, N'Yên Bái'),
(11, N'Vĩnh Phúc'),
(12, N'Vĩnh Long'),
(13, N'Tuyên Quang'),
(14, N'Trà Vinh'),
(15, N'Tiền Giang'),
(16, N'Thừa Thiên Huế'),
(17, N'Thanh Hóa'),
(18, N'Thái Nguyên'),
(19, N'Thái Bình'),
(21, N'Tây Ninh'),
(22, N'Sơn La'),
(23, N'Sóc Trăng'),
(24, N'Quảng Trị'),
(25, N'Quảng Ninh'),
(26, N'Quảng Ngãi'),
(27, N'Quảng Nam'),
(28, N'Quảng Bình'),
(29, N'Phú Yên'),
(30, N'Phú Thọ'),
(31, N'Ninh Thuận'),
(32, N'Ninh Bình'),
(33, N'Nghệ An'),
(34, N'Nam Định'),
(35, N'Long An'),
(36, N'Lào Cai'),
(37, N'Lạng Sơn'),
(38, N'Lâm Đồng'),
(39, N'Lai Châu'),
(40, N'Kon Tum'),
(41, N'Kiên Giang'),
(42, N'Khánh Hòa'),
(43, N'Hưng Yên'),
(44, N'Hòa Bình'),
(45, N'Hậu Giang'),
(46, N'Hải Dương'),
(47, N'Hà Tĩnh'),
(49, N'Hà Nam '),
(50, N'Hà Giang'),
(51, N'Gia Lai'),
(52, N'Đồng Tháp'),
(53, N'Đồng Nai'),
(54, N'Điện Biên'),
(55, N'Đắk Nông'),
(56, N'Đắk Lắk'),
(57, N'Cao Bằng'),
(58, N'Cà Mau'),
(59, N'Bình Thuận'),
(60, N'Bình Phước'),
(61, N'Bình Dương'),
(62, N'Bình Định'),
(63, N'Bến Tre'),
(64, N'Bắc Ninh'),
(65, N'Bạc Liêu'),
(66, N'Bắc Kạn'),
(67, N'Bắc Giang'),
(68, N'Bà Rịa - Vũng Tàu'),
(69, N'An Giang'),
(70, N'Hải Phòng'),
(71, N'Đà Nẵng'),
(72, N'Cần Thơ');

/*Insert data into table Districts*/
INSERT INTO [dbo].[Districts](DistrictID, Name, ProvinceID) VALUES
(127, N'Quận 1', 3),
(128, N'Quận 2', 3),
(129, N'Quận 3', 3),
(130, N'Quận 4', 3),
(131, N'Quận 5', 3),
(132, N'Quận 6', 3),
(133, N'Quận 7', 3),
(134, N'Quận 8', 3),
(135, N'Quận 9', 3),
(136, N'Quận 10', 3),
(137, N'Quận 11', 3),
(138, N'Quận 12', 3),
(139, N'Quận Phú Nhuận', 3),
(140, N'Quận Bình Thạnh', 3),
(141, N'Quận Tân Bình', 3),
(142, N'Quận Tân Phú', 3),
(143, N'Quận Gò Vấp', 3),
(144, N'Quận Thủ Đức', 3),
(145, N'Quận Bình Tân', 3),
(146, N'Huyện Bình Chánh', 3),
(147, N'Huyện Củ Chi', 3),
(149, N'Huyện Nhà Bè', 3),
(150, N'Huyện Cần Giờ', 3),
(856, N'Huyện Hóc Môn', 3),
(113, N'Từ Liêm', 2),
(114, N'Thanh Trì', 2),
(115, N'Sóc Sơn', 2),
(116, N'Gia Lâm', 2),
(117, N'Đông Anh', 2),
(118, N'Long Biên', 2),
(119, N'Hoàng Mai', 2),
(120, N'Cầu Giấy', 2),
(121, N'Tây Hồ', 2),
(122, N'Thanh Xuân', 2),
(123, N'Hai Bà Trưng', 2),
(124, N'Đống Đa', 2),
(125, N'Ba Đình', 2),
(126, N'Hoàn Kiếm', 2),
(450, N'Mê Linh', 2),
(840, N'Vân Điền', 2),
(857, N'Ba Vì', 2),
(858, N'Chương Mỹ', 2),
(859, N'Đan Phượng', 2),
(860, N'Hà Đông', 2),
(861, N'Hoài Đức', 2),
(862, N'Mỹ Đức', 2),
(863, N'Phú Xuyên', 2),
(864, N'Phúc Thọ', 2),
(865, N'Quốc Oai', 2),
(866, N'Sơn Tây', 2),
(867, N'Thạch Thất', 2),
(868, N'Thanh Oai', 2),
(869, N'Thường Tín', 2),
(871, N'Ứng Hòa', 2),
(626, N'Lục Yên', 10),
(627, N'Mù Căng Chải', 10),
(628, N'Trạm Tấu', 10),
(629, N'Trấn Yên', 10),
(630, N'Văn Chấn', 10),
(631, N'Văn Yên', 10),
(632, N'Yên Bái', 10),
(633, N'Yên Bình', 10),
(448, N'Bình Xuyên', 11),
(449, N'Lập Thạch', 11),
(451, N'Tam Dương', 11),
(452, N'Vĩnh Tường', 11),
(453, N'Vĩnh Yên', 11),
(454, N'Yên Lạc', 11),
(850, N'Phúc Yên', 11),
(853, N'Tam Đảo', 11),
(812, N'Bình Minh', 12),
(813, N'Long Hồ', 12),
(814, N'Mang Thít', 12),
(815, N'Tam Bình', 12),
(816, N'Trà Ôn', 12),
(817, N'Vĩnh Long', 12),
(818, N'Vũng Liêm', 12),
(620, N'Chiêm Hóa', 13),
(621, N'Hàm Yên', 13),
(622, N'Na Hang', 13),
(623, N'Sơn Dương', 13),
(624, N'Tuyên Quang', 13),
(625, N'Yên Sơn', 13),
(440, N'Càng Long', 14),
(441, N'Cầu Kè', 14),
(442, N'Cầu Ngang', 14),
(443, N'Châu Thành', 14),
(444, N'Duyên Hải', 14),
(445, N'Tiểu Cần', 14),
(446, N'Trà Cú', 14),
(447, N'Trà Vinh', 14),
(803, N'Cái Bè', 15),
(804, N'Cai Lậy', 15),
(805, N'Châu Thành', 15),
(806, N'Chợ Gạo', 15),
(807, N'Gò Công', 15),
(808, N'Gò Công Đông', 15),
(809, N'Gò Công Tây', 15),
(810, N'Mỹ Tho', 15),
(811, N'Tân Phước', 15),
(423, N'A Lưới', 16),
(424, N'Huế', 16),
(425, N'Hương Thủy', 16),
(426, N'Hương Trà', 16),
(427, N'Nam Đông', 16),
(428, N'Phong Điền', 16),
(429, N'Phú Lộc', 16),
(430, N'Phú Vang', 16),
(431, N'Quảng Điền', 16),
(776, N'Bá Thước', 17),
(777, N'Bỉm Sơn', 17),
(778, N'Cẩm Thủy', 17),
(779, N'Đông Sơn', 17),
(780, N'Hà Trung', 17),
(781, N'Hậu Lộc', 17),
(782, N'Hoằng Hóa', 17),
(783, N'Lang Chánh', 17),
(784, N'Mường Lát', 17),
(785, N'Nga Sơn', 17),
(786, N'Ngọc Lặc', 17),
(787, N'Như Thanh', 17),
(788, N'Như Xuân', 17),
(789, N'Nông Cống', 17),
(790, N'Quan Hóa', 17),
(791, N'Quan Sơn', 17),
(792, N'Quảng Xương', 17),
(793, N'Sầm Sơn', 17),
(794, N'Thạch Thành', 17),
(795, N'Thanh Hóa', 17),
(796, N'Thọ Xuân', 17),
(797, N'Thường Xuân', 17),
(798, N'Tĩnh Gia', 17),
(799, N'Thiệu Hóa', 17),
(800, N'Triệu Sơn', 17),
(801, N'Vĩnh Lộc', 17),
(802, N'Yên Định', 17),
(611, N'Đại Từ', 18),
(612, N'Định Hóa', 18),
(613, N'Đồng Hỷ', 18),
(614, N'Phổ Yên', 18),
(615, N'Phú Bình', 18),
(616, N'Phú Lương', 18),
(617, N'Sông Công', 18),
(618, N'Thái Nguyên', 18),
(619, N'Võ Nhai', 18),
(432, N'Đông Hưng', 19),
(433, N'Hưng Hà', 19),
(434, N'Kiến Xương', 19),
(435, N'Quỳnh Phụ', 19),
(436, N'Thái Bình', 19),
(437, N'Thái Thụy', 19),
(438, N'Tiền Hải', 19),
(439, N'Vũ Thư', 19),
(602, N'Bến Cầu', 21),
(603, N'Châu Thành', 21),
(604, N'Dương Minh Châu', 21),
(605, N'Gò Dầu', 21),
(606, N'Hòa Thành', 21),
(607, N'Tân Biên', 21),
(608, N'Tân Châu', 21),
(609, N'Tây Ninh', 21),
(610, N'Trảng Bàng', 21),
(766, N'Bắc Yên', 22),
(767, N'Mai Sơn', 22),
(768, N'Mộc Châu', 22),
(769, N'Muờng La', 22),
(770, N'Phù Yên', 22),
(771, N'Quỳnh Nhai', 22),
(772, N'Sơn La', 22),
(773, N'Sông Mã', 22),
(774, N'Thuận Châu', 22),
(775, N'Yên Châu', 22),
(874, N'Sốp Cộp', 22),
(595, N'Kế Sách', 23),
(596, N'Long Phú', 23),
(597, N'Mỹ Tú', 23),
(598, N'Mỹ Xuyên', 23),
(599, N'Sóc Trăng', 23),
(600, N'Thanh Trị', 23),
(601, N'Vĩnh Châu', 23),
(414, N'Cam Lộ', 24),
(415, N'Đa Krông', 24),
(416, N'Đông Hà', 24),
(417, N'Gio Linh', 24),
(418, N'Hải Lăng', 24),
(419, N'Hướng Hóa', 24),
(420, N'Quảng Trị', 24),
(421, N'Triệu Phong', 24),
(422, N'Vĩnh Linh', 24),
(753, N'Ba Chế', 25),
(754, N'Bình Liêu', 25),
(755, N'Cẩm Phả', 25),
(756, N'Cô Tô', 25),
(757, N'Đông Triều', 25),
(758, N'Hạ Long', 25),
(759, N'Hoành Bồ', 25),
(760, N'Móng Cái', 25),
(761, N'Quảng Hà', 25),
(762, N'Tiên Yên', 25),
(763, N'Uông Bí', 25),
(764, N'Vân Đồn', 25),
(765, N'Yên Hưng', 25),
(582, N'Ba Tơ', 26),
(583, N'Bình Sơn', 26),
(584, N'Đức Phổ', 26),
(585, N'Lý Sơn', 26),
(586, N'Minh Long', 26),
(587, N'Mộ Đức', 26),
(588, N'Nghĩa Hành', 26),
(589, N'Quãng Ngãi', 26),
(590, N'Sơn Hà', 26),
(591, N'Sơn Tây', 26),
(592, N'Sơn Tịnh', 26),
(593, N'Trà Bồng', 26),
(594, N'Tư Nghĩa', 26),
(400, N'Đại Lộc', 27),
(401, N'Điện Bàn', 27),
(402, N'Duy Xuyên', 27),
(403, N'Hiên', 27),
(404, N'Hiệp Đức', 27),
(405, N'Hội An', 27),
(406, N'Nam Giang', 27),
(407, N'Núi Thành', 27),
(408, N'Phước Sơn', 27),
(409, N'Quế Sơn', 27),
(410, N'Tam Kỳ', 27),
(411, N'Thăng Bình', 27),
(412, N'Tiên Phước', 27),
(413, N'Trà My', 27),
(747, N'Bố Trạch', 28),
(748, N'Đồng Hới', 28),
(749, N'Lệ Thủy', 28),
(750, N'Quảng Ninh', 28),
(751, N'Quảng Trạch', 28),
(752, N'Tuyên Hóa', 28),
(880, N'Minh Hóa', 28),
(576, N'Đồng Xuân', 29),
(577, N'Sơn Hòa', 29),
(578, N'Sông Cầu', 29),
(579, N'Sông Hinh', 29),
(580, N'Tuy An', 29),
(581, N'Tuy Hòa', 29),
(877, N'Đông Hòa', 29),
(878, N'Tây Hòa', 29),
(879, N'Phú Hòa', 29),
(388, N'Đoan Hùng', 30),
(389, N'Hạ Hòa', 30),
(390, N'Lâm Thao', 30),
(391, N'Phù Ninh', 30),
(392, N'Phú Thọ', 30),
(393, N'Sông Thao', 30),
(394, N'Tam Nông', 30),
(395, N'Thanh Ba', 30),
(396, N'Thanh Sơn', 30),
(397, N'Thanh Thủy', 30),
(398, N'Việt Trì', 30),
(399, N'Yên Lập', 30),
(875, N'Cẩm Khê', 30),
(876, N'Tân Sơn', 30),
(743, N'Ninh Hải', 31),
(744, N'Ninh Phước', 31),
(745, N'Ninh Sơn', 31),
(746, N'Phan Rang - Tháp Chàm', 31),
(568, N'Hoa Lư', 32),
(569, N'Kim Sơn', 32),
(571, N'Nho Quan', 32),
(572, N'Ninh Bình', 32),
(573, N'Tam Điệp', 32),
(574, N'Yên Khánh', 32),
(575, N'Yên Mô', 32),
(872, N'Gia Viễn', 32),
(369, N'Anh Sơn', 33),
(370, N'Con Cuông', 33),
(371, N'Cửa Lò', 33),
(372, N'Diễn Châu', 33),
(373, N'Đô Lương', 33),
(374, N'Hưng Nguyên', 33),
(375, N'Kỳ Sơn', 33),
(376, N'Nam Đàn', 33),
(377, N'Nghi Lộc', 33),
(378, N'Nghĩa Đàn', 33),
(379, N'Quế Phong', 33),
(380, N'Quỳ Châu', 33),
(381, N'Quỳ Hợp', 33),
(382, N'Quỳnh Lưu', 33),
(383, N'Tân Kỳ', 33),
(384, N'Thanh Chương', 33),
(385, N'Tương Dương', 33),
(386, N'Vinh', 33),
(387, N'Yên Thành', 33),
(883, N'Thái Hòa', 33),
(358, N'Giao Thủy', 34),
(360, N'Hải Hậu', 34),
(361, N'Mỹ Lộc', 34),
(362, N'Nam Định', 34),
(363, N'Nam Trực', 34),
(364, N'Nghĩa Hưng', 34),
(365, N'Trực Ninh', 34),
(366, N'Vụ Bản', 34),
(367, N'Xuân Trường', 34),
(368, N'Ý Yên', 34),
(341, N'Bến Lức', 35),
(344, N'Cần Đước', 35),
(345, N'Cần Giuộc', 35),
(346, N'Châu Thành', 35),
(347, N'Đức Hòa', 35),
(348, N'Đức Huệ', 35),
(349, N'Mộc Hóa', 35),
(350, N'Tân An', 35),
(351, N'Tân Hưng', 35),
(352, N'Tân Thạnh', 35),
(354, N'Tân Trụ', 35),
(355, N'Thạnh Hóa', 35),
(356, N'Thủ Thừa', 35),
(357, N'Vĩnh Hưng', 35),
(849, N'Liên Hưng', 35),
(306, N'Bắc Hà', 36),
(307, N'Bảo Thắng', 36),
(308, N'Bảo Yên', 36),
(309, N'Bát Xát', 36),
(310, N'Cam Đường', 36),
(311, N'Lào Cai', 36),
(312, N'Mường Khương', 36),
(313, N'Sa Pa', 36),
(314, N'Than Uyên', 36),
(315, N'Văn Bàn', 36),
(316, N'Xi Ma Cai', 36),
(328, N'Bắc Sơn', 37),
(329, N'Bình Gia', 37),
(330, N'Cao Lăng', 37),
(331, N'Cao Lộc', 37),
(332, N'Đình Lập', 37),
(333, N'Hữu Lũng', 37),
(334, N'Lạng Sơn', 37),
(336, N'Lộc Bình', 37),
(337, N'Tràng Định', 37),
(342, N'Văn Lãng', 37),
(343, N'Văn Quang', 37),
(317, N'Bảo Lâm', 38),
(318, N'Bảo Lộc', 38),
(319, N'Cát Tiên', 38),
(320, N'Đà Lạt', 38),
(321, N'Đạ Tẻh', 38),
(322, N'Đạ Huoai', 38),
(323, N'Di Linh', 38),
(324, N'Đơn Dương', 38),
(325, N'Đức Trọng', 38),
(326, N'Lạc Dương', 38),
(327, N'Lâm Hà', 38),
(296, N'Điện Biên', 39),
(297, N'Điện Biên Đông', 39),
(298, N'Điện Biên Phủ', 39),
(299, N'Lai Châu', 39),
(300, N'Mường Lay', 39),
(301, N'Mường Tè', 39),
(302, N'Phong Thổ', 39),
(303, N'Sìn Hồ', 39),
(304, N'Tủa Chùa', 39),
(305, N'Tuần Giáo', 39),
(290, N'Đắk Glei', 40),
(291, N'Đắk Tô', 40),
(292, N'Kon Plông', 40),
(293, N'Kon Tum', 40),
(294, N'Ngọc Hồi', 40),
(295, N'Sa Thầy', 40),
(715, N'Đắk Glei', 40),
(716, N'Đắk Hà', 40),
(717, N'Đắk Tô', 40),
(718, N'Kon Plông', 40),
(719, N'Kon Tum', 40),
(720, N'Ngọc Hồi', 40),
(721, N'Sa Thầy', 40),
(277, N'An Biên', 41),
(278, N'An Minh', 41),
(279, N'Châu Thành', 41),
(280, N'Gò Quao', 41),
(281, N'Gồng Giềng', 41),
(282, N'Hà Tiên', 41),
(283, N'Hòn Đất', 41),
(284, N'Kiên Hải', 41),
(285, N'Phú Quốc', 41),
(286, N'Rạch Giá', 41),
(287, N'Tân Hiệp', 41),
(288, N'Vĩnh Thuận', 41),
(269, N'Nha Trang', 42),
(270, N'Khánh Vĩnh', 42),
(271, N'Diên Khánh', 42),
(272, N'Ninh Hòa', 42),
(273, N'Khánh Sơn', 42),
(274, N'Cam Ranh', 42),
(275, N'Trường Sa', 42),
(276, N'Vạn Ninh', 42),
(262, N'Ân Thi', 43),
(263, N'Hưng Yên', 43),
(264, N'Khoái Châu', 43),
(265, N'Tiên Lữ', 43),
(266, N'Văn Giang', 43),
(267, N'Văn Lâm', 43),
(268, N'Yên Mỹ', 43),
(705, N'Ân Thi', 43),
(706, N'Hưng Yên', 43),
(707, N'Khoái Châu', 43),
(708, N'Kim Động', 43),
(709, N'Mỹ Hào', 43),
(710, N'Phù Cừ', 43),
(224, N'Đà Bắc', 44),
(225, N'Hòa Bình', 44),
(226, N'Kim Bôi', 44),
(227, N'Kỳ Sơn', 44),
(228, N'Lạc Sơn', 44),
(229, N'Lạc Thủy', 44),
(230, N'Lương Sơn', 44),
(231, N'Mai Châu', 44),
(232, N'Tân Lạc', 44),
(233, N'Yên Thủy', 44),
(873, N'Cao Phong', 44),
(682, N'Châu Thành', 45),
(683, N'Long Mỹ', 45),
(685, N'Phụng Hiệp', 45),
(687, N'Vị Thanh', 45),
(688, N'Vị Thủy', 45),
(890, N'Châu Thành A', 45),
(891, N'Ngã Bảy', 45),
(234, N'Bình Giang', 46),
(235, N'Cẩm Giàng', 46),
(236, N'Chí Linh', 46),
(238, N'Gia Lộc', 46),
(239, N'Hải Dương', 46),
(241, N'Kim Thành', 46),
(242, N'Nam Sách', 46),
(243, N'Ninh Giang', 46),
(244, N'Kinh Môn', 46),
(245, N'Ninh Giang', 46),
(246, N'Thanh Hà', 46),
(247, N'Thanh Miện', 46),
(248, N'Từ Kỳ', 46),
(214, N'Cẩm Xuyên', 47),
(215, N'Can Lộc', 47),
(216, N'Đức Thọ', 47),
(217, N'Hà Tĩnh', 47),
(218, N'Hồng Lĩnh', 47),
(219, N'Hương Khê', 47),
(220, N'Hương Sơn', 47),
(221, N'Kỳ Anh', 47),
(222, N'Nghi Xuân', 47),
(223, N'Thạch Hà', 47),
(881, N'Vũ Quang', 47),
(882, N'Lộc Hà', 47),
(689, N'Bình Lục', 49),
(690, N'Duy Tiên', 49),
(691, N'Kim Bảng', 49),
(692, N'Lý Nhân', 49),
(693, N'Phủ Lý', 49),
(694, N'Thanh Liêm', 49),
(498, N'Bắc Mê', 50),
(499, N'Bắc Quang', 50),
(500, N'Đồng Văn', 50),
(501, N'Hà Giang', 50),
(502, N'Hoàng Su Phì', 50),
(503, N'Mèo Vạt', 50),
(504, N'Quản Bạ', 50),
(505, N'Vị Xuyên', 50),
(506, N'Xín Mần', 50),
(507, N'Yên Minh', 50),
(187, N'An Khê', 51),
(188, N'Ayun Pa ', 51),
(189, N'Chư Păh', 51),
(190, N'Chư Prông  ', 51),
(191, N'Chư Sê ', 51),
(192, N'Đức Cơ  ', 51),
(193, N'KBang  ', 51),
(194, N'Krông Chro', 51),
(195, N'Krông Pa ', 51),
(196, N'La Grai  ', 51),
(197, N'Mang Yang ', 51),
(198, N'Pleiku', 51),
(826, N'Cao Lãnh', 52),
(827, N'Châu Thành', 52),
(828, N'Hồng Ngự', 52),
(829, N'Lai Vung', 52),
(830, N'Lấp Vò', 52),
(831, N'Tam Nông', 52),
(832, N'Tân Hồng', 52),
(833, N'Thanh Bình', 52),
(834, N'Tháp Mười', 52),
(835, N'Xa Đéc', 52),
(634, N'Biên Hòa', 53),
(635, N'Định Quán', 53),
(636, N'Long Khánh', 53),
(637, N'Long Thành', 53),
(638, N'Nhơn Trạch', 53),
(639, N'Tân Phú', 53),
(640, N'Thống Nhất', 53),
(641, N'Vĩnh Cừu', 53),
(642, N'Xuân Lộc', 53),
(838, N'Trảng Bom', 53),
(455, N'Buôn Đôn', 56),
(456, N'Buôn Ma Thuột', 56),
(457, N'Cư Jút', 56),
(458, N'Cư M''gar', 56),
(459, N'Đắk Mil', 56),
(460, N'Đắk Nông', 56),
(461, N'Đắk R''lấp', 56),
(462, N'Ea H''leo', 56),
(463, N'Ea Kra', 56),
(464, N'Ea Súp', 56),
(465, N'Krông A Na', 56),
(466, N'Krông Bông', 56),
(467, N'Krông Búk', 56),
(468, N'Krông Năng', 56),
(469, N'Krông Nô', 56),
(470, N'Krông Pắc', 56),
(471, N'Lắk', 56),
(472, N'M''Đrắt', 56),
(176, N'Bảo Lạc', 57),
(177, N'Cao Bắng', 57),
(178, N'Hạ Lang', 57),
(179, N'Hà Quảng', 57),
(180, N'Hòa An', 57),
(181, N'Nguyên Bình', 57),
(182, N'Quảng Hòa', 57),
(183, N'Thạch An', 57),
(184, N'Thông Nông', 57),
(185, N'Trà Lĩnh', 57),
(186, N'Trùng Khánh', 57),
(491, N'Cà Mau', 58),
(492, N'Cái Nước', 58),
(493, N'Đầm Dơi', 58),
(494, N'Ngọc Hiển', 58),
(495, N'Thới Bình', 58),
(496, N'Trần Văn Thời', 58),
(497, N'U Minh', 58),
(887, N'Năm Căn', 58),
(888, N'Phú Tân', 58),
(654, N'Bắc Bình', 59),
(655, N'Đức Linh', 59),
(656, N'Hàm Tân', 59),
(657, N'Hàm Thuận Bắc', 59),
(658, N'Hàm Thuận Nam', 59),
(659, N'Phan Thiết', 59),
(660, N'Phú Quí', 59),
(661, N'Tánh Linh', 59),
(662, N'Tuy Phong', 59),
(897, N'La Gi', 59),
(836, N'Bình Long', 60),
(839, N'Phước Long', 60),
(851, N'Bù Ðăng', 60),
(852, N'Chơn Thành', 60),
(473, N'Bến Cát', 61),
(474, N'Dầu Tiếng', 61),
(475, N'Dĩ An', 61),
(476, N'Tân Uyên', 61),
(477, N'Thủ Dầu Một', 61),
(478, N'Thuận An', 61),
(841, N'Lái Thiêu', 61),
(896, N'Phú Giáo', 61),
(158, N'An Lão', 62),
(159, N'An Nhơn', 62),
(160, N'Hoài Ân', 62),
(161, N'Hoài Nhơn', 62),
(162, N'Phù Cát', 62),
(163, N'Phù Mỹ', 62),
(164, N'Qui Nhơn', 62),
(165, N'Tây Sơn', 62),
(166, N'Tuy Phước', 62),
(167, N'Vân Canh', 62),
(168, N'Vĩnh Thạnh', 62),
(673, N'Ba Tri', 63),
(674, N'Bến Tre', 63),
(675, N'Bình Đại', 63),
(676, N'Châu Thành', 63),
(677, N'Chợ Lách', 63),
(678, N'Giồng Trôm', 63),
(679, N'Mỏ Cày', 63),
(680, N'Thạnh Phú', 63),
(483, N'Bắc Ninh', 64),
(484, N'Gia Bình', 64),
(485, N'Lương Tài', 64),
(486, N'Quế Võ', 64),
(487, N'Thuận Thành', 64),
(488, N'Tiên Du', 64),
(489, N'Từ Sơn', 64),
(490, N'Yên Phong', 64),
(479, N'Bạc Liêu', 65),
(480, N'Giá Rai', 65),
(481, N'Hồng Dân', 65),
(482, N'Vĩnh Lợi', 65),
(884, N'Phước Long', 65),
(885, N'Đông Hải', 65),
(886, N'Hòa Bình', 65),
(169, N'Ba Bể', 66),
(170, N'Bắc Kạn', 66),
(171, N'Bạch Thông ', 66),
(172, N'Chợ Đồn', 66),
(173, N'Chợ Mới', 66),
(174, N'Na Rì', 66),
(175, N'Ngân Sơn', 66),
(663, N'Bắc Giang', 67),
(664, N'Hiệp Hòa', 67),
(665, N'Lạng Giang', 67),
(666, N'Lục Nam', 67),
(667, N'Lục Ngạn', 67),
(668, N'Sơn Động', 67),
(669, N'Tân Yên', 67),
(670, N'Việt Yên', 67),
(671, N'Yên Dũng', 67),
(672, N'Yên Thế', 67),
(151, N'Bà Rịa', 68),
(152, N'Châu Đất', 68),
(153, N'Côn Đảo', 68),
(154, N'Long Đất', 68),
(155, N'Tân Thành', 68),
(156, N'Vũng Tàu', 68),
(157, N'Xuyên Mộc', 68),
(898, N'Long Điền', 68),
(899, N'Đất Đỏ', 68),
(643, N'An Phú', 69),
(644, N'Châu Đốc', 69),
(645, N'Châu Phú', 69),
(646, N'Châu Thành', 69),
(647, N'Chợ Mới', 69),
(648, N'Long Xuyên', 69),
(649, N'Phú Tân', 69),
(650, N'Tân Châu', 69),
(651, N'Thoại Sơn', 69),
(652, N'Tịnh Biên', 69),
(653, N'Tri Tôn', 69),
(249, N'An Hải', 70),
(250, N'An Lão', 70),
(251, N'Bạch Long Vỹ', 70),
(253, N'Đồ Sơn', 70),
(254, N'Hồng Bàng', 70),
(255, N'Kiến An', 70),
(256, N'Kiến Thụy', 70),
(257, N'Lê Chân', 70),
(258, N'Ngô Quyền', 70),
(259, N'Thủy Nguyên', 70),
(260, N'Tiên Lãng', 70),
(261, N'Vĩnh Bảo', 70),
(854, N'Cát Bà', 70),
(900, N'Dương Kinh', 70),
(819, N'Đảo Hòang Sa', 71),
(820, N'Hải Châu', 71),
(821, N'Hòa Vang', 71),
(822, N'Liên Chiểu', 71),
(823, N'Ngũ Hành Sơn', 71),
(824, N'Sơn Trà', 71),
(825, N'Thanh Khê', 71),
(844, N'Cẩm Lệ', 71),
(681, N'Cần Thơ', 72),
(684, N'Ô Môn', 72),
(686, N'Thốt Nốt', 72),
(837, N'Ninh Kiều', 72),
(848, N'Cái Răng', 72),
(855, N'Bình Thủy', 72),
(892, N'Phong Điền', 72),
(893, N'Cờ Đỏ', 72),
(894, N'Thới Lai', 72),
(895, N'Vĩnh Thạnh', 72);