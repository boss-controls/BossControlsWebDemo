CREATE TABLE [dbo].[User] (
    [User_Seq_ID]        INT        NOT NULL,
    [First_Name]         NCHAR (10) NULL,
    [Last_Name]          NCHAR (10) NULL,
    [Email]              NCHAR (10) NULL,
    [Password]           NCHAR (10) NULL,
    [Password_date]      NCHAR (10) NULL,
    [Active]             BIT        NULL,
    [Is_Master_Customer] BIT        NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([User_Seq_ID] ASC)
);

