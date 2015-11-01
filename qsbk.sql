-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-11-01 11:00:55
-- 服务器版本： 5.6.21
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `qsbk`
--

CREATE TABLE IF NOT EXISTS `qsbk` (
  `id` int(11) NOT NULL COMMENT '自增i标识',
  `content` varchar(255) NOT NULL COMMENT '糗事百科的段子内容',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `code` varchar(25) NOT NULL COMMENT '段子的唯一id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '数据状态.默认为0'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='糗事百科段子大集合';

--
-- 转存表中的数据 `qsbk`
--

INSERT INTO `qsbk` (`id`, `content`, `addtime`, `code`, `status`) VALUES
(41, '\n\n无聊啊，放假只能在家玩撸啊撸……\n\n\n', 1446346632, 'qiushi_tag_113589622', 0),
(42, '\n\n不要不要的了，嘴麻了，腮帮子疼\n\n\n', 1446346632, 'qiushi_tag_113591956', 0),
(43, '\n\n最反感的就是在火车上公放音乐和电视剧的了，你以为每个人都是你自己都爱听你的歌看你爱的电视剧！SB\n\n\n', 1446346632, 'qiushi_tag_113589185', 0),
(44, '\n\n听同事说今天过节，我真的不知道今天什么节，我只知道端午节农历五月初五，中秋节农历八月十五，春节正月初一，请原谅我的孤陋寡闻\n\n\n', 1446346632, 'qiushi_tag_113591850', 0),
(45, '\n\n干脆利落路虎哥，两台车刮擦了下停在那里占了两个车道只剩一个车道可走了，大家都在那车道排队一个一个走，一台新车应该也是新手怕刮到护栏慢腾腾的不敢过去，后面一路虎急了，下车上前说我来帮你开过去，蹭一脚油就过去了，不过车子一侧在护栏上刮的那叫一个好看，这哥们一看这直接回车上拿了厚厚一沓五千快放那新手车主手里，干脆利落一溜烟走了。\n\n\n', 1446346632, 'qiushi_tag_113591660', 0),
(46, '\n\n坐在驾驶室里打电话，老婆抱着闺女嘘嘘时，顺手带了一下车门。我以为她上车了。一脚油门就走了。边走还边跟老婆聊天，半路上才发现人没了。别说了，都是泪。键盘在地上，我在键盘上。\n\n\n', 1446346632, 'qiushi_tag_113596584', 0),
(47, '\n\n结婚四年了。他从来就没把我放心上，这两年更甚，外面的婊子换完一个又一个。我委屈求全只为给女儿一个完整的家，我这样做是不是错了？我也累了！真的不想再坚持了。我是不是也该放弃了？\n\n\n', 1446346632, 'qiushi_tag_113596563', 0),
(48, '\n\n不得不佩服蚂蚁的寻食能力的强大，我刚才吃包子，扔了点包子皮，这不没过几分钟，浩浩荡荡的蚂蚁大军就杀过来了，密密麻麻一条黑线啊，小小的包子皮七扭八歪的被它们扛走了……\n\n\n', 1446346632, 'qiushi_tag_113589989', 0),
(49, '\n\n今天问一姐们：穿什么裤子更显年轻呀？这二货幽幽的说了一句：我实在想不出有什么能比穿纸尿裤更年轻的了………\n\n\n', 1446346632, 'qiushi_tag_113596588', 0),
(50, '\n\n又到周末，老友小张打电话约晚上喝酒。老婆一把夺过手机：“小张兄弟么？以后喝酒不要找你大哥了，我们准备生二胎。”小张：“大嫂等等，你和大哥四十多了吧，儿子马上结婚了，还真打算生啊?”老婆：“咋说话呢？国家都同意了，你还有意见啊！”啪，把电话挂了。我一头雾水：“老婆，你真有这想法啊？”老婆：“做美梦吧！把身体养好，等着抱孙子吧，生俩我一个人看不过来。”尼玛，这也行？！\n\n\n', 1446346632, 'qiushi_tag_113596570', 0),
(51, '\n\n一个人躺宿舍床上边看电视边玩手机！手机里面放着beyond96演唱会，家强哭唱海阔天空的视频，情不自禁的落泪！这时一室友跑进来，看到撸主在抹眼泪！又漂了一眼电视，惊讶的大喊到：“卧槽！你这么犀利的人，看甄嬛传特么既然哭了！”尼玛……！\n\n\n', 1446346632, 'qiushi_tag_113596564', 0),
(52, '\n\n老婆:［抽泣］老公我被车撞了。老公:［着急］在哪？被什么车撞了？？老婆:［大哭］在商场，被购物车撞了。老公:［无奈］……说吧，要多少？\n\n\n', 1446346632, 'qiushi_tag_113596560', 0),
(53, '\n\n最近很多人一直在讨论2胎的事情，看到最多都特么是各种抱怨，大概分两种，身体累、精神累，NND，要是放开二房的政策，还不累死你们\n\n\n', 1446346632, 'qiushi_tag_113596582', 0),
(54, '\n\n小时候家里条件差，喜欢的玩具买不起！后来买得起了也长大了，寒窗苦读十几年眼看大学无望，高二退学了，可第二年大学扩招了！找了份工作没技术经验，努力一年学成了，可又改自动化了！干脆自己做点生意，东拼西借有点模样了又他妈经济危机了！重新开始，回来上班，工作强度又大了！以前工资低买不起房，现在工资涨了可房子更贵了！辛辛苦苦种一年庄稼丰收了，妈的粮食价格下调了！想从头开始再拼搏，发现自己都30多岁孩子都俩了！我这是得罪哪路神仙了！\n\n\n', 1446346632, 'qiushi_tag_113596552', 0),
(55, '\n\n今早宿舍起床，看到一哥们晚上睡觉就盖一个小单被，嘴贱的来一句你盖这个不冷？哥们说：我插电褥子还热呢，晚上直出汗。看了看他，我直接鄙视的说：交朋友交你这样的，现在你连自己都骗^_^\n\n\n', 1446346632, 'qiushi_tag_113596580', 0),
(56, '\n\n闺蜜在网络里谈了个男朋友，虽然没见过面，但，都倾心彼此。今天闺蜜突然跑过来，哭哭啼啼的告诉我，男友将她的微信，QQ全部删除了！一切联系方式都断了。我问她，你难道和他见过面？被他那啥了？闺蜜摇摇头，说:认识五个月什么都没发生过，只知道他叫~宇。那不就结了，既然没发生过什么，那你伤心干啥？闺蜜幽幽地说:可我的心给他了呀！呃~什么都别说了，你撞墙吧！\n\n\n', 1446346632, 'qiushi_tag_113596571', 0),
(57, '\n\n隔壁新搬来了对年轻夫妇。男的经常“饭桶，饭桶”的“骂”他媳妇，我听着很不是滋味。今天在外面碰到了他媳妇，我鼓着勇气跟她说:“你老公脾气真不好，老说你饭桶，你不生气吗？”结果她听后破 口大骂:“你这人怎么说话呢？你才是饭桶，我叫范彤~范彤！！”我:“呃~不好意思！不好意思啊！”\n\n\n', 1446346632, 'qiushi_tag_113596561', 0),
(58, '\n\n楼主一家三口逛超市。老婆把八个月大的宝宝往购物车上一放，便推着去选购东西。后来，我们在收银台前准备结账，旁边一个约三四岁的小萝莉很好奇的盯着购物车上的宝宝看，，，然后，小萝莉朝她妈妈大声喊 : “妈妈，妈妈，我也是从这间超市买来的吗？”即时萌翻全场...\n\n\n', 1446346632, 'qiushi_tag_113596555', 0),
(59, '\n\n刚才去理发，他们两口子女的理发男的开超市。理发6元，我给她一张一百的，也许是她缺零钱，费了半天劲终于凑够94元找给我。我说再买点别的东西，男的在吃饭，女的就跟了过来。我买了一条烟78元，一盒牙膏15元，付完钱女的发现她费劲找给我的94元仅剩下1元，幽怨地说：大哥，你是不是在玩我？男的顿时放下碗筷说：他敢玩你？看我不揍死他！……终于解释清楚了，艹！买点东西还有人身安全之忧？\n\n\n', 1446346632, 'qiushi_tag_113596554', 0),
(60, '\n\n在工地干活，一向很抠的同事突然递给我一支烟，他也拿出一支叼在嘴上。我俩都在等待对方拿打火机点烟，二十秒后，他又把给我的一支烟要了回去，忿忿地说：我以为你有打火机呢！\n\n\n', 1446346632, 'qiushi_tag_113596551', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qsbk`
--
ALTER TABLE `qsbk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qsbk`
--
ALTER TABLE `qsbk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增i标识',AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
