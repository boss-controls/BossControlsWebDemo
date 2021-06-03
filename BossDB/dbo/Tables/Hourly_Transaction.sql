﻿CREATE TABLE [dbo].[Hourly_Transaction] (
    [Hourly_Transaction_Seq_ID] INT        NOT NULL,
    [Asset_Seq_ID]              INT        NOT NULL,
    [Asset_ID]                  NCHAR (10) NULL,
    [Device_MAC]                NCHAR (10) NULL,
    [Cust_ID]                   NCHAR (10) NULL,
    [Device_group_1]            NCHAR (10) NULL,
    [Device_group_2]            NCHAR (10) NULL,
    [Date/Time]                 NCHAR (10) NULL,
    [Measurement_Type1]         NCHAR (10) NULL,
    [Measurement_Count_1]       NCHAR (10) NULL,
    [Measurement_Ave_1]         NCHAR (10) NULL,
    [Measurement_Min_Value_1]   NCHAR (10) NULL,
    [Measurement_Max_Value_1]   NCHAR (10) NULL,
    [Measurement_Type2]         NCHAR (10) NULL,
    [Measurement_Count_2]       NCHAR (10) NULL,
    [Measurement_Ave_2]         NCHAR (10) NULL,
    [Measurement_Min_Value_2]   NCHAR (10) NULL,
    [Measurement_Max_Value_2]   NCHAR (10) NULL,
    [Measurement_Type3]         NCHAR (10) NULL,
    [Measurement_Count_3]       NCHAR (10) NULL,
    [Measurement_Ave_3]         NCHAR (10) NULL,
    [Measurement_Min_Value_3]   NCHAR (10) NULL,
    [Measurement_Max_Value_3]   NCHAR (10) NULL,
    CONSTRAINT [PK_Hourly_Transaction] PRIMARY KEY CLUSTERED ([Hourly_Transaction_Seq_ID] ASC),
    CONSTRAINT [FK_Hourly_Transaction_Asset] FOREIGN KEY ([Asset_Seq_ID]) REFERENCES [dbo].[Asset] ([Asset_Seq_ID])
);
