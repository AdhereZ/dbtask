-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-12-02 15:09:08
-- 服务器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `lrms`
--

-- --------------------------------------------------------

--
-- 表的结构 `a_manage_list`
--

CREATE TABLE `a_manage_list` (
  `ID` int(11) NOT NULL COMMENT '账号ID',
  `am_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `am_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `am_limit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='账号管理表';

--
-- 转存表中的数据 `a_manage_list`
--

INSERT INTO `a_manage_list` (`ID`, `am_account`, `am_password`, `am_limit`) VALUES
(1, 'lab001', '201902010314', 'manager'),
(2, 'lab002', '201902010315', 'manager');

-- --------------------------------------------------------

--
-- 表的结构 `book_list`
--

CREATE TABLE `book_list` (
  `ID` int(20) NOT NULL,
  `book_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书ID',
  `book_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书名',
  `book_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类',
  `book_status` int(20) NOT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='图书管理表';

--
-- 转存表中的数据 `book_list`
--

INSERT INTO `book_list` (`ID`, `book_ID`, `book_name`, `book_type`, `book_status`) VALUES
(1, '001', 'Foundation Episode 1', 'Sci Fic', 1);

-- --------------------------------------------------------

--
-- 表的结构 `e_distribute_list`
--

CREATE TABLE `e_distribute_list` (
  `ID` int(20) NOT NULL,
  `ed_college` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学院',
  `ed_class` int(30) NOT NULL COMMENT '教室',
  `ed_classID` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '教室号',
  `ed_equiptype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备类别',
  `ed_equipcount` int(20) NOT NULL COMMENT '设备数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='设备分布表';

-- --------------------------------------------------------

--
-- 表的结构 `e_total_list`
--

CREATE TABLE `e_total_list` (
  `ID` int(20) NOT NULL,
  `et_classID` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '教室号',
  `et_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备类别',
  `et_equipID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备编号',
  `et_equipstatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备状态',
  `et_equipmessage` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='设备总表';

--
-- 转存表中的数据 `e_total_list`
--

INSERT INTO `e_total_list` (`ID`, `et_classID`, `et_type`, `et_equipID`, `et_equipstatus`, `et_equipmessage`) VALUES
(1, '', '投影仪', 'pro001', '正常', '');

-- --------------------------------------------------------

--
-- 表的结构 `e_usage_list`
--

CREATE TABLE `e_usage_list` (
  `ID` int(20) NOT NULL,
  `eu_resourcetype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源分类',
  `eu_resourceID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源编号',
  `eu_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '时间',
  `eu_oprationtype` int(20) NOT NULL COMMENT '操作类型',
  `eu_count` int(30) NOT NULL COMMENT '数量',
  `eu_userID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作人信息',
  `eu_remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='设备使用情况表';

--
-- 转存表中的数据 `e_usage_list`
--

INSERT INTO `e_usage_list` (`ID`, `eu_resourcetype`, `eu_resourceID`, `eu_time`, `eu_oprationtype`, `eu_count`, `eu_userID`, `eu_remark`) VALUES
(1, 'book', '001', '2021-11-21', 3, 1, 'lab001', '送了一本书');

-- --------------------------------------------------------

--
-- 表的结构 `rent_list`
--

CREATE TABLE `rent_list` (
  `ID` int(20) NOT NULL,
  `user_ID` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '借出用户ID',
  `rent_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '借出时间',
  `return_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归还时间',
  `resourse_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源类型',
  `resourse_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='出借表';

--
-- 转存表中的数据 `rent_list`
--

INSERT INTO `rent_list` (`ID`, `user_ID`, `rent_time`, `return_time`, `resourse_type`, `resourse_ID`) VALUES
(1, 'lab001', '2021-11-22', '∞', 'Book', '001');

-- --------------------------------------------------------

--
-- 表的结构 `resource_keys`
--

CREATE TABLE `resource_keys` (
  `ID` int(11) NOT NULL,
  `NUMBER` int(11) NOT NULL COMMENT '钥匙编号',
  `LABDOOR_NUM` int(11) NOT NULL COMMENT '实验室编号',
  `STATUS` int(11) NOT NULL COMMENT '钥匙状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `resource_keys`
--

INSERT INTO `resource_keys` (`ID`, `NUMBER`, `LABDOOR_NUM`, `STATUS`) VALUES
(1, 1, 101, 1);

-- --------------------------------------------------------

--
-- 表的结构 `r_distribute_list`
--

CREATE TABLE `r_distribute_list` (
  `ID` int(20) NOT NULL,
  `rd_userID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分配用户ID',
  `rd_renttime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '借出时间',
  `rd_returntime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归还时间',
  `rd_resourcetype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源类型',
  `rd_resourceID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='资源分配表';

--
-- 转存表中的数据 `r_distribute_list`
--

INSERT INTO `r_distribute_list` (`ID`, `rd_userID`, `rd_renttime`, `rd_returntime`, `rd_resourcetype`, `rd_resourceID`) VALUES
(1, 'lab001', '2021-11-22', '∞', 'server', '001');

-- --------------------------------------------------------

--
-- 表的结构 `r_manage_list`
--

CREATE TABLE `r_manage_list` (
  `ID` int(20) NOT NULL,
  `rm_resourcetype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源类型',
  `rm_resourceID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源编号',
  `rm_status` int(10) NOT NULL COMMENT '状态',
  `rm_count` int(20) NOT NULL COMMENT '数量',
  `rm_updatetime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新时间（最近一次）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='资源管理表';

--
-- 转存表中的数据 `r_manage_list`
--

INSERT INTO `r_manage_list` (`ID`, `rm_resourcetype`, `rm_resourceID`, `rm_status`, `rm_count`, `rm_updatetime`) VALUES
(1, 'ink', '001', 1, 3999, '2021-11-21'),
(2, 'paper', '003', 0, 10, '2021-1-1');

-- --------------------------------------------------------

--
-- 表的结构 `webresource_list`
--

CREATE TABLE `webresource_list` (
  `ID` int(11) NOT NULL,
  `web_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务器ID',
  `web_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用途',
  `web_status` int(10) NOT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='实验室服务器';

--
-- 转存表中的数据 `webresource_list`
--

INSERT INTO `webresource_list` (`ID`, `web_ID`, `web_type`, `web_status`) VALUES
(1, 'LAB001', 'SEARCH', 1);

--
-- 转储表的索引
--

--
-- 表的索引 `a_manage_list`
--
ALTER TABLE `a_manage_list`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `e_distribute_list`
--
ALTER TABLE `e_distribute_list`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `e_total_list`
--
ALTER TABLE `e_total_list`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `e_usage_list`
--
ALTER TABLE `e_usage_list`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `rent_list`
--
ALTER TABLE `rent_list`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `resource_keys`
--
ALTER TABLE `resource_keys`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `r_distribute_list`
--
ALTER TABLE `r_distribute_list`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `r_manage_list`
--
ALTER TABLE `r_manage_list`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `webresource_list`
--
ALTER TABLE `webresource_list`
  ADD PRIMARY KEY (`ID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `a_manage_list`
--
ALTER TABLE `a_manage_list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '账号ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `book_list`
--
ALTER TABLE `book_list`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `e_distribute_list`
--
ALTER TABLE `e_distribute_list`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `e_total_list`
--
ALTER TABLE `e_total_list`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `e_usage_list`
--
ALTER TABLE `e_usage_list`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `rent_list`
--
ALTER TABLE `rent_list`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `resource_keys`
--
ALTER TABLE `resource_keys`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `r_distribute_list`
--
ALTER TABLE `r_distribute_list`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `r_manage_list`
--
ALTER TABLE `r_manage_list`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `webresource_list`
--
ALTER TABLE `webresource_list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
