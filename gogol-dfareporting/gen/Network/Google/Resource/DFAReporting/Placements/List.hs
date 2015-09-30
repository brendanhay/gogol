{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Placements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of placements, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsList@.
module Network.Google.Resource.DFAReporting.Placements.List
    (
    -- * REST Resource
      PlacementsListResource

    -- * Creating a Request
    , placementsList'
    , PlacementsList'

    -- * Request Lenses
    , plaPlacementStrategyIds
    , plaQuotaUser
    , plaPrettyPrint
    , plaContentCategoryIds
    , plaMaxEndDate
    , plaUserIp
    , plaCampaignIds
    , plaPricingTypes
    , plaSearchString
    , plaSizeIds
    , plaIds
    , plaProfileId
    , plaGroupIds
    , plaDirectorySiteIds
    , plaSortOrder
    , plaPaymentSource
    , plaKey
    , plaSiteIds
    , plaPageToken
    , plaSortField
    , plaCompatibilities
    , plaMaxStartDate
    , plaOauthToken
    , plaAdvertiserIds
    , plaMinStartDate
    , plaArchived
    , plaMaxResults
    , plaMinEndDate
    , plaFields
    , plaAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsList@ which the
-- 'PlacementsList'' request conforms to.
type PlacementsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParams "placementStrategyIds" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParams "contentCategoryIds" Int64 :>
                   QueryParam "maxEndDate" Text :>
                     QueryParam "userIp" Text :>
                       QueryParams "campaignIds" Int64 :>
                         QueryParams "pricingTypes"
                           DfareportingPlacementsListPricingTypes
                           :>
                           QueryParam "searchString" Text :>
                             QueryParams "sizeIds" Int64 :>
                               QueryParams "ids" Int64 :>
                                 QueryParams "groupIds" Int64 :>
                                   QueryParams "directorySiteIds" Int64 :>
                                     QueryParam "sortOrder"
                                       DfareportingPlacementsListSortOrder
                                       :>
                                       QueryParam "paymentSource"
                                         DfareportingPlacementsListPaymentSource
                                         :>
                                         QueryParam "key" Text :>
                                           QueryParams "siteIds" Int64 :>
                                             QueryParam "pageToken" Text :>
                                               QueryParam "sortField"
                                                 DfareportingPlacementsListSortField
                                                 :>
                                                 QueryParams "compatibilities"
                                                   DfareportingPlacementsListCompatibilities
                                                   :>
                                                   QueryParam "maxStartDate"
                                                     Text
                                                     :>
                                                     QueryParam "oauth_token"
                                                       Text
                                                       :>
                                                       QueryParams
                                                         "advertiserIds"
                                                         Int64
                                                         :>
                                                         QueryParam
                                                           "minStartDate"
                                                           Text
                                                           :>
                                                           QueryParam "archived"
                                                             Bool
                                                             :>
                                                             QueryParam
                                                               "maxResults"
                                                               Int32
                                                               :>
                                                               QueryParam
                                                                 "minEndDate"
                                                                 Text
                                                                 :>
                                                                 QueryParam
                                                                   "fields"
                                                                   Text
                                                                   :>
                                                                   QueryParam
                                                                     "alt"
                                                                     Alt
                                                                     :>
                                                                     Get '[JSON]
                                                                       PlacementsListResponse

-- | Retrieves a list of placements, possibly filtered.
--
-- /See:/ 'placementsList'' smart constructor.
data PlacementsList' = PlacementsList'
    { _plaPlacementStrategyIds :: !(Maybe Int64)
    , _plaQuotaUser            :: !(Maybe Text)
    , _plaPrettyPrint          :: !Bool
    , _plaContentCategoryIds   :: !(Maybe Int64)
    , _plaMaxEndDate           :: !(Maybe Text)
    , _plaUserIp               :: !(Maybe Text)
    , _plaCampaignIds          :: !(Maybe Int64)
    , _plaPricingTypes         :: !(Maybe DfareportingPlacementsListPricingTypes)
    , _plaSearchString         :: !(Maybe Text)
    , _plaSizeIds              :: !(Maybe Int64)
    , _plaIds                  :: !(Maybe Int64)
    , _plaProfileId            :: !Int64
    , _plaGroupIds             :: !(Maybe Int64)
    , _plaDirectorySiteIds     :: !(Maybe Int64)
    , _plaSortOrder            :: !(Maybe DfareportingPlacementsListSortOrder)
    , _plaPaymentSource        :: !(Maybe DfareportingPlacementsListPaymentSource)
    , _plaKey                  :: !(Maybe Text)
    , _plaSiteIds              :: !(Maybe Int64)
    , _plaPageToken            :: !(Maybe Text)
    , _plaSortField            :: !(Maybe DfareportingPlacementsListSortField)
    , _plaCompatibilities      :: !(Maybe DfareportingPlacementsListCompatibilities)
    , _plaMaxStartDate         :: !(Maybe Text)
    , _plaOauthToken           :: !(Maybe Text)
    , _plaAdvertiserIds        :: !(Maybe Int64)
    , _plaMinStartDate         :: !(Maybe Text)
    , _plaArchived             :: !(Maybe Bool)
    , _plaMaxResults           :: !(Maybe Int32)
    , _plaMinEndDate           :: !(Maybe Text)
    , _plaFields               :: !(Maybe Text)
    , _plaAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaPlacementStrategyIds'
--
-- * 'plaQuotaUser'
--
-- * 'plaPrettyPrint'
--
-- * 'plaContentCategoryIds'
--
-- * 'plaMaxEndDate'
--
-- * 'plaUserIp'
--
-- * 'plaCampaignIds'
--
-- * 'plaPricingTypes'
--
-- * 'plaSearchString'
--
-- * 'plaSizeIds'
--
-- * 'plaIds'
--
-- * 'plaProfileId'
--
-- * 'plaGroupIds'
--
-- * 'plaDirectorySiteIds'
--
-- * 'plaSortOrder'
--
-- * 'plaPaymentSource'
--
-- * 'plaKey'
--
-- * 'plaSiteIds'
--
-- * 'plaPageToken'
--
-- * 'plaSortField'
--
-- * 'plaCompatibilities'
--
-- * 'plaMaxStartDate'
--
-- * 'plaOauthToken'
--
-- * 'plaAdvertiserIds'
--
-- * 'plaMinStartDate'
--
-- * 'plaArchived'
--
-- * 'plaMaxResults'
--
-- * 'plaMinEndDate'
--
-- * 'plaFields'
--
-- * 'plaAlt'
placementsList'
    :: Int64 -- ^ 'profileId'
    -> PlacementsList'
placementsList' pPlaProfileId_ =
    PlacementsList'
    { _plaPlacementStrategyIds = Nothing
    , _plaQuotaUser = Nothing
    , _plaPrettyPrint = True
    , _plaContentCategoryIds = Nothing
    , _plaMaxEndDate = Nothing
    , _plaUserIp = Nothing
    , _plaCampaignIds = Nothing
    , _plaPricingTypes = Nothing
    , _plaSearchString = Nothing
    , _plaSizeIds = Nothing
    , _plaIds = Nothing
    , _plaProfileId = pPlaProfileId_
    , _plaGroupIds = Nothing
    , _plaDirectorySiteIds = Nothing
    , _plaSortOrder = Nothing
    , _plaPaymentSource = Nothing
    , _plaKey = Nothing
    , _plaSiteIds = Nothing
    , _plaPageToken = Nothing
    , _plaSortField = Nothing
    , _plaCompatibilities = Nothing
    , _plaMaxStartDate = Nothing
    , _plaOauthToken = Nothing
    , _plaAdvertiserIds = Nothing
    , _plaMinStartDate = Nothing
    , _plaArchived = Nothing
    , _plaMaxResults = Nothing
    , _plaMinEndDate = Nothing
    , _plaFields = Nothing
    , _plaAlt = JSON
    }

-- | Select only placements that are associated with these placement
-- strategies.
plaPlacementStrategyIds :: Lens' PlacementsList' (Maybe Int64)
plaPlacementStrategyIds
  = lens _plaPlacementStrategyIds
      (\ s a -> s{_plaPlacementStrategyIds = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plaQuotaUser :: Lens' PlacementsList' (Maybe Text)
plaQuotaUser
  = lens _plaQuotaUser (\ s a -> s{_plaQuotaUser = a})

-- | Returns response with indentations and line breaks.
plaPrettyPrint :: Lens' PlacementsList' Bool
plaPrettyPrint
  = lens _plaPrettyPrint
      (\ s a -> s{_plaPrettyPrint = a})

-- | Select only placements that are associated with these content
-- categories.
plaContentCategoryIds :: Lens' PlacementsList' (Maybe Int64)
plaContentCategoryIds
  = lens _plaContentCategoryIds
      (\ s a -> s{_plaContentCategoryIds = a})

-- | Select only placements or placement groups whose end date is on or
-- before the specified maxEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plaMaxEndDate :: Lens' PlacementsList' (Maybe Text)
plaMaxEndDate
  = lens _plaMaxEndDate
      (\ s a -> s{_plaMaxEndDate = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plaUserIp :: Lens' PlacementsList' (Maybe Text)
plaUserIp
  = lens _plaUserIp (\ s a -> s{_plaUserIp = a})

-- | Select only placements that belong to these campaigns.
plaCampaignIds :: Lens' PlacementsList' (Maybe Int64)
plaCampaignIds
  = lens _plaCampaignIds
      (\ s a -> s{_plaCampaignIds = a})

-- | Select only placements with these pricing types.
plaPricingTypes :: Lens' PlacementsList' (Maybe DfareportingPlacementsListPricingTypes)
plaPricingTypes
  = lens _plaPricingTypes
      (\ s a -> s{_plaPricingTypes = a})

-- | Allows searching for placements by name or ID. Wildcards (*) are
-- allowed. For example, \"placement*2015\" will return placements with
-- names like \"placement June 2015\", \"placement May 2015\", or simply
-- \"placements 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"placement\" will match placements with name \"my
-- placement\", \"placement 2015\", or simply \"placement\".
plaSearchString :: Lens' PlacementsList' (Maybe Text)
plaSearchString
  = lens _plaSearchString
      (\ s a -> s{_plaSearchString = a})

-- | Select only placements that are associated with these sizes.
plaSizeIds :: Lens' PlacementsList' (Maybe Int64)
plaSizeIds
  = lens _plaSizeIds (\ s a -> s{_plaSizeIds = a})

-- | Select only placements with these IDs.
plaIds :: Lens' PlacementsList' (Maybe Int64)
plaIds = lens _plaIds (\ s a -> s{_plaIds = a})

-- | User profile ID associated with this request.
plaProfileId :: Lens' PlacementsList' Int64
plaProfileId
  = lens _plaProfileId (\ s a -> s{_plaProfileId = a})

-- | Select only placements that belong to these placement groups.
plaGroupIds :: Lens' PlacementsList' (Maybe Int64)
plaGroupIds
  = lens _plaGroupIds (\ s a -> s{_plaGroupIds = a})

-- | Select only placements that are associated with these directory sites.
plaDirectorySiteIds :: Lens' PlacementsList' (Maybe Int64)
plaDirectorySiteIds
  = lens _plaDirectorySiteIds
      (\ s a -> s{_plaDirectorySiteIds = a})

-- | Order of sorted results, default is ASCENDING.
plaSortOrder :: Lens' PlacementsList' (Maybe DfareportingPlacementsListSortOrder)
plaSortOrder
  = lens _plaSortOrder (\ s a -> s{_plaSortOrder = a})

-- | Select only placements with this payment source.
plaPaymentSource :: Lens' PlacementsList' (Maybe DfareportingPlacementsListPaymentSource)
plaPaymentSource
  = lens _plaPaymentSource
      (\ s a -> s{_plaPaymentSource = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plaKey :: Lens' PlacementsList' (Maybe Text)
plaKey = lens _plaKey (\ s a -> s{_plaKey = a})

-- | Select only placements that are associated with these sites.
plaSiteIds :: Lens' PlacementsList' (Maybe Int64)
plaSiteIds
  = lens _plaSiteIds (\ s a -> s{_plaSiteIds = a})

-- | Value of the nextPageToken from the previous result page.
plaPageToken :: Lens' PlacementsList' (Maybe Text)
plaPageToken
  = lens _plaPageToken (\ s a -> s{_plaPageToken = a})

-- | Field by which to sort the list.
plaSortField :: Lens' PlacementsList' (Maybe DfareportingPlacementsListSortField)
plaSortField
  = lens _plaSortField (\ s a -> s{_plaSortField = a})

-- | Select only placements that are associated with these compatibilities.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO refers
-- to rendering in in-stream video ads developed with the VAST standard.
plaCompatibilities :: Lens' PlacementsList' (Maybe DfareportingPlacementsListCompatibilities)
plaCompatibilities
  = lens _plaCompatibilities
      (\ s a -> s{_plaCompatibilities = a})

-- | Select only placements or placement groups whose start date is on or
-- before the specified maxStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plaMaxStartDate :: Lens' PlacementsList' (Maybe Text)
plaMaxStartDate
  = lens _plaMaxStartDate
      (\ s a -> s{_plaMaxStartDate = a})

-- | OAuth 2.0 token for the current user.
plaOauthToken :: Lens' PlacementsList' (Maybe Text)
plaOauthToken
  = lens _plaOauthToken
      (\ s a -> s{_plaOauthToken = a})

-- | Select only placements that belong to these advertisers.
plaAdvertiserIds :: Lens' PlacementsList' (Maybe Int64)
plaAdvertiserIds
  = lens _plaAdvertiserIds
      (\ s a -> s{_plaAdvertiserIds = a})

-- | Select only placements or placement groups whose start date is on or
-- after the specified minStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plaMinStartDate :: Lens' PlacementsList' (Maybe Text)
plaMinStartDate
  = lens _plaMinStartDate
      (\ s a -> s{_plaMinStartDate = a})

-- | Select only archived placements. Don\'t set this field to select both
-- archived and non-archived placements.
plaArchived :: Lens' PlacementsList' (Maybe Bool)
plaArchived
  = lens _plaArchived (\ s a -> s{_plaArchived = a})

-- | Maximum number of results to return.
plaMaxResults :: Lens' PlacementsList' (Maybe Int32)
plaMaxResults
  = lens _plaMaxResults
      (\ s a -> s{_plaMaxResults = a})

-- | Select only placements or placement groups whose end date is on or after
-- the specified minEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plaMinEndDate :: Lens' PlacementsList' (Maybe Text)
plaMinEndDate
  = lens _plaMinEndDate
      (\ s a -> s{_plaMinEndDate = a})

-- | Selector specifying which fields to include in a partial response.
plaFields :: Lens' PlacementsList' (Maybe Text)
plaFields
  = lens _plaFields (\ s a -> s{_plaFields = a})

-- | Data format for the response.
plaAlt :: Lens' PlacementsList' Alt
plaAlt = lens _plaAlt (\ s a -> s{_plaAlt = a})

instance GoogleRequest PlacementsList' where
        type Rs PlacementsList' = PlacementsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsList'{..}
          = go _plaPlacementStrategyIds _plaQuotaUser
              (Just _plaPrettyPrint)
              _plaContentCategoryIds
              _plaMaxEndDate
              _plaUserIp
              _plaCampaignIds
              _plaPricingTypes
              _plaSearchString
              _plaSizeIds
              _plaIds
              _plaProfileId
              _plaGroupIds
              _plaDirectorySiteIds
              _plaSortOrder
              _plaPaymentSource
              _plaKey
              _plaSiteIds
              _plaPageToken
              _plaSortField
              _plaCompatibilities
              _plaMaxStartDate
              _plaOauthToken
              _plaAdvertiserIds
              _plaMinStartDate
              _plaArchived
              _plaMaxResults
              _plaMinEndDate
              _plaFields
              (Just _plaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsListResource)
                      r
                      u
