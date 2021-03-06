USE [telefon_teknik_servis]
GO
/****** Object:  Table [dbo].[sayfalar]    Script Date: 15.01.2022 14:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sayfalar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anasayfa] [text] NULL,
	[teknik_ozellikler] [text] NULL,
	[biz_kimiz] [text] NULL,
	[aciklamalar] [text] NULL,
	[iletisim] [text] NULL,
 CONSTRAINT [PK_sayfalar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
