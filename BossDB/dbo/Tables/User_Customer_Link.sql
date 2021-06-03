CREATE TABLE [dbo].[User_Customer_Link] (
    [User_Seq_ID] INT NULL,
    [Cust_Seq_ID] INT NULL,
    CONSTRAINT [FK_User_Customer_Link_Customer] FOREIGN KEY ([Cust_Seq_ID]) REFERENCES [dbo].[Customer] ([Cust_Seq_ID]),
    CONSTRAINT [FK_User_Customer_Link_User] FOREIGN KEY ([User_Seq_ID]) REFERENCES [dbo].[User] ([User_Seq_ID])
);

