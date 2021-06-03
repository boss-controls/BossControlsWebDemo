CREATE TABLE [dbo].[Customer_Group_Link] (
    [Cust_Seq_ID]    INT NULL,
    [Cust_Group_Seq] INT NULL,
    CONSTRAINT [FK_Customer_Group_Link_Customer] FOREIGN KEY ([Cust_Seq_ID]) REFERENCES [dbo].[Customer] ([Cust_Seq_ID]),
    CONSTRAINT [FK_Customer_Group_Link_Customer_Group] FOREIGN KEY ([Cust_Group_Seq]) REFERENCES [dbo].[Customer_Group] ([Cust_Group_Seq])
);

