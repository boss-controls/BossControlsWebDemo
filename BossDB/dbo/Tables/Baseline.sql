CREATE TABLE [dbo].[Baseline] (
    [Baseline_Seq_ID]        INT        NOT NULL,
    [Cust_Seq_ID]            INT        NULL,
    [Cust_ID]                NCHAR (10) NULL,
    [Device_group_1]         NCHAR (10) NULL,
    [Device_group_2]         NCHAR (10) NULL,
    [Asset_ID]               NCHAR (10) NULL,
    [Device_MAC]             NCHAR (10) NULL,
    [Baseline_Date_Time]     NCHAR (10) NULL,
    [Measurement_Type1]      NCHAR (10) NULL,
    [Measurement_Baseline_1] NCHAR (10) NULL,
    [Measurement_Type2]      NCHAR (10) NULL,
    [Measurement_Baseline_2] NCHAR (10) NULL,
    [Measurement_Type3]      NCHAR (10) NULL,
    [Measurement_Baseline_3] NCHAR (10) NULL,
    CONSTRAINT [PK_Baseline] PRIMARY KEY CLUSTERED ([Baseline_Seq_ID] ASC),
    CONSTRAINT [FK_Baseline_Customer] FOREIGN KEY ([Cust_Seq_ID]) REFERENCES [dbo].[Customer] ([Cust_Seq_ID])
);

