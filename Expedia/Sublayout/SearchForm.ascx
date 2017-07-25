<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchForm.ascx.cs" Inherits="Expedia.Sublayout.SearchForm" %>
<form id="searchForm" method="GET" action="../Layout/Results.aspx">
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <label>Destination:</label>
                <input type="text" name="destinationName" class="form-control" data-validation="required" data-validation-error-msg="Please Enter a Destination" />
            </div>
            <div class="form-group has-feedback">
                <label>Min Trip Start Date:</label>
                <input id="minTripStartDate" class="form-control datepicker" type="text" name="minTripStartDate"
                    data-date-format="yyyy-dd-mm" />

            </div>
            <div class="form-group has-feedback">
                <label>Max Trip Start Date:</label>
                <input id="maxTripStartDate" class="form-control datepicker" type="text" name="maxTripStartDate"
                    data-date-format="yyyy-dd-mm" />
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group has-feedback">
                <label>Star Rating:</label>
                <fieldset class="rating">
                    <input type="radio" id="rstar5" name="maxStarRating" value="5" /><label for="rstar5" title="Rocks!">5 stars</label>
                    <input type="radio" id="rstar4" name="maxStarRating" value="4" /><label for="rstar4" title="Pretty good">4 stars</label>
                    <input type="radio" id="rstar3" name="maxStarRating" value="3" /><label for="rstar3" title="Meh">3 stars</label>
                    <input type="radio" id="rstar2" name="maxStarRating" value="2" /><label for="rstar2" title="Kinda bad">2 stars</label>
                    <input type="radio" id="rstar1" name="maxStarRating" value="1" /><label for="rstar1" title="Sucks big time">1 star</label>
                </fieldset>
            </div>
            <div class="form-group has-feedback">
                <label>Total Rating:</label>
                <fieldset class="rating">
                    <input type="radio" id="tstar5" name="maxTotalRate" value="5" /><label for="tstar5" title="Rocks!">5 stars</label>
                    <input type="radio" id="tstar4" name="maxTotalRate" value="4" /><label for="tstar4" title="Pretty good">4 stars</label>
                    <input type="radio" id="tstar3" name="maxTotalRate" value="3" /><label for="tstar3" title="Meh">3 stars</label>
                    <input type="radio" id="tstar2" name="maxTotalRate" value="2" /><label for="tstar2" title="Kinda bad">2 stars</label>
                    <input type="radio" id="tstar1" name="maxTotalRate" value="1" /><label for="tstar1" title="Sucks big time">1 star</label>
                </fieldset>
            </div>
            <div class="form-group has-feedback">
                <label>Guest Rating:</label>
                <fieldset class="rating">
                    <input type="radio" id="gstar5" name="maxGuestRating" value="5" /><label for="gstar5" title="Rocks!">5 stars</label>
                    <input type="radio" id="gstar4" name="maxGuestRating" value="4" /><label for="gstar4" title="Pretty good">4 stars</label>
                    <input type="radio" id="gstar3" name="maxGuestRating" value="3" /><label for="gstar3" title="Meh">3 stars</label>
                    <input type="radio" id="gstar2" name="maxGuestRating" value="2" /><label for="gstar2" title="Kinda bad">2 stars</label>
                    <input type="radio" id="gstar1" name="maxGuestRating" value="1" /><label for="gstar1" title="Sucks big time">1 star</label>
                </fieldset>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="form-group">
                <button id="offer-search" type="submit" class="btn btn-primary btn-submit">
                    Search
                </button>
                &nbsp; &nbsp; &nbsp;
                <button id="offer-Reset" type="reset" class="btn btn-primary btn-submit">
                    Reset
                </button>
            </div>
        </div>
    </div>
</form>
