using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Net.Http;

namespace BossControlsWeb2
{
    public partial class ExoSense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btGetUsers_Click(object sender, EventArgs e)
        {
            string query = "users{id name email  phone group{id name parent{id name}}}";

            tbResponce.Text = PostRquest(query);


        }

        protected string PostRquest(string query)
        {
            var client = new HttpClient();
            var request = new HttpRequestMessage
            
            {
                Method = HttpMethod.Post,
                RequestUri = new Uri("https://bosscontrols.apps.exosite.io/api/graphql"),
                Headers =
    {
        { "Authorization", "Automation eyJpZCI6ImF1dG9tb24tdG9rZW58MTYxNzgyMTcwMzgwNDAuNTk4MzM1NzM1ODcxMTUxOSIsInRva2VuIjoidklhdmNPZHZFQkl6dXdYekFZaXJPbUhJaEdLajFmRnNwY2tnem5tVTR1L3dJS05RY1lQVGRQNkllakxPRXpDNDJBLy9sc01oYm1BRWlDNitmZ2lFcG9ySkwzM3pDOG5jcjRnSnBpTS9uTVpHbTZ5MlE1bmdib2c4Y1JpYnFibGJjblVyYzhuN2JnUnUwUFo0eUZycm54TGxTcWhsUmxQd1N5TjFwK0lkUXB2QkMxeHViMjY3dWZ2ZUZTY2oyajBDTlV5MkpKNGduYlN4M2o0V2lKZW8xaGlPaWJhcGIvcEpuSE1oL1hLM3JGdEZXYzdsUjRqSSt4MUVqRGp4b3ZiQTRQc3FuUWZxNVA2ck5zTUV2dHkvdGNjYVAzV0x6OG4zalhmb2FsZmlUdTFoSVdHTlhDMkhzMWpLYUxwcWNqR05QTnJBQmlqMkVZZUV1QzRVOC9aYktvZz0ifQ==" },
    },
                Content = new StringContent("{\"query\":\"{\\n  " + query + "}\"}")
                {
                    Headers =
        {
            ContentType = new MediaTypeHeaderValue("application/json")
        }
                }
            };
            HttpResponseMessage response = client.SendAsync(request).Result;
            string apiResponse = response.Content.ReadAsStringAsync().Result;
            return apiResponse;

           
        }
    }
}