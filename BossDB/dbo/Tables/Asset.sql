﻿CREATE TABLE [dbo].[Asset] (
    [Asset_Seq_ID]        INT        NOT NULL,
    [Asset_ID]            NCHAR (10) NULL,
    [External_Asset_ID]   NCHAR (10) NULL,
    [External_Cust_RID]   NCHAR (10) NULL,
    [Cust_Seq_ID]         INT        NULL,
    [Cust_ID]             NCHAR (10) NULL,
    [Status]              NCHAR (10) NULL,
    [Serial_no]           NCHAR (10) NULL,
    [Device_name]         NCHAR (10) NULL,
    [Type]                NCHAR (10) NULL,
    [Equip_Sched]         NCHAR (10) NULL,
    [Cost_inventory]      NCHAR (10) NULL,
    [Cost_retail]         NCHAR (10) NULL,
    [Book_dep_basis]      NCHAR (10) NULL,
    [Book_dep_start]      NCHAR (10) NULL,
    [Tax_dep_basis]       NCHAR (10) NULL,
    [Tax_dep_start]       NCHAR (10) NULL,
    [In_service_date]     NCHAR (10) NULL,
    [Rebate_amt]          NCHAR (10) NULL,
    [Rebate_date]         NCHAR (10) NULL,
    [MFR]                 NCHAR (10) NULL,
    [Mnf_date]            NCHAR (10) NULL,
    [FCC_ID]              NCHAR (10) NULL,
    [BCM]                 NCHAR (10) NULL,
    [BCM_Firmware]        NCHAR (10) NULL,
    [Device_MAC]          NCHAR (10) NULL,
    [Group_1]             NCHAR (10) NULL,
    [Group_2]             NCHAR (10) NULL,
    [Device_Location]     NCHAR (10) NULL,
    [GPS_Latitude]        NCHAR (10) NULL,
    [GPS_Longitude]       NCHAR (10) NULL,
    [Install_Building]    NCHAR (10) NULL,
    [Install_Floor]       NCHAR (10) NULL,
    [Install_City]        NCHAR (10) NULL,
    [Install_State]       NCHAR (10) NULL,
    [Install_County]      NCHAR (10) NULL,
    [Install_Zip]         NCHAR (10) NULL,
    [Install_Country]     NCHAR (10) NULL,
    [Timezone]            NCHAR (10) NULL,
    [Alert_Offline]       NCHAR (10) NULL,
    [Alert_On_Off]        NCHAR (10) NULL,
    [Alert_Schedule]      NCHAR (10) NULL,
    [Alert_Min_Power]     NCHAR (10) NULL,
    [Alert_Max_Power]     NCHAR (10) NULL,
    [Hops_from_Hub]       NCHAR (10) NULL,
    [Upstream_Mesh_MAC]   NCHAR (10) NULL,
    [Mesh_misc_info]      NCHAR (10) NULL,
    [Packet_Data_Dest_1]  NCHAR (10) NULL,
    [Packet_Data_Dest_2]  NCHAR (10) NULL,
    [Packet_Data_Dest_3]  NCHAR (10) NULL,
    [Network information] NCHAR (10) NULL,
    CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED ([Asset_Seq_ID] ASC),
    CONSTRAINT [FK_Asset_Customer] FOREIGN KEY ([Cust_Seq_ID]) REFERENCES [dbo].[Customer] ([Cust_Seq_ID])
);
