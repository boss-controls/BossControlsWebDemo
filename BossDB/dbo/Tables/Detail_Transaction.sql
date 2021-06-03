CREATE TABLE [dbo].[Detail_Transaction] (
    [Detail_Transaction_Seq_ID] INT        NOT NULL,
    [Asset_Seq_ID]              INT        NOT NULL,
    [Asset_ID]                  NCHAR (10) NULL,
    [Device_MAC]                NCHAR (10) NULL,
    [Cust_ID]                   NCHAR (10) NULL,
    [Device_group_1]            NCHAR (10) NULL,
    [Device_group_2]            NCHAR (10) NULL,
    [Date_Time_Measured]        NCHAR (10) NULL,
    [Date_Time_Received]        NCHAR (10) NULL,
    [Measurement_Type1]         NCHAR (10) NULL,
    [Measurement_Value1]        NCHAR (10) NULL,
    [Measurement_Type2]         NCHAR (10) NULL,
    [Measurement_Value2]        NCHAR (10) NULL,
    [Measurement_Type3]         NCHAR (10) NULL,
    [Measurement_Value3]        NCHAR (10) NULL,
    CONSTRAINT [PK_Detail_Transaction] PRIMARY KEY CLUSTERED ([Detail_Transaction_Seq_ID] ASC),
    CONSTRAINT [FK_Detail_Transaction_Asset] FOREIGN KEY ([Asset_Seq_ID]) REFERENCES [dbo].[Asset] ([Asset_Seq_ID])
);

