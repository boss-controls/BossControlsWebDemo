CREATE TABLE [dbo].[Invoice_Detail] (
    [Invoice_Detail_Seq_ID]   INT        NULL,
    [Invoice_No]              NCHAR (10) NULL,
    [Sequence_Item]           NCHAR (10) NULL,
    [Part_no]                 NCHAR (10) NULL,
    [Description]             NCHAR (10) NULL,
    [Unit_Type]               NCHAR (10) NULL,
    [Trans_Type]              NCHAR (10) NULL,
    [Currency]                NCHAR (10) NULL,
    [Quantity]                NCHAR (10) NULL,
    [Unit_Price]              NCHAR (10) NULL,
    [Total_Unit_Amt_Billable] NCHAR (10) NULL,
    [Taxable_YN]              NCHAR (10) NULL
);

