CREATE DATABASE [ReadingBookSystem]
USE [ReadingBookSystem]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[ID] INT IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [nvarchar](10) NOT NULL,
	[Authority] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookCase](
	[BookCaseID] INT IDENTITY(1,1) NOT NULL,
	[BookCaseName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BookCase] PRIMARY KEY CLUSTERED 
(
	[BookCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [nvarchar](10)NOT NULL,
	[BookTitle] [nvarchar](50) NULL,
	[Author] [nvarchar](50) NULL,
	[Brief] [nvarchar](200) NULL,
	[Publisher] [nvarchar](10) NULL,
	[Content] [nvarchar](1500) NULL,
	[Category] [nvarchar](50) NULL,
  CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contain](
	[BookCaseID] INT IDENTITY(1,1) NOT NULL,
	[BookID] [nvarchar](10) NOT NULL,
	[CreateDate] [nvarchar](10)  NULL,
 CONSTRAINT [PK_Contain] PRIMARY KEY CLUSTERED 
(
	[BookID],
	[BookCaseID]ASC	
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[ID] INT IDENTITY(1,1)  NOT NULL,
	[RoleID] [nvarchar](10)  NOT NULL,
	 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID],
	[RoleID]	
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SELECT * FROM [dbo].[User]
SELECT * FROM [dbo].[UserRole]

INSERT [dbo].[User] ([UserName], [Password]) VALUES (N'viet123', N'123')
INSERT [dbo].[User] ([UserName], [Password]) VALUES (N'nam012', N'012')
INSERT [dbo].[User] ([UserName], [Password]) VALUES (N'tung234', N'234')
INSERT [dbo].[User] ([UserName], [Password]) VALUES (N'thuan345', N'345')
INSERT [dbo].[User] ([UserName], [Password]) VALUES (N'trang456', N'456')
INSERT [dbo].[User] ([UserName], [Password]) VALUES (N'ha789', N'789')
INSERT [dbo].[User] ([UserName], [Password]) VALUES (N'vu678', N'678')

INSERT [dbo].[Role] ([RoleID], [Authority]) VALUES (N'AM', N'Admin')
INSERT [dbo].[Role] ([RoleID], [Authority]) VALUES (N'US', N'User')
INSERT [dbo].[Role] ([RoleID], [Authority]) VALUES (N'OT', N'Other')

INSERT [dbo].[BookCase] ([BookCaseName]) VALUES (N'Tu sach cua Nam')
INSERT [dbo].[BookCase] ([BookCaseName]) VALUES (N'Tu sach cua Viet')
INSERT [dbo].[BookCase] ([BookCaseName]) VALUES (N'Tu sach cua Tung')
INSERT [dbo].[BookCase] ([BookCaseName]) VALUES (N'Tu sach cua Thuan')
INSERT [dbo].[BookCase] ([BookCaseName]) VALUES (N'Tu sach cua Trang')
INSERT [dbo].[BookCase] ([BookCaseName]) VALUES (N'Tu sach cua Ha')
INSERT [dbo].[BookCase] ([BookCaseName]) VALUES (N'Tu sach cua anh Vu')

INSERT [dbo].[UserRole] ([RoleID]) VALUES (N'AM')
INSERT [dbo].[UserRole] ([RoleID]) VALUES (N'AM')
INSERT [dbo].[UserRole] ([RoleID]) VALUES (N'US')
INSERT [dbo].[UserRole] ([RoleID]) VALUES (N'US')
INSERT [dbo].[UserRole] ([RoleID]) VALUES (N'US')
INSERT [dbo].[UserRole] ([RoleID]) VALUES (N'AM')
INSERT [dbo].[UserRole] ([RoleID]) VALUES (N'AM')

INSERT [dbo].[Contain] ([BookID], [CreateDate]) VALUES (N'09', N'14/10/2021')
INSERT [dbo].[Contain] ([BookID], [CreateDate]) VALUES (N'00', N'14/12/2021')
INSERT [dbo].[Contain] ([BookID], [CreateDate]) VALUES (N'01', N'14/12/2021')
INSERT [dbo].[Contain] ([BookID], [CreateDate]) VALUES (N'04', N'14/12/2021')
INSERT [dbo].[Contain] ([BookID], [CreateDate]) VALUES (N'06', N'14/12/2021')
INSERT [dbo].[Contain] ([BookID], [CreateDate]) VALUES (N'03', N'14/12/2021')
INSERT [dbo].[Contain] ([BookID], [CreateDate]) VALUES (N'05', N'14/12/2021')

INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'01', N'Anna Karenina', N'Leo Tolstoy', N'image/anna.jpg', N'14/10/2017', N'Anna (Tatyana Drubich) - cô vợ trẻ đẹp của Bá tước Aleksey Karenin (Oleg Yankovsky) - kém chồng tới 20 tuổi. Cô gặp chàng sĩ quan điển trai, lịch thiệp tên là Vronsky (Yaroslav Boyko), và giữa họ nảy nở một chuyện tình. Giờ đây, Anna bị giằng xé giữa tình yêu của mình dành cho Vronsky và cuộc hôn nhân với Karenin. Dư luận xã hội lên án hành vi của Anna và Vronsky. Họ rơi vào trạng thái đầy hiểm nguy. Không thể chịu đựng cuộc xung đột giữa những cảm xúc mới của bản thân với trách nhiệm của người vợ, người mẹ, Anna đã lao mình vào một đoàn tàu hỏa đang chạy, kết thúc số phận đầy bi kịch.', N'Romance' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'02', N'Đứng Trong Bóng Tối', N'Shanon McKenna', N'image/bongtoi.jpg', N'14/10/2017', N'Connor McCloud là một trong những anh hùng đang trên đà xuống dốc. Mang theo bên mình tình yêu bao năm trời dành cho Erin, cô con gái của cựu cấp trên, Connor cảm thấy mình chính là nguyên nhân khiến cho Erin phải đau khổ khi anh đã tống người bố tham nhũng của cô vào tù và đánh đập dã man một gã đàn ông khác ngay trước mắt cô. Sự thật nghiệt ngã ấy khiến Erin tổn thương sâu sắc. Biết rằng Novak và gã tay sai Georg Lusch - những kẻ từng đe dọa đến cuộc sống của Erin, đã trốn thoát khỏi nhà tù liên bang, Connor cảm thấy lo lắng hơn bao giờ hết. Không nhận được sự giúp đỡ từ FBI, anh đã tự mình tìm cách bảo vệ cô. Erin không nghĩ rằng cô cần tới sự bảo vệ, đặc biệt là từ người đàn ông lạnh lùng mà cô đã si mê từ khi còn là một thiếu nữ. Nhưng Connor vẫn một lần nữa bước vào cuộc sống của cô với vai trò một vệ sỹ. Đặc biệt, đó lại là người cô đã mê đắm từ lâu. Cô biết mình phải giữ khoảng cách với anh nhưng từ sâu thẳm tâm hồn cô là những khao khát thầm kín mãnh liệt. Cô muốn để anh bước vào thế giới của mình thêm một lần nữa…', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'03', N'Chim Cổ Đỏ', N'Jo NesBo', N'image/chimcodo.jpg', N'14/10/2017', N'Làm mất mặt lực lượng cảnh sát Na Uy trong chuyến viếng thăm của tổng thống Mỹ, Harry Hole bị chuyển công tác sang cục An ninh, theo dõi các hoạt động của chủ nghĩa phát xít mới trên đất Na Uy. Trong thời gian này anh phải điều tra cái chết của một người ủng hộ chủ nghĩa phát xít. Và đó mới chỉ là khởi đầu của một cuộc thanh trừng mà sát thủ tiến hành để lập lại cái mà hắn cho là công lý. Thủ phạm tự gọi mình là Chim cổ đỏ. Hắn ra tay để trả thù những kẻ hắn cho là đã phản bội hắn mà pháp luật đã không thể trừng trị. Hắn cũng cho rằng chỉ Thượng Đế mới có quyền phán xét hắn.', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'04', N'Cô Gái Có Hình Xăm Rồng', N'Stieg Larsson', N'image/cogai.jpg', N'14/10/2017', N'Bằng ngòi bút linh hoạt, uyển chuyển và sắc bén, Stieg Larsson đem đến cho bạn đọc những câu chuyện thú vị, gay cấn; những bí mật được chôn giấu bao đời nay của dòng họ Vanger. Những cuộc khám phá li kì, những sự thật sẽ được phơi bày ra ánh sáng sẽ được thể hiện đầy đủ trong tác phẩm. Cuốn tiểu thuyết đã được chuyển thể thành phim và đã đạt doanh thu khá cao.', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'05', N'Con Hủi', N'Helena Mniszek', N'image/conhui.jpg', N'14/10/2017', N'Con Hủi viết về một đề tài muôn thuở đó là tình yêu và những trở ngại. Tuy nhiên nó vẫn mang một màu sắc rất riêng. Câu chuyện xoay quanh hai nhân vật chính là đại công tước Valdermar Mikhorovxki- một người có học và giàu có, Xtefchia Rudexka- chỉ là con gái của người điền chủ nhỏ. Sự khác biệt về địa vị đã khiến cho chuyện tình của họ gặp nhiều trắc trở, từ đó tạo hấp dẫn cho câu chuyện.', N'Romance' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'06', N'Đề Thi Đãm Máu', N'Lôi Mễ', N'image/dethi.jpg', N'14/10/2017', N'Nội dung cuốn tiểu thuyết kể về nhân vật chính là một chàng trai vô cùng thông minh có tên là  Phương Mộc.  Anh chàng này có khả năng thiên bẩm là khắc họa chân dung tội phạm rất chính xác nên giúp đỡ cảnh sát nhiều trong việc phá án những vụ án giết người nguy hiểm. Rồi có những sự việc gì xảy ra tiếp theo, tại sao thầy giáo Tôn, người đã ra đề thi đẫm máu và nước mắt cho anh và những người thân bên cạnh anh lần lượt ra đi. Hãy theo dõi cuốn sách để tìm hiểu sự thật đằng sau những cái chết bí hiểm đó nhé.', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'07', N'Đồi Gió Hú', N'Emily Bronle', N'image/doigio.jpg', N'14/10/2017', N'Đồi Gió Hú, câu chuyện cổ điển về tình yêu ngang trái và tham vọng chiếm hữu, cuốn tiểu thuyết dữ dội và bí ẩn về Catherine Earnshaw, cô con gái nổi loạn của gia đình Earnshaw, với gã đàn ông thô ráp và điên rồ mà cha cô mang về nhà rồi đặt tên là Heathcliff, được trình diễn trên cái nền đồng truông, quả đồi nước Anh cô quạnh và đơn sơ không kém gì chính tình yêu của họ. Từ nhỏ đến lớn, sự gắn bó của họ ngày càng trở nên ám ảnh. Gia đình, địa vị xã hội, và cả số phận rắp tâm chống lại họ, bản tính dữ dội và ghen tuông tột độ cũng huỷ diệt họ, vậy nên toàn bộ thời gian hai con người yêu nhau đó đã sống trong thù hận và tuyệt vọng, mà cái chết chỉ có ý nghĩa khởi đầu. Một khởi đầu mới để hai linh hồn mãnh liệt đó dược tự do tái ngộ, Khi những cơn gió hoang vắng và điên cuồng tràn về quanh các lâu đài trong Đồi gió hú...', N'Romance' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'08', N'Hỏa Ngục', N'Dan Brown', N'image/hoanguc.jpg', N'14/10/2017', N'Hỏa ngục với nội dung rất kịch tính, độc đáo và hấp dẫn nói về vấn đề khá nhức nhối của nhân loại hiện nay qua những sự kiện, những tình tiết thể hiện tương đối hư cấu và nhân hóa, đó chính là sự gia tăng đột ngột dân số toàn cầu đồng thời cũng đặt ra những câu hỏi về vai trò của khoa học trong tương lai của chúng ta.', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'09', N'P.S.I Love You', N'Cecelia Ahern', N'image/iloveu.jpg', N'14/10/2017', N'P.S. I Love You là câu chuyện đầy cảm động và lãng mạn về Holly Kennedy–người đã mất chồng 7 năm trước khi bởi căn bệnh não quái ác. Quãng thời gian sau khi người chồng ra đi mãi mãi quả thực là một cơn ác mộng, cô dường như không còn niềm tin với cuộc sống, không còn thấy niềm vui hay mơ ước. Holly tưởng chừng có thể chết theo người chồng thương yêu của mình để trốn thoát khỏi khoảng trống đớn đau mà anh để lại. Và rồi, đã có một phép màu xảy ra khi cô chuẩn bị trở về thăm nhà mẹ ruột, một phép màu đã khiến trái tim cô hồi sinh...Là lá thư mà chính người chồng đã gửi lại...', N'Romance' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'00', N'Jane Eyre', N'Challote Bronte', N'image/jane.jpg', N'14/10/2017', N'Nội dung trải qua năm giai đoạn khác nhau: 1. Thời thơ ấu của Jane tại Lâu đài Gateshead; 2. Học tại Trường Lowood; 3. Làm gia sư tại Lâu đài Thornfield; 4. Sống ở Moor House; 5. Hội ngộ và kết hôn với Rochester tại Trang trại Ferndean. Xuyên suốt các phần này, cuốn tiểu thuyết đưa ra các quan điểm về một số vấn đề xã hội và ý tưởng quan trọng, trong đó có nhiều quan điểm chỉ trích hiện trạng lúc bấy giờ (the status quo).', N'Romance' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'11', N'Kiêu Hãnh Và Định Kiến', N'Jane Austen', N'image/kieuhanh.jpg', N'14/10/2017', N'Truyện kể về cuộc đối đầu giữa Elizabeth Bennet, con gái của một gia đình trung lưu, và Fitzwilliam Darcy, một địa chủ giàu có. Mặc dù họ để tâm tìm hiểu lẫn nhau, tác giả đã đảo ngược ý niệm thông thường về "thuở ban đầu": tính kiêu hãnh về giai cấp và tài sản của mình cùng định kiến về vị thế thấp kém của gia đình Elizabeth khiến Darcy lúc đầu muốn tránh xa cô, trong khi cô Elizabeth cũng kiêu hãnh vì lòng tự trọng của mình và có định kiến về cung cách trưởng giả của Darcy, trở nên một người con gái không giống như những người con gái khác chung quanh Darcy.', N'Romance' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'12', N'Kỳ Án Ánh Trăng', N'Quỷ Cổ Ngữ', N'image/kyan.jpg', N'14/10/2017', N'Câu chuyện xoay quanh khu ký túc xá của một trường đại học y nổi tiếng ở Trung Quốc, hằng năm cứ vào nửa đêm ngày 16 tháng 6 là lại có một nữ sinh trèo lên cửa sổ phòng 405, khu nhà 13  và nhảy xuống chết. Sự kiện này kéo dài lên đến 12 năm nhưng vẫn không một ai có thể tìm được lý do những cô gái đó lại chết mặc dù đã cố tìm mọi cách để ngăn cản nhưng vẫn có người chết.', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'13', N'Mật mã Da Vinci', N'Dan Brown', N'image/matma.jpg', N'14/10/2017', N'Câu chuyện kể về nhân vật Langdon đang sống yên ổn, bỗng nhiên một ngày lại rơi vào một trò có thể nguy hiểm đến tính mạng. Những may mắn ông đã gặp một người phụ nữ xinh đẹp nhưng không kém phần thông minh đó chính là Sophia . Sau một chuyến chạy trốn đầy nguy hiểm nhờ sự giúp đỡ của một nhà sử học tài ba có tênTeabing cả Langdon và Sophie đã khám phá được một bí mật động trời.', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'14', N'Nếu em không phải giấc mơ', N'Marc Levy', N'image/neuem.jpg', N'14/10/2017', N'Một câu chuyện tình yêu kì lạ và huyền ảo như một giấc mơ tại thành phố San Francisco. Lauren – người nữ bác sĩ nội trú – đã phải nằm trong phòng hậu phẫu của bệnh viên bởi cơn hôn mê kéo dài sau một tai nạn trên đường đi làm. Sáu tháng sau, Arthur – người kiến trúc sư trẻ thuê lại căn hộ của cô đã nhìn thấy linh hồn cô gái đang ngồi say sưa theo điệu nhạc trong tủ áo. Arthur ban đầu không thể nào tin được câu chuyện, nhưng dần dần anh đã thấy được linh hồn cô gái này đang bơ vơ, khao khát có được một người bạn, một người lắng nghe những tâm sự của mình. Cùng với thời gian, sự đồng điệu tâm hồn đã khiến cho hai người trở nên gắn bó và tình yêu đến như một lẽ tự nhiên. Nhưng cuộc sống yên bình của họ đã bị ngăn cản khi những người thân của Lauren đã quyết định để cho cô ra đi mãi mãi sau những tháng dài bất tỉnh trên giường bệnh. Arthur đã quyết định làm một việc liều lĩnh: đánh cắp thân thể của Lauren khỏi bệnh viện và đưa cô trở về ngôi nhà cũ của anh. Họ sống cạnh nhau như trong một tuần trăng mật đầy hạnh phúc. Khi bị một thanh tra cảnh sát phát hiện ra việc làm của mình, Arthur đành đưa cơ thể Lauren trở lại bệnh viện và như có phép màu, cô gái đã tỉnh lại.', N'Romance' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'15', N'Sherlock Holmes', N'Authur Conan Doyle', N'image/sherlock.jpg', N'14/10/2017', N'Nội dung cuốn tiểu thuyết kể về hành trình khám phá tội ác của nhân vật thám tử hư cấu tên là Sherlock Holmes . – một thám tử tài ba nổi tiếng nhờ trí thông minh, khả năng suy luận logic, có khả năng quan sát và khám phá các vụ án một cách chính xác và hợp lí đến không ngờ. Với khả năng cao siêu của mình, Sherlock Holmes đã để lại ấn tượng sâu sắc trong lòng độc là một vị thám tử tài năng, có tấm lòng nhân hậu, luôn bảo vệ chính nghĩa.', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'16', N'Án Mạng Trên Sông Nile', N'Agatha Christies', N'image/songnile.jpg', N'14/10/2017', N'Nội dung cuốn tiểu thuyết xoay quanh nhân vật chính là thám tử Hercule Poirot và những vụ án mạng nghiêm trọng diễn ra trên con tàu du lịch trên sông Nile, nơi mà thám tử này đang nghỉ dưỡng. ', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'17', N'Án Mạng Trên Sông Nile 2', N'Agatha Christies', N'image/songnile2.jpg', N'14/10/2017', N'Nội dung cuốn tiểu thuyết xoay quanh nhân vật chính là thám tử Hercule Poirot và những vụ án mạng nghiêm trọng diễn ra trên con tàu du lịch trên sông Nile, nơi mà thám tử này đang nghỉ dưỡng. ', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'18', N'Sự im lặng của bầy cừu', N'Thomas Harris', N'image/suimlang.jpg', N'14/10/2017', N'Sự im lặng của bầy cừu là câu chuyện đầy gay cấn và hấp dẫn kể về hàng loạt vụ án giết người xảy ra nhưng không để lại bất kỳ một dấu vết gì. Tuy nhiên có một bác sĩ tâm lý bị tâm thần có tên là Lecter lại rõ về hành vi của kẻ sát nhân nhưng không hiểu sao ông chỉ im lặng. Cuối cùng thì sự thật cũng đã phơi bày,  thủ phạm của hàng loạt vụ án giết người là một tên có nhân cách bệnh hoạn, một kẻ tâm thần vô cùng nguy hiểm.…', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'19', N'Tên của đóa hồng', N'Umberto Eco', N'image/tencua.jpg', N'14/10/2017', N'Nội dung của cuốn tiểu thuyết xoay quanh cuộc sống trong một tu viện có kiến trúc tuyệt đẹp nhưng lại diễn ra một tội ác khủng khiếp đó là hàng loạt tu sĩ bị giết hại một cách tàn độc và nhân vật chính là một tu sĩ có tên là Wiliam, ông chính người đã tìm hiểu và phá hàng loạt các vụ án mạng ở nơi tu viện đầy tâm linh và thiêng liêng này. ', N'Detective' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'20', N'Tiếng chim hót trong bụi mận gai', N'Colleen McCullough', N'image/tiengchim.jpg', N'14/10/2017', N'Nhân vật trung tâm trong tác phẩm chính là Meggie – người phụ nữ cố gắng vượt lên số phận, vượt mặt Chúa trời để giành lấy tình yêu, giành lấy hạnh phúc. Chuyện tình của cô với cha Ralph được ví như bài ca của chú chim hót hay nhất thế gian, cả hai đều phải đánh đổi cả cuộc đời để có được điều mình muốn. “Bởi vì tất cả những gì tốt đẹp nhất chỉ có thể có được khi ta chịu trả giá bằng nỗi đau khổ vĩ đại”.', N'Romance' )
INSERT [dbo].[Book] ([BookID], [BookTitle], [Author], [Brief], [Publisher], [Content], [Category]) VALUES (N'21', N'And then there were none', N'Agatha Christies', N'image/varoi.jpg', N'14/10/2017', N'Nội dung cuốn tiểu thuyết xoay quanh câu chuyện của một nhóm người lạ mặt, không phân biệt tuổi tác, giàu nghèo hay địa vị xã hội vô tình gặp nhau tại một hòn đảo bởi một lời mời bí ẩn. Rồi bỗng nhiên xuất hiện nhiều cái chết thương tâm không rõ lý do, không rõ hung thủ. Những vụ án tưởng chừng như đã đi vào bế tắc thì bỗng nhiên được sáng tỏ nhờ một lá thư trong chai trôi dạt trên biển.', N'Detective' )


ALTER TABLE [dbo].[BookCase]  WITH CHECK ADD  CONSTRAINT [FK_BookCase_User] FOREIGN KEY([BookCaseID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[BookCase] CHECK CONSTRAINT [FK_BookCase_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([ID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[Contain]  WITH CHECK ADD  CONSTRAINT [FK_Contain_BookCase] FOREIGN KEY([BookCaseID])
REFERENCES [dbo].[BookCase] ([BookCaseID])
GO
ALTER TABLE [dbo].[Contain] CHECK CONSTRAINT [FK_Contain_BookCase]
GO
ALTER TABLE [dbo].[Contain]  WITH CHECK ADD  CONSTRAINT [FK_Contain_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Contain] CHECK CONSTRAINT [FK_Contain_Book]
GO
