{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , plaUserIP
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
    , plaOAuthToken
    , plaAdvertiserIds
    , plaMinStartDate
    , plaArchived
    , plaMaxResults
    , plaMinEndDate
    , plaFields
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
             QueryParams "contentCategoryIds" Int64 :>
               QueryParam "maxEndDate" Text :>
                 QueryParams "campaignIds" Int64 :>
                   QueryParams "pricingTypes" PricingTypes :>
                     QueryParam "searchString" Text :>
                       QueryParams "sizeIds" Int64 :>
                         QueryParams "ids" Int64 :>
                           QueryParams "groupIds" Int64 :>
                             QueryParams "directorySiteIds" Int64 :>
                               QueryParam "sortOrder"
                                 DfareportingPlacementsListSortOrder
                                 :>
                                 QueryParam "paymentSource" PaymentSource :>
                                   QueryParams "siteIds" Int64 :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "sortField"
                                         DfareportingPlacementsListSortField
                                         :>
                                         QueryParams "compatibilities"
                                           Compatibilities
                                           :>
                                           QueryParam "maxStartDate" Text :>
                                             QueryParams "advertiserIds" Int64
                                               :>
                                               QueryParam "minStartDate" Text :>
                                                 QueryParam "archived" Bool :>
                                                   QueryParam "maxResults" Int32
                                                     :>
                                                     QueryParam "minEndDate"
                                                       Text
                                                       :>
                                                       QueryParam "quotaUser"
                                                         Text
                                                         :>
                                                         QueryParam
                                                           "prettyPrint"
                                                           Bool
                                                           :>
                                                           QueryParam "userIp"
                                                             Text
                                                             :>
                                                             QueryParam "fields"
                                                               Text
                                                               :>
                                                               QueryParam "key"
                                                                 Key
                                                                 :>
                                                                 QueryParam
                                                                   "oauth_token"
                                                                   OAuthToken
                                                                   :>
                                                                   QueryParam
                                                                     "alt"
                                                                     AltJSON
                                                                     :>
                                                                     Get '[JSON]
                                                                       PlacementsListResponse

-- | Retrieves a list of placements, possibly filtered.
--
-- /See:/ 'placementsList'' smart constructor.
data PlacementsList' = PlacementsList'
    { _plaPlacementStrategyIds :: !(Maybe [Int64])
    , _plaQuotaUser            :: !(Maybe Text)
    , _plaPrettyPrint          :: !Bool
    , _plaContentCategoryIds   :: !(Maybe [Int64])
    , _plaMaxEndDate           :: !(Maybe Text)
    , _plaUserIP               :: !(Maybe Text)
    , _plaCampaignIds          :: !(Maybe [Int64])
    , _plaPricingTypes         :: !(Maybe [PricingTypes])
    , _plaSearchString         :: !(Maybe Text)
    , _plaSizeIds              :: !(Maybe [Int64])
    , _plaIds                  :: !(Maybe [Int64])
    , _plaProfileId            :: !Int64
    , _plaGroupIds             :: !(Maybe [Int64])
    , _plaDirectorySiteIds     :: !(Maybe [Int64])
    , _plaSortOrder            :: !(Maybe DfareportingPlacementsListSortOrder)
    , _plaPaymentSource        :: !(Maybe PaymentSource)
    , _plaKey                  :: !(Maybe Key)
    , _plaSiteIds              :: !(Maybe [Int64])
    , _plaPageToken            :: !(Maybe Text)
    , _plaSortField            :: !(Maybe DfareportingPlacementsListSortField)
    , _plaCompatibilities      :: !(Maybe [Compatibilities])
    , _plaMaxStartDate         :: !(Maybe Text)
    , _plaOAuthToken           :: !(Maybe OAuthToken)
    , _plaAdvertiserIds        :: !(Maybe [Int64])
    , _plaMinStartDate         :: !(Maybe Text)
    , _plaArchived             :: !(Maybe Bool)
    , _plaMaxResults           :: !(Maybe Int32)
    , _plaMinEndDate           :: !(Maybe Text)
    , _plaFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'plaUserIP'
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
-- * 'plaOAuthToken'
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
    , _plaUserIP = Nothing
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
    , _plaOAuthToken = Nothing
    , _plaAdvertiserIds = Nothing
    , _plaMinStartDate = Nothing
    , _plaArchived = Nothing
    , _plaMaxResults = Nothing
    , _plaMinEndDate = Nothing
    , _plaFields = Nothing
    }

-- | Select only placements that are associated with these placement
-- strategies.
plaPlacementStrategyIds :: Lens' PlacementsList' [Int64]
plaPlacementStrategyIds
  = lens _plaPlacementStrategyIds
      (\ s a -> s{_plaPlacementStrategyIds = a})
      . _Default
      . _Coerce

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
plaContentCategoryIds :: Lens' PlacementsList' [Int64]
plaContentCategoryIds
  = lens _plaContentCategoryIds
      (\ s a -> s{_plaContentCategoryIds = a})
      . _Default
      . _Coerce

-- | Select only placements or placement groups whose end date is on or
-- before the specified maxEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plaMaxEndDate :: Lens' PlacementsList' (Maybe Text)
plaMaxEndDate
  = lens _plaMaxEndDate
      (\ s a -> s{_plaMaxEndDate = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plaUserIP :: Lens' PlacementsList' (Maybe Text)
plaUserIP
  = lens _plaUserIP (\ s a -> s{_plaUserIP = a})

-- | Select only placements that belong to these campaigns.
plaCampaignIds :: Lens' PlacementsList' [Int64]
plaCampaignIds
  = lens _plaCampaignIds
      (\ s a -> s{_plaCampaignIds = a})
      . _Default
      . _Coerce

-- | Select only placements with these pricing types.
plaPricingTypes :: Lens' PlacementsList' [PricingTypes]
plaPricingTypes
  = lens _plaPricingTypes
      (\ s a -> s{_plaPricingTypes = a})
      . _Default
      . _Coerce

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
plaSizeIds :: Lens' PlacementsList' [Int64]
plaSizeIds
  = lens _plaSizeIds (\ s a -> s{_plaSizeIds = a}) .
      _Default
      . _Coerce

-- | Select only placements with these IDs.
plaIds :: Lens' PlacementsList' [Int64]
plaIds
  = lens _plaIds (\ s a -> s{_plaIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
plaProfileId :: Lens' PlacementsList' Int64
plaProfileId
  = lens _plaProfileId (\ s a -> s{_plaProfileId = a})

-- | Select only placements that belong to these placement groups.
plaGroupIds :: Lens' PlacementsList' [Int64]
plaGroupIds
  = lens _plaGroupIds (\ s a -> s{_plaGroupIds = a}) .
      _Default
      . _Coerce

-- | Select only placements that are associated with these directory sites.
plaDirectorySiteIds :: Lens' PlacementsList' [Int64]
plaDirectorySiteIds
  = lens _plaDirectorySiteIds
      (\ s a -> s{_plaDirectorySiteIds = a})
      . _Default
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
plaSortOrder :: Lens' PlacementsList' (Maybe DfareportingPlacementsListSortOrder)
plaSortOrder
  = lens _plaSortOrder (\ s a -> s{_plaSortOrder = a})

-- | Select only placements with this payment source.
plaPaymentSource :: Lens' PlacementsList' (Maybe PaymentSource)
plaPaymentSource
  = lens _plaPaymentSource
      (\ s a -> s{_plaPaymentSource = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plaKey :: Lens' PlacementsList' (Maybe Key)
plaKey = lens _plaKey (\ s a -> s{_plaKey = a})

-- | Select only placements that are associated with these sites.
plaSiteIds :: Lens' PlacementsList' [Int64]
plaSiteIds
  = lens _plaSiteIds (\ s a -> s{_plaSiteIds = a}) .
      _Default
      . _Coerce

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
plaCompatibilities :: Lens' PlacementsList' [Compatibilities]
plaCompatibilities
  = lens _plaCompatibilities
      (\ s a -> s{_plaCompatibilities = a})
      . _Default
      . _Coerce

-- | Select only placements or placement groups whose start date is on or
-- before the specified maxStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
plaMaxStartDate :: Lens' PlacementsList' (Maybe Text)
plaMaxStartDate
  = lens _plaMaxStartDate
      (\ s a -> s{_plaMaxStartDate = a})

-- | OAuth 2.0 token for the current user.
plaOAuthToken :: Lens' PlacementsList' (Maybe OAuthToken)
plaOAuthToken
  = lens _plaOAuthToken
      (\ s a -> s{_plaOAuthToken = a})

-- | Select only placements that belong to these advertisers.
plaAdvertiserIds :: Lens' PlacementsList' [Int64]
plaAdvertiserIds
  = lens _plaAdvertiserIds
      (\ s a -> s{_plaAdvertiserIds = a})
      . _Default
      . _Coerce

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

instance GoogleAuth PlacementsList' where
        authKey = plaKey . _Just
        authToken = plaOAuthToken . _Just

instance GoogleRequest PlacementsList' where
        type Rs PlacementsList' = PlacementsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsList'{..}
          = go _plaProfileId
              (_plaPlacementStrategyIds ^. _Default)
              (_plaContentCategoryIds ^. _Default)
              _plaMaxEndDate
              (_plaCampaignIds ^. _Default)
              (_plaPricingTypes ^. _Default)
              _plaSearchString
              (_plaSizeIds ^. _Default)
              (_plaIds ^. _Default)
              (_plaGroupIds ^. _Default)
              (_plaDirectorySiteIds ^. _Default)
              _plaSortOrder
              _plaPaymentSource
              (_plaSiteIds ^. _Default)
              _plaPageToken
              _plaSortField
              (_plaCompatibilities ^. _Default)
              _plaMaxStartDate
              (_plaAdvertiserIds ^. _Default)
              _plaMinStartDate
              _plaArchived
              _plaMaxResults
              _plaMinEndDate
              _plaQuotaUser
              (Just _plaPrettyPrint)
              _plaUserIP
              _plaFields
              _plaKey
              _plaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsListResource)
                      r
                      u
