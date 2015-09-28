{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Placements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of placements, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.list@.
module Network.Google.API.DFAReporting.Placements.List
    (
    -- * REST Resource
      PlacementsListAPI

    -- * Creating a Request
    , placementsList'
    , PlacementsList'

    -- * Request Lenses
    , plPlacementStrategyIds
    , plQuotaUser
    , plPrettyPrint
    , plContentCategoryIds
    , plMaxEndDate
    , plUserIp
    , plCampaignIds
    , plPricingTypes
    , plSearchString
    , plSizeIds
    , plIds
    , plProfileId
    , plGroupIds
    , plDirectorySiteIds
    , plSortOrder
    , plPaymentSource
    , plKey
    , plSiteIds
    , plPageToken
    , plSortField
    , plCompatibilities
    , plMaxStartDate
    , plOauthToken
    , plAdvertiserIds
    , plMinStartDate
    , plArchived
    , plMaxResults
    , plMinEndDate
    , plFields
    , plAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.placements.list which the
-- 'PlacementsList'' request conforms to.
type PlacementsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "placementStrategyIds" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "contentCategoryIds" Int64 :>
                   QueryParam "maxEndDate" Text :>
                     QueryParam "userIp" Text :>
                       QueryParam "campaignIds" Int64 :>
                         QueryParam "pricingTypes" PlacementsList'PricingTypes
                           :>
                           QueryParam "searchString" Text :>
                             QueryParam "sizeIds" Int64 :>
                               QueryParam "ids" Int64 :>
                                 QueryParam "groupIds" Int64 :>
                                   QueryParam "directorySiteIds" Int64 :>
                                     QueryParam "sortOrder"
                                       PlacementsList'SortOrder
                                       :>
                                       QueryParam "paymentSource"
                                         PlacementsList'PaymentSource
                                         :>
                                         QueryParam "key" Text :>
                                           QueryParam "siteIds" Int64 :>
                                             QueryParam "pageToken" Text :>
                                               QueryParam "sortField"
                                                 PlacementsList'SortField
                                                 :>
                                                 QueryParam "compatibilities"
                                                   PlacementsList'Compatibilities
                                                   :>
                                                   QueryParam "maxStartDate"
                                                     Text
                                                     :>
                                                     QueryParam "oauth_token"
                                                       Text
                                                       :>
                                                       QueryParam
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
    { _plPlacementStrategyIds :: !(Maybe Int64)
    , _plQuotaUser            :: !(Maybe Text)
    , _plPrettyPrint          :: !Bool
    , _plContentCategoryIds   :: !(Maybe Int64)
    , _plMaxEndDate           :: !(Maybe Text)
    , _plUserIp               :: !(Maybe Text)
    , _plCampaignIds          :: !(Maybe Int64)
    , _plPricingTypes         :: !(Maybe PlacementsList'PricingTypes)
    , _plSearchString         :: !(Maybe Text)
    , _plSizeIds              :: !(Maybe Int64)
    , _plIds                  :: !(Maybe Int64)
    , _plProfileId            :: !Int64
    , _plGroupIds             :: !(Maybe Int64)
    , _plDirectorySiteIds     :: !(Maybe Int64)
    , _plSortOrder            :: !(Maybe PlacementsList'SortOrder)
    , _plPaymentSource        :: !(Maybe PlacementsList'PaymentSource)
    , _plKey                  :: !(Maybe Text)
    , _plSiteIds              :: !(Maybe Int64)
    , _plPageToken            :: !(Maybe Text)
    , _plSortField            :: !(Maybe PlacementsList'SortField)
    , _plCompatibilities      :: !(Maybe PlacementsList'Compatibilities)
    , _plMaxStartDate         :: !(Maybe Text)
    , _plOauthToken           :: !(Maybe Text)
    , _plAdvertiserIds        :: !(Maybe Int64)
    , _plMinStartDate         :: !(Maybe Text)
    , _plArchived             :: !(Maybe Bool)
    , _plMaxResults           :: !(Maybe Int32)
    , _plMinEndDate           :: !(Maybe Text)
    , _plFields               :: !(Maybe Text)
    , _plAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plPlacementStrategyIds'
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plContentCategoryIds'
--
-- * 'plMaxEndDate'
--
-- * 'plUserIp'
--
-- * 'plCampaignIds'
--
-- * 'plPricingTypes'
--
-- * 'plSearchString'
--
-- * 'plSizeIds'
--
-- * 'plIds'
--
-- * 'plProfileId'
--
-- * 'plGroupIds'
--
-- * 'plDirectorySiteIds'
--
-- * 'plSortOrder'
--
-- * 'plPaymentSource'
--
-- * 'plKey'
--
-- * 'plSiteIds'
--
-- * 'plPageToken'
--
-- * 'plSortField'
--
-- * 'plCompatibilities'
--
-- * 'plMaxStartDate'
--
-- * 'plOauthToken'
--
-- * 'plAdvertiserIds'
--
-- * 'plMinStartDate'
--
-- * 'plArchived'
--
-- * 'plMaxResults'
--
-- * 'plMinEndDate'
--
-- * 'plFields'
--
-- * 'plAlt'
placementsList'
    :: Int64 -- ^ 'profileId'
    -> PlacementsList'
placementsList' pPlProfileId_ =
    PlacementsList'
    { _plPlacementStrategyIds = Nothing
    , _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plContentCategoryIds = Nothing
    , _plMaxEndDate = Nothing
    , _plUserIp = Nothing
    , _plCampaignIds = Nothing
    , _plPricingTypes = Nothing
    , _plSearchString = Nothing
    , _plSizeIds = Nothing
    , _plIds = Nothing
    , _plProfileId = pPlProfileId_
    , _plGroupIds = Nothing
    , _plDirectorySiteIds = Nothing
    , _plSortOrder = Nothing
    , _plPaymentSource = Nothing
    , _plKey = Nothing
    , _plSiteIds = Nothing
    , _plPageToken = Nothing
    , _plSortField = Nothing
    , _plCompatibilities = Nothing
    , _plMaxStartDate = Nothing
    , _plOauthToken = Nothing
    , _plAdvertiserIds = Nothing
    , _plMinStartDate = Nothing
    , _plArchived = Nothing
    , _plMaxResults = Nothing
    , _plMinEndDate = Nothing
    , _plFields = Nothing
    , _plAlt = JSON
    }

-- | Select only placements that are associated with these placement
-- strategies.
plPlacementStrategyIds :: Lens' PlacementsList' (Maybe Int64)
plPlacementStrategyIds
  = lens _plPlacementStrategyIds
      (\ s a -> s{_plPlacementStrategyIds = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PlacementsList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PlacementsList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | Select only placements that are associated with these content
-- categories.
plContentCategoryIds :: Lens' PlacementsList' (Maybe Int64)
plContentCategoryIds
  = lens _plContentCategoryIds
      (\ s a -> s{_plContentCategoryIds = a})

-- | Select only placements or placement groups whose end date is on or
-- before the specified maxEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plMaxEndDate :: Lens' PlacementsList' (Maybe Text)
plMaxEndDate
  = lens _plMaxEndDate (\ s a -> s{_plMaxEndDate = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIp :: Lens' PlacementsList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | Select only placements that belong to these campaigns.
plCampaignIds :: Lens' PlacementsList' (Maybe Int64)
plCampaignIds
  = lens _plCampaignIds
      (\ s a -> s{_plCampaignIds = a})

-- | Select only placements with these pricing types.
plPricingTypes :: Lens' PlacementsList' (Maybe PlacementsList'PricingTypes)
plPricingTypes
  = lens _plPricingTypes
      (\ s a -> s{_plPricingTypes = a})

-- | Allows searching for placements by name or ID. Wildcards (*) are
-- allowed. For example, \"placement*2015\" will return placements with
-- names like \"placement June 2015\", \"placement May 2015\", or simply
-- \"placements 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"placement\" will match placements with name \"my
-- placement\", \"placement 2015\", or simply \"placement\".
plSearchString :: Lens' PlacementsList' (Maybe Text)
plSearchString
  = lens _plSearchString
      (\ s a -> s{_plSearchString = a})

-- | Select only placements that are associated with these sizes.
plSizeIds :: Lens' PlacementsList' (Maybe Int64)
plSizeIds
  = lens _plSizeIds (\ s a -> s{_plSizeIds = a})

-- | Select only placements with these IDs.
plIds :: Lens' PlacementsList' (Maybe Int64)
plIds = lens _plIds (\ s a -> s{_plIds = a})

-- | User profile ID associated with this request.
plProfileId :: Lens' PlacementsList' Int64
plProfileId
  = lens _plProfileId (\ s a -> s{_plProfileId = a})

-- | Select only placements that belong to these placement groups.
plGroupIds :: Lens' PlacementsList' (Maybe Int64)
plGroupIds
  = lens _plGroupIds (\ s a -> s{_plGroupIds = a})

-- | Select only placements that are associated with these directory sites.
plDirectorySiteIds :: Lens' PlacementsList' (Maybe Int64)
plDirectorySiteIds
  = lens _plDirectorySiteIds
      (\ s a -> s{_plDirectorySiteIds = a})

-- | Order of sorted results, default is ASCENDING.
plSortOrder :: Lens' PlacementsList' (Maybe PlacementsList'SortOrder)
plSortOrder
  = lens _plSortOrder (\ s a -> s{_plSortOrder = a})

-- | Select only placements with this payment source.
plPaymentSource :: Lens' PlacementsList' (Maybe PlacementsList'PaymentSource)
plPaymentSource
  = lens _plPaymentSource
      (\ s a -> s{_plPaymentSource = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PlacementsList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | Select only placements that are associated with these sites.
plSiteIds :: Lens' PlacementsList' (Maybe Int64)
plSiteIds
  = lens _plSiteIds (\ s a -> s{_plSiteIds = a})

-- | Value of the nextPageToken from the previous result page.
plPageToken :: Lens' PlacementsList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Field by which to sort the list.
plSortField :: Lens' PlacementsList' (Maybe PlacementsList'SortField)
plSortField
  = lens _plSortField (\ s a -> s{_plSortField = a})

-- | Select only placements that are associated with these compatibilities.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO refers
-- to rendering in in-stream video ads developed with the VAST standard.
plCompatibilities :: Lens' PlacementsList' (Maybe PlacementsList'Compatibilities)
plCompatibilities
  = lens _plCompatibilities
      (\ s a -> s{_plCompatibilities = a})

-- | Select only placements or placement groups whose start date is on or
-- before the specified maxStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plMaxStartDate :: Lens' PlacementsList' (Maybe Text)
plMaxStartDate
  = lens _plMaxStartDate
      (\ s a -> s{_plMaxStartDate = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' PlacementsList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | Select only placements that belong to these advertisers.
plAdvertiserIds :: Lens' PlacementsList' (Maybe Int64)
plAdvertiserIds
  = lens _plAdvertiserIds
      (\ s a -> s{_plAdvertiserIds = a})

-- | Select only placements or placement groups whose start date is on or
-- after the specified minStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plMinStartDate :: Lens' PlacementsList' (Maybe Text)
plMinStartDate
  = lens _plMinStartDate
      (\ s a -> s{_plMinStartDate = a})

-- | Select only archived placements. Don\'t set this field to select both
-- archived and non-archived placements.
plArchived :: Lens' PlacementsList' (Maybe Bool)
plArchived
  = lens _plArchived (\ s a -> s{_plArchived = a})

-- | Maximum number of results to return.
plMaxResults :: Lens' PlacementsList' (Maybe Int32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Select only placements or placement groups whose end date is on or after
-- the specified minEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plMinEndDate :: Lens' PlacementsList' (Maybe Text)
plMinEndDate
  = lens _plMinEndDate (\ s a -> s{_plMinEndDate = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PlacementsList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' PlacementsList' Alt
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest PlacementsList' where
        type Rs PlacementsList' = PlacementsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsList'{..}
          = go _plPlacementStrategyIds _plQuotaUser
              (Just _plPrettyPrint)
              _plContentCategoryIds
              _plMaxEndDate
              _plUserIp
              _plCampaignIds
              _plPricingTypes
              _plSearchString
              _plSizeIds
              _plIds
              _plProfileId
              _plGroupIds
              _plDirectorySiteIds
              _plSortOrder
              _plPaymentSource
              _plKey
              _plSiteIds
              _plPageToken
              _plSortField
              _plCompatibilities
              _plMaxStartDate
              _plOauthToken
              _plAdvertiserIds
              _plMinStartDate
              _plArchived
              _plMaxResults
              _plMinEndDate
              _plFields
              (Just _plAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PlacementsListAPI)
                      r
                      u
