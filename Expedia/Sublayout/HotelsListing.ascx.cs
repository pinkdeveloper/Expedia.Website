using System;
using Expedia.Utilities;
using Expedia.Utilities.Models;
using System.Web.Configuration;
using Expedia.Utilities.Helpers;
using System.Collections.Generic;

namespace Expedia.Sublayout
{
    public partial class HotelsListing : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SearchOffer();
            }
            catch (Exception ex)
            {
                Logger.Log("Error at HotelListing.aspx Control: " + ex.Message);
            }
        }

        private void SearchOffer()
        {
            var query = Request.ServerVariables["QUERY_STRING"];
            var apiurl = WebConfigurationManager.AppSettings["APIUrl"];
            Offer offer = GetOffer(apiurl, query);
            if (offer.offers == null || offer.offers.Hotel == null || offer.offers.Hotel.Count <= 0)
            {
                ltlfooter.Visible = true;
                return;
            }

            RednerHotels(offer.offers.Hotel);
        }

        public static Offer GetOffer(string url, string qstring)
        {
            var response = APIHelper.GetAPIResponse(string.Format("{0}&{1}", url, qstring));
            var hotels = Newtonsoft.Json.JsonConvert.DeserializeObject<Offer>(response);
            return hotels;
        }

        private void RednerHotels(List<Hotel> hotelList)
        {
            rpthotelList.DataSource = hotelList;
            rpthotelList.DataBind();
        }
    }
}