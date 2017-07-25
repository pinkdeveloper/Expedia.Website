<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HotelsListing.ascx.cs" Inherits="Expedia.Sublayout.HotelsListing" %>
<div class="container">
    <div class="content-wrapper">
        <div class="row content-holder">
            <div class="col-sm-12 content inner-container">
                 <h3><asp:Literal ID="ltlfooter" runat="server" Visible="false">No result. Please try another filter</asp:Literal></h3>
                <asp:Repeater ID="rpthotelList" runat="server">
                    <ItemTemplate>
                        <div style="min-height: 50px" class="listing-container">
                            <div class="row column-listing">
                                <div class="col-sm-3">
                                    <img src="<%# ((Expedia.Utilities.Models.Hotel)Container.DataItem).hotelInfo.hotelImageUrl %> " alt="">
                                </div>
                                <div class="col-sm-9">
                                    <h3><%# ((Expedia.Utilities.Models.Hotel)Container.DataItem).hotelInfo.hotelName %></h3>
                                    <p><%# ((Expedia.Utilities.Models.Hotel)Container.DataItem).hotelInfo.hotelLongDestination %> </p>
                                    <p>Star Rating : <%# ((Expedia.Utilities.Models.Hotel)Container.DataItem).hotelInfo.hotelStarRating %> </p>
                                    <p><a href="#" class="more">Learn more</a></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</div>


