CREATE TABLE [dbo].[Customer_Contact] (
    [Customer_Contact_Seq_ID] INT        NOT NULL,
    [Cust_Seq_ID]             INT        NULL,
    [AP_Contact_Name]         NCHAR (10) NULL,
    [AP_Email]                NCHAR (10) NULL,
    [AP_Phone]                NCHAR (10) NULL,
    [Master_Account_Owner]    NCHAR (10) NULL,
    [Account_Owner]           NCHAR (10) NULL,
    CONSTRAINT [PK_Customer_Contact] PRIMARY KEY CLUSTERED ([Customer_Contact_Seq_ID] ASC),
    CONSTRAINT [FK_Customer_Contact_Customer] FOREIGN KEY ([Cust_Seq_ID]) REFERENCES [dbo].[Customer] ([Cust_Seq_ID])
);

