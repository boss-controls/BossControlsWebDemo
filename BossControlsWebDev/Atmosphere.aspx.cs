using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json; // Nuget Package
using BossControlsWeb2.Boss_DBTableAdapters;

namespace BossControlsWeb2
{
    public partial class Atmosphere : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbAtmosphereURL.Text = "https://login.bosscontrols.com";
            tbUserID.Text = "bogdanbutuc73@gmail.com";
            tbPW.Text = "di3Q3dze";
            string key = "Basic " + Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(tbUserID.Text + ":" + tbPW.Text));
        }
        public string GetAPICall(string url, string key)
        {
            try
            {

                System.Net.HttpWebRequest request = (System.Net.HttpWebRequest)System.Net.WebRequest.Create(url);
                request.ContentType = "application/json; charset=utf-8";
                request.Headers["Authorization"] = key;
                request.PreAuthenticate = true;
                
                System.Net.HttpWebResponse response;
                response = (System.Net.HttpWebResponse)request.GetResponse();
                var dataStream = response.GetResponseStream();
                var reader = new System.IO.StreamReader(dataStream);          // Open the stream using a StreamReader for easy access.
                string responseFromServer = reader.ReadToEnd();  // Read the content.

               
                // Cleanup the streams and the response.
                reader.Close();
                dataStream.Close();
                response.Close();
                return responseFromServer;

            }

            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public List<AtmosphereAcct> GetAccount(string url, string key)
        {
            try
            {
                var data = Newtonsoft.Json.JsonConvert.DeserializeObject<List<AtmosphereAcct>>(GetAPICall(url, key));
                return data;
            }

            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public List<AccountDetail> GetAccountDetail(string url, string key)
        {
            try
            {
                var data = Newtonsoft.Json.JsonConvert.DeserializeObject<List<AccountDetail>>(GetAPICall(url, key));
                return data;
            }

            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public List<AtmospherePortal> GetPortal(string url, string key)
        {
            try
            {
                var data = Newtonsoft.Json.JsonConvert.DeserializeObject<List<AtmospherePortal>>(GetAPICall(url, key));
                return data;
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public List<DataSource> GetDataSource(string url, string key)
        {
            try
            {
                List<DataSource> data = Newtonsoft.Json.JsonConvert.DeserializeObject<List<DataSource>>(GetAPICall(url, key));
                return data;
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public DataSourceDetail GetDataSourceDetail(string url, string key)
        {
            try
            {
                DataSourceDetail data = Newtonsoft.Json.JsonConvert.DeserializeObject<DataSourceDetail>(GetAPICall(url, key));
                return data;
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public DataSourceData GetDataByDataSource(string url, string key)
        {
            try
            {
                string responceData = "{" + (char)34 +"data" + (char)34 + ":" + GetAPICall(url, key) + "}";
                //string responceData = GetAPICall(url, key); //"[1603425600,218.96733333333]"

                DataSourceData data = Newtonsoft.Json.JsonConvert.DeserializeObject<DataSourceData>(responceData);
                return data;
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public Device GetDevices(string url, string key)
        {
            try
            {
                Device data = Newtonsoft.Json.JsonConvert.DeserializeObject<Device>(GetAPICall(url, key));
                return data;
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public DeviceDetail GetDeviceDetails(string url, string key)
        {
            try
            {
                DeviceDetail data = Newtonsoft.Json.JsonConvert.DeserializeObject<DeviceDetail>(GetAPICall(url, key));
                return data;
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        public DeviceDataSources GetDevicesDataSource(string url, string key)
        {
            try
            {
                DeviceDataSources data = Newtonsoft.Json.JsonConvert.DeserializeObject<DeviceDataSources>(GetAPICall(url, key));
                return data;
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
            }
            return null;
        }
        protected void btGet_Click(object sender, EventArgs e)
        {
            string key = "Basic " + Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(tbUserID.Text + ":" + tbPW.Text));
            List<AtmosphereAcct> AtmosphereAccts = new List<AtmosphereAcct>();
            AtmosphereAccts = GetAccount(tbAtmosphereURL.Text + "/api/portals/v1/accounts/", key);
            int x = AtmosphereAccts.Count;
            Boss_DBTableAdapters.Atmosphere_AccountsTableAdapter acctTA = new Boss_DBTableAdapters.Atmosphere_AccountsTableAdapter();

            for (int i = 0; i < x; i++)
            {
                AtmosphereAcct acct = AtmosphereAccts[i];
                List<AccountDetail> AccountDetails = new List<AccountDetail>();
                AccountDetails = GetAccountDetail(tbAtmosphereURL.Text + "/api/portals/v1/users/" + acct.id + "/portals", key);
                if(AccountDetails != null)
                {
                   acctTA.Insert(acct.email, acct.fullName, acct.id, acct.rid, acct.phoneNumber, acct.userName, AccountDetails[0].PortalID, AccountDetails[0].PortalRID);
                //update portals
                }
                



            }



        }
        protected void btGetDevices_Click(object sender, EventArgs e)
        {
            string key = "Basic " + Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(tbUserID.Text + ":" + tbPW.Text));
            //List<Device> Devices = new List<Device>();
            Boss_DBTableAdapters.Atmosphere_PortalsTableAdapter portalTA = new Boss_DBTableAdapters.Atmosphere_PortalsTableAdapter();
            Boss_DB.Atmosphere_PortalsDataTable portalsDT = portalTA.GetData();
            //PortalsDataSource

            foreach (Boss_DB.Atmosphere_PortalsRow portalsDR in portalsDT.Rows)
            {
                Device Devices = GetDevices(tbAtmosphereURL.Text + "/api/portals/v1/portals/" + portalsDR.Portal_ID, key);
                if (Devices != null)
                {
                    if (Devices.devices.Count > 0)
                    {
                        Boss_DBTableAdapters.Atmosphere_DevicesTableAdapter deviceTA = new Boss_DBTableAdapters.Atmosphere_DevicesTableAdapter();
                        int x = Devices.devices.Count;
                        for (int i = 0; i < x; i++)
                        {
                            DeviceDetail DeviceDetails = GetDeviceDetails(tbAtmosphereURL.Text + "/api/portals/v1/devices/" + Devices.devices[i], key);
                            if (DeviceDetails != null)
                            {
                                int pf = deviceTA.Insert(portalsDR.Portal_ID, Devices.devices[i], DeviceDetails.sn, DeviceDetails.info.description.meta, DeviceDetails.info.description.name, DeviceDetails.info.description.locked, DeviceDetails.model, DeviceDetails.type, DeviceDetails.vendor);
                                for (int j =0; j < DeviceDetails.dataSources.Count; j++)
                                {
                                    Boss_DBTableAdapters.Atmosphere_Devices_DataSourceTableAdapter DevicesDataSourceTA = new Boss_DBTableAdapters.Atmosphere_Devices_DataSourceTableAdapter();
                                    if(DeviceDetails.info.aliases.ContainsKey(DeviceDetails.dataSources[j]))
                                    {

                                        
                                        DevicesDataSourceTA.Insert(Devices.devices[i], DeviceDetails.dataSources[j], DeviceDetails.info.aliases[DeviceDetails.dataSources[j]][0], null, null,null,null);
                                    }
                                }
                            }

                        }
                    }
                    
                    
                }


            }
        }

        protected void btPortals_Click(object sender, EventArgs e)
        {
            string key = "Basic " + Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(tbUserID.Text + ":" + tbPW.Text));
            List<AtmospherePortal> AtmospherePortals = new List<AtmospherePortal>();
            AtmospherePortals = GetPortal(tbAtmosphereURL.Text + "/api/portals/v1/portals/", key);
            int x = AtmospherePortals.Count;
            Boss_DBTableAdapters.Atmosphere_PortalsTableAdapter portalTA = new Boss_DBTableAdapters.Atmosphere_PortalsTableAdapter();
            for (int i = 0; i < x; i++)
            {
                AtmospherePortal portal = AtmospherePortals[i];
                portalTA.Insert(portal.id);


            }
        }
        protected void btGetDeviceDataSource_Click(object sender, EventArgs e)
        {
            string key = "Basic " + Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(tbUserID.Text + ":" + tbPW.Text));
            
            Boss_DBTableAdapters.Atmosphere_Devices_DataSourceTableAdapter Devices_DataSourceTA = new Boss_DBTableAdapters.Atmosphere_Devices_DataSourceTableAdapter();
            Boss_DB.Atmosphere_Devices_DataSourceDataTable Devices_DataSourceDT = Devices_DataSourceTA.GetData();
            foreach (Boss_DB.Atmosphere_Devices_DataSourceRow Devices_DataSourceDR in Devices_DataSourceDT.Rows)
            {
                DataSourceDetail _DataSourceDetail = GetDataSourceDetail(tbAtmosphereURL.Text + "/api/portals/v1/data-sources/" + Devices_DataSourceDR.DataSource_rid, key);
                float data_unix_timestamp;
                string datavalue = null;
                string meta = null;
                string _name = null;
                if (_DataSourceDetail != null)
                {
                    if (_DataSourceDetail.info.description.meta != null)
    
                    {
                        Devices_DataSourceDR.meta = _DataSourceDetail.info.description.meta;
                    }
                    if (_DataSourceDetail.info.description.name != null)
                    {
                        Devices_DataSourceDR.name = _DataSourceDetail.info.description.name;
                    }
                    if (_DataSourceDetail.data != null)
                    {
                        if (_DataSourceDetail.data.Count != 0)
                        {
                            Devices_DataSourceDR.data_unix_timestamp = Convert.ToInt32(_DataSourceDetail.data[0][0]);
                            if (Convert.ToString(_DataSourceDetail.data[0][1]).Length > 500)
                            {
                                Devices_DataSourceDR.data_value =Convert.ToString(_DataSourceDetail.data[0][1]).Substring(0,500);
                            }
                           else
                            {
                                Devices_DataSourceDR.data_value = Convert.ToString(_DataSourceDetail.data[0][1]);
                            }
    
                        }
                    }
                    Devices_DataSourceTA.Update(Devices_DataSourceDR);
                }

            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string key = "Basic " + Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(tbUserID.Text + ":" + tbPW.Text));
            List<DataSource> PortalsDataSources = new List<DataSource>();
            Boss_DBTableAdapters.Atmosphere_PortalsTableAdapter portalTA = new Boss_DBTableAdapters.Atmosphere_PortalsTableAdapter();
            Boss_DB.Atmosphere_PortalsDataTable portalsDT = portalTA.GetData();
            //PortalsDataSource

            foreach (Boss_DB.Atmosphere_PortalsRow portalsDR in portalsDT.Rows)
            {
                PortalsDataSources = GetDataSource(tbAtmosphereURL.Text + "/api/portals/v1/portals/" + portalsDR.Portal_ID + "/data-sources/", key);
               if (PortalsDataSources != null)
                {
                    int x = PortalsDataSources.Count;
                    Boss_DBTableAdapters.Atmosphere_Portals_Data_SourceTableAdapter datasourceTA = new Boss_DBTableAdapters.Atmosphere_Portals_Data_SourceTableAdapter();
                    for (int i = 0; i < x; i++)
                    {
                        
                        //datasourceTA.Insert(portalsDR.Atmosphere_Portals_seq_id, portalsDR.Portal_ID, PortalsDataSources[i].data[0].ToString, PortalsDataSources[i].info.basic.modified, PortalsDataSources[i].info.basic.subscribers, PortalsDataSources[i].info.basic.type, PortalsDataSources[i].info.description.format, PortalsDataSources[i].info.description.meta, PortalsDataSources[i].info.description.name,  PortalsDataSources[i].info.description.preprocess,  PortalsDataSources[i].info.description._public,  PortalsDataSources[i].info.description.subscribe,  PortalsDataSources[i].info.description.retention.count,  PortalsDataSources[i].info.description.retention.duration,  PortalsDataSources[i].info.shares,  PortalsDataSources[i].info.storage.count,  PortalsDataSources[i].info.storage.first,  PortalsDataSources[i].info.storage.last,  PortalsDataSources[i].info.storage.size,  PortalsDataSources[i].info.subscribers,  PortalsDataSources[i].info.tags,  PortalsDataSources[i].rid,  PortalsDataSources[i].unit);
                        datasourceTA.Insert(portalsDR.ID, portalsDR.Portal_ID, "", "", "", "", "", PortalsDataSources[i].info.description.meta, PortalsDataSources[i].info.description.name, "", "", "", "", PortalsDataSources[i].info.description.retention.duration, "", "", "", "", "", "", "", PortalsDataSources[i].rid, PortalsDataSources[i].unit);
                    }
                }
                

            }
        }
        protected void btGetDataDourceData_Click(object sender, EventArgs e)
        {
            string fromDate = unixTimeStamp(DateTime.Parse(tbFromDate.Text)).ToString();
            string toDate = unixTimeStamp(DateTime.Parse(tbToDate.Text)).ToString();
            string key = "Basic " + Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(tbUserID.Text + ":" + tbPW.Text));
            //Get data sources
            Boss_DBTableAdapters.Atmosphere_Devices_DataSourceTableAdapter DataSourcesTA = new Boss_DBTableAdapters.Atmosphere_Devices_DataSourceTableAdapter();
            Boss_DB.Atmosphere_Devices_DataSourceDataTable DataSourcesDT = DataSourcesTA.GetDataByPortalID(tbPortalID.Text);
            Boss_DBTableAdapters.Atmosphere_DataSource_DataTableAdapter DataSourcesDataTA = new Boss_DBTableAdapters.Atmosphere_DataSource_DataTableAdapter();
            foreach (Boss_DB.Atmosphere_Devices_DataSourceRow DataSourcesDR in DataSourcesDT.Rows)
            {
                double lastData = Convert.ToDouble(unixTimeStamp(DateTime.Parse(tbToDate.Text)));
                for (double y = lastData; y != 0;)
                {
                    DataSourceData _DataSourceData = GetDataByDataSource(tbAtmosphereURL.Text + "/api/portals/v1/data-sources/" + DataSourcesDR.DataSource_rid + "/data?starttime=" + fromDate + "&endtime=" + Convert.ToString(lastData) + "&sort=desc&limit=1000", key);
                    if (_DataSourceData != null)
                    {
                        if (_DataSourceData.data.Count != 0)
                        {
                            for (int x = 0; x < _DataSourceData.data.Count; x++)
                            {
                                DataSourcesDataTA.Insert(DataSourcesDR.DataSource_rid, Convert.ToInt32(_DataSourceData.data[x][0]), Convert.ToDouble(_DataSourceData.data[x][1]),DateTime.Now);
                                lastData = (Convert.ToDouble(_DataSourceData.data[x][0]) - 1);
                            }
                        }
                        else
                        {
                            y = 0;
                        }
                    }
                    else
                    { 
                        y = 0; 
                    }
                }
               
            }

        }

        public double unixTimeStamp(DateTime dateTime)
        {
            return (TimeZoneInfo.ConvertTimeToUtc(dateTime) -
           new DateTime(1970, 1, 1, 0, 0, 0, 0, System.DateTimeKind.Utc)).TotalSeconds;
        }
        public class AtmosphereAcct
        {
            [JsonProperty("email")]
            public string email { get; set; }
            [JsonProperty("fullName")]
            public string fullName { get; set; }
            [JsonProperty("id")]
            public string id { get; set; }
            [JsonProperty("rid")]
            public string rid { get; set; }
            [JsonProperty("meta")]
            public string meta { get; set; }
            [JsonProperty("phoneNumber")]
            public string phoneNumber { get; set; }
            [JsonProperty("userName")]
            public string userName { get; set; }

        }



        public class AtmosphereAccts
        {
            public List<AtmosphereAcct> Accounts { get; set; }
        }

        public class AtmospherePortal
        {
            [JsonProperty("id")]
            public string id { get; set; }
        }


        public class Basic
        {

            [JsonProperty("modified")]
            public int modified { get; set; }

            [JsonProperty("subscribers")]
            public int subscribers { get; set; }

            [JsonProperty("type")]
            public string type { get; set; }
        }

        public class Retention
        {

            [JsonProperty("count")]
            public int count { get; set; }

            [JsonProperty("duration")]
            public string duration { get; set; }
        }

        public class Description
        {

            [JsonProperty("format")]
            public string format { get; set; }

            [JsonProperty("meta")]
            public string meta { get; set; }

            [JsonProperty("name")]
            public string name { get; set; }

            [JsonProperty("preprocess")]
            public IList<object> preprocess { get; set; }

            [JsonProperty("public")]
            public bool _public { get; set; }

            [JsonProperty("retention")]
            public Retention retention { get; set; }

            [JsonProperty("subscribe")]
            public object subscribe { get; set; }
        }

        public class Storage
        {

            [JsonProperty("count")]
            public int count { get; set; }

            [JsonProperty("first")]
            public int first { get; set; }

            [JsonProperty("last")]
            public int last { get; set; }

            [JsonProperty("size")]
            public int size { get; set; }
        }

        public class Info
        {

            [JsonProperty("basic")]
            public Basic basic { get; set; }

            [JsonProperty("description")]
            public Description description { get; set; }

            [JsonProperty("shares")]
            public IList<object> shares { get; set; }

            [JsonProperty("storage")]
            public Storage storage { get; set; }

            [JsonProperty("subscribers")]
            public IList<object> subscribers { get; set; }

            [JsonProperty("tags")]
            public IList<object> tags { get; set; }
        }

        public class DataSource
        {

            [JsonProperty("data")]
            public IList<IList<object>> data { get; set; }

            [JsonProperty("info")]
            public Info info { get; set; }

            [JsonProperty("rid")]
            public string rid { get; set; }

            [JsonProperty("unit")]
            public string unit { get; set; }
        }


    }
    public class Permission    {
        [JsonProperty("access")]
        public string Access { get; set; } 
    }

    public class AccountDetail    {
        [JsonProperty("PortalName")]
        public string PortalName { get; set; } 

        [JsonProperty("PortalID")]
        public string PortalID { get; set; } 

        [JsonProperty("PortalRID")]
        public string PortalRID { get; set; } 

        [JsonProperty("UserEmail")]
        public string UserEmail { get; set; } 

        [JsonProperty("Description")]
        public string Description { get; set; } 

        [JsonProperty("Permissions")]
        public List<Permission> Permissions { get; set; } 
    }


    public class Basic
{
    public int modified { get; set; }
    public int subscribers { get; set; }
    public string type { get; set; }
    public string status { get; set; }
}

public class Limits
{
    public string client { get; set; }
    public string dataport { get; set; }
    public string datarule { get; set; }
    public string disk { get; set; }
    public string dispatch { get; set; }
    public string email { get; set; }
    public string email_bucket { get; set; }
    public string http { get; set; }
    public string http_bucket { get; set; }
    public string share { get; set; }
    public string sms { get; set; }
    public string sms_bucket { get; set; }
    public string xmpp { get; set; }
    public string xmpp_bucket { get; set; }
}

public class Description
{
    public Limits limits { get; set; }
    public bool locked { get; set; }
    public string meta { get; set; }
    public string name { get; set; }
    public bool @public { get; set; }
}

public class Info
{
    public Dictionary<string, List<string>> aliases { get; set; }
    public Basic basic { get; set; }
    public Description description { get; set; }
    public string key { get; set; }
    public List<object> shares { get; set; }
    public List<object> subscribers { get; set; }
    public List<object> tagged { get; set; }
    public List<object> tags { get; set; }
}

    public class DataSourceDetail
    {
        public List<List<object>> data { get; set; }
        public Info info { get; set; }
        public string rid { get; set; }
        public string unit { get; set; }
    }

    public class Device
{
    public List<string> devices { get; set; }
    public string id { get; set; }
    public Info info { get; set; }
}
   
    

    public class Retention
    {
        public int count { get; set; }
        public string duration { get; set; }
    }

    

    public class Storage
    {
        public int count { get; set; }
        public int first { get; set; }
        public int last { get; set; }
        public int size { get; set; }
    }



    public class DataSource
    {
        public Dictionary<string, string> data { get; set; }
        public Info info { get; set; }
        public string rid { get; set; }
        public string unit { get; set; }
    }

    public class DeviceDataSources
    {
        public List<DataSource> DeviceDataSource { get; set; }
    }
    public class DeviceDetail
    {
        public string rid { get; set; }
        public List<object> members { get; set; }
        public Info info { get; set; }
        public List<string> dataSources { get; set; }
        public string model { get; set; }
        public string sn { get; set; }
        public string type { get; set; }
        public string vendor { get; set; }
    }
    //public class DataSourceData
    //{
    //    public IList<IList<string>> MyArray { get; set; }
    //}
    public class DataSourceData
    {
        public IList<IList<object>> data { get; set; }
    }
}