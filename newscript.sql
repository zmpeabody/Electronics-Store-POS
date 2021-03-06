USE [POS]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 4/10/2018 1:19:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[shipping_address] [varchar](30) NULL,
	[customer_email] [varchar](20) NULL,
	[phone_no] [varbinary](10) NULL,
	[first_name] [varchar](20) NOT NULL,
	[last_name] [varchar](20) NOT NULL,
	[zipcode] [char](5) NULL,
	[city] [char](15) NULL,
	[state] [char](10) NULL,
 CONSTRAINT [PK__CUSTOMER__B611CB9D8DCB9558] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Dept_number] [int] NOT NULL,
	[Department_name] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Dept_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[Fname] [varchar](15) NOT NULL,
	[Mname] [varchar](15) NULL,
	[Lname] [varchar](20) NOT NULL,
	[privilege] [tinyint] NOT NULL,
	[employeeID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__EMPLOYEE__C134C9A16FE96398] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVOICE]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE](
	[invoiceID] [int] IDENTITY(1,1) NOT NULL,
	[cust_ID] [int] NOT NULL,
	[emp_ID] [int] NOT NULL,
	[totalSales] [money] NOT NULL,
	[payment_method] [varchar](15) NOT NULL,
	[home_delivery] [tinyint] NOT NULL,
	[date_time] [smalldatetime] NOT NULL,
 CONSTRAINT [PK__INVOICE__1252410CCAEE9AF6] PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[Inv_ID] [int] NOT NULL,
	[Pro_ID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[priceSold] [money] NOT NULL,
 CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[Pro_ID] ASC,
	[Inv_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogIn]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogIn](
	[ID] [int] NOT NULL,
	[password] [char](32) NOT NULL,
 CONSTRAINT [PK_LogIn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[productID] [int] IDENTITY(110,1) NOT NULL,
	[model] [varchar](30) NOT NULL,
	[quantity] [int] NULL,
	[brand] [varchar](20) NOT NULL,
	[name] [varchar](50) NULL,
	[department] [int] NOT NULL,
	[color] [varchar](10) NULL,
	[size] [varchar](15) NULL,
 CONSTRAINT [PK__PRODUCT__2D10D14AC415110B] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restock]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restock](
	[productID] [int] NOT NULL,
	[companyID] [char](9) NOT NULL,
	[stock_date] [date] NOT NULL,
	[stock_quantity] [int] NOT NULL,
	[stock_price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK__Restock__5C94D1388561D606] PRIMARY KEY CLUSTERED 
(
	[productID] ASC,
	[stock_date] ASC,
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[store_price_record]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[store_price_record](
	[productID] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[store_price] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_store_price_record] PRIMARY KEY CLUSTERED 
(
	[productID] ASC,
	[start_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUPPLIER]    Script Date: 4/10/2018 1:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUPPLIER](
	[companyID] [char](9) NOT NULL,
	[company_name] [varchar](20) NOT NULL,
	[company_type] [varchar](20) NOT NULL,
 CONSTRAINT [PK__SUPPLIER__AD5459B0DB42257F] PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[INVOICE]  WITH CHECK ADD  CONSTRAINT [FK_INVOICE_ToCustomer] FOREIGN KEY([cust_ID])
REFERENCES [dbo].[CUSTOMER] ([customerID])
GO
ALTER TABLE [dbo].[INVOICE] CHECK CONSTRAINT [FK_INVOICE_ToCustomer]
GO
ALTER TABLE [dbo].[INVOICE]  WITH CHECK ADD  CONSTRAINT [FK_INVOICE_ToEmployee] FOREIGN KEY([emp_ID])
REFERENCES [dbo].[EMPLOYEE] ([employeeID])
GO
ALTER TABLE [dbo].[INVOICE] CHECK CONSTRAINT [FK_INVOICE_ToEmployee]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY([Inv_ID])
REFERENCES [dbo].[INVOICE] ([invoiceID])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Invoice]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Product] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[PRODUCT] ([productID])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Product]
GO
ALTER TABLE [dbo].[LogIn]  WITH CHECK ADD  CONSTRAINT [FK_LogIn_ToEmployee] FOREIGN KEY([ID])
REFERENCES [dbo].[EMPLOYEE] ([employeeID])
GO
ALTER TABLE [dbo].[LogIn] CHECK CONSTRAINT [FK_LogIn_ToEmployee]
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_ToDEPARTMENT] FOREIGN KEY([department])
REFERENCES [dbo].[DEPARTMENT] ([Dept_number])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK_PRODUCT_ToDEPARTMENT]
GO
ALTER TABLE [dbo].[Restock]  WITH CHECK ADD  CONSTRAINT [FK_supplier_price_record_ToProduct] FOREIGN KEY([productID])
REFERENCES [dbo].[PRODUCT] ([productID])
GO
ALTER TABLE [dbo].[Restock] CHECK CONSTRAINT [FK_supplier_price_record_ToProduct]
GO
ALTER TABLE [dbo].[Restock]  WITH CHECK ADD  CONSTRAINT [FK_supplier_price_record_ToSupplier] FOREIGN KEY([companyID])
REFERENCES [dbo].[SUPPLIER] ([companyID])
GO
ALTER TABLE [dbo].[Restock] CHECK CONSTRAINT [FK_supplier_price_record_ToSupplier]
GO
ALTER TABLE [dbo].[store_price_record]  WITH CHECK ADD  CONSTRAINT [FK_store_price_record_ToTable] FOREIGN KEY([productID])
REFERENCES [dbo].[PRODUCT] ([productID])
GO
ALTER TABLE [dbo].[store_price_record] CHECK CONSTRAINT [FK_store_price_record_ToTable]
GO
