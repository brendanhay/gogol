{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , plaContentCategoryIds
    , plaMaxEndDate
    , plaCampaignIds
    , plaPricingTypes
    , plaSearchString
    , plaSizeIds
    , plaIds
    , plaProFileId
    , plaGroupIds
    , plaDirectorySiteIds
    , plaSortOrder
    , plaPaymentSource
    , plaSiteIds
    , plaPageToken
    , plaSortField
    , plaCompatibilities
    , plaMaxStartDate
    , plaAdvertiserIds
    , plaMinStartDate
    , plaArchived
    , plaMaxResults
    , plaMinEndDate
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsList@ method which the
-- 'PlacementsList'' request conforms to.
type PlacementsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParams "placementStrategyIds" Int64 :>
             QueryParams "contentCategoryIds" Int64 :>
               QueryParam "maxEndDate" Text :>
                 QueryParams "campaignIds" Int64 :>
                   QueryParams "pricingTypes" PlacementsListPricingTypes
                     :>
                     QueryParam "searchString" Text :>
                       QueryParams "sizeIds" Int64 :>
                         QueryParams "ids" Int64 :>
                           QueryParams "groupIds" Int64 :>
                             QueryParams "directorySiteIds" Int64 :>
                               QueryParam "sortOrder" PlacementsListSortOrder :>
                                 QueryParam "paymentSource"
                                   PlacementsListPaymentSource
                                   :>
                                   QueryParams "siteIds" Int64 :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "sortField"
                                         PlacementsListSortField
                                         :>
                                         QueryParams "compatibilities"
                                           PlacementsListCompatibilities
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
                                                       QueryParam "alt" AltJSON
                                                         :>
                                                         Get '[JSON]
                                                           PlacementsListResponse

-- | Retrieves a list of placements, possibly filtered.
--
-- /See:/ 'placementsList'' smart constructor.
data PlacementsList' = PlacementsList'
    { _plaPlacementStrategyIds :: !(Maybe [Int64])
    , _plaContentCategoryIds   :: !(Maybe [Int64])
    , _plaMaxEndDate           :: !(Maybe Text)
    , _plaCampaignIds          :: !(Maybe [Int64])
    , _plaPricingTypes         :: !(Maybe [PlacementsListPricingTypes])
    , _plaSearchString         :: !(Maybe Text)
    , _plaSizeIds              :: !(Maybe [Int64])
    , _plaIds                  :: !(Maybe [Int64])
    , _plaProFileId            :: !Int64
    , _plaGroupIds             :: !(Maybe [Int64])
    , _plaDirectorySiteIds     :: !(Maybe [Int64])
    , _plaSortOrder            :: !(Maybe PlacementsListSortOrder)
    , _plaPaymentSource        :: !(Maybe PlacementsListPaymentSource)
    , _plaSiteIds              :: !(Maybe [Int64])
    , _plaPageToken            :: !(Maybe Text)
    , _plaSortField            :: !(Maybe PlacementsListSortField)
    , _plaCompatibilities      :: !(Maybe [PlacementsListCompatibilities])
    , _plaMaxStartDate         :: !(Maybe Text)
    , _plaAdvertiserIds        :: !(Maybe [Int64])
    , _plaMinStartDate         :: !(Maybe Text)
    , _plaArchived             :: !(Maybe Bool)
    , _plaMaxResults           :: !(Maybe Int32)
    , _plaMinEndDate           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaPlacementStrategyIds'
--
-- * 'plaContentCategoryIds'
--
-- * 'plaMaxEndDate'
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
-- * 'plaProFileId'
--
-- * 'plaGroupIds'
--
-- * 'plaDirectorySiteIds'
--
-- * 'plaSortOrder'
--
-- * 'plaPaymentSource'
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
-- * 'plaAdvertiserIds'
--
-- * 'plaMinStartDate'
--
-- * 'plaArchived'
--
-- * 'plaMaxResults'
--
-- * 'plaMinEndDate'
placementsList'
    :: Int64 -- ^ 'profileId'
    -> PlacementsList'
placementsList' pPlaProFileId_ =
    PlacementsList'
    { _plaPlacementStrategyIds = Nothing
    , _plaContentCategoryIds = Nothing
    , _plaMaxEndDate = Nothing
    , _plaCampaignIds = Nothing
    , _plaPricingTypes = Nothing
    , _plaSearchString = Nothing
    , _plaSizeIds = Nothing
    , _plaIds = Nothing
    , _plaProFileId = pPlaProFileId_
    , _plaGroupIds = Nothing
    , _plaDirectorySiteIds = Nothing
    , _plaSortOrder = Nothing
    , _plaPaymentSource = Nothing
    , _plaSiteIds = Nothing
    , _plaPageToken = Nothing
    , _plaSortField = Nothing
    , _plaCompatibilities = Nothing
    , _plaMaxStartDate = Nothing
    , _plaAdvertiserIds = Nothing
    , _plaMinStartDate = Nothing
    , _plaArchived = Nothing
    , _plaMaxResults = Nothing
    , _plaMinEndDate = Nothing
    }

-- | Select only placements that are associated with these placement
-- strategies.
plaPlacementStrategyIds :: Lens' PlacementsList' [Int64]
plaPlacementStrategyIds
  = lens _plaPlacementStrategyIds
      (\ s a -> s{_plaPlacementStrategyIds = a})
      . _Default
      . _Coerce

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

-- | Select only placements that belong to these campaigns.
plaCampaignIds :: Lens' PlacementsList' [Int64]
plaCampaignIds
  = lens _plaCampaignIds
      (\ s a -> s{_plaCampaignIds = a})
      . _Default
      . _Coerce

-- | Select only placements with these pricing types.
plaPricingTypes :: Lens' PlacementsList' [PlacementsListPricingTypes]
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
plaProFileId :: Lens' PlacementsList' Int64
plaProFileId
  = lens _plaProFileId (\ s a -> s{_plaProFileId = a})

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
plaSortOrder :: Lens' PlacementsList' (Maybe PlacementsListSortOrder)
plaSortOrder
  = lens _plaSortOrder (\ s a -> s{_plaSortOrder = a})

-- | Select only placements with this payment source.
plaPaymentSource :: Lens' PlacementsList' (Maybe PlacementsListPaymentSource)
plaPaymentSource
  = lens _plaPaymentSource
      (\ s a -> s{_plaPaymentSource = a})

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
plaSortField :: Lens' PlacementsList' (Maybe PlacementsListSortField)
plaSortField
  = lens _plaSortField (\ s a -> s{_plaSortField = a})

-- | Select only placements that are associated with these compatibilities.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO refers
-- to rendering in in-stream video ads developed with the VAST standard.
plaCompatibilities :: Lens' PlacementsList' [PlacementsListCompatibilities]
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

instance GoogleRequest PlacementsList' where
        type Rs PlacementsList' = PlacementsListResponse
        requestClient PlacementsList'{..}
          = go _plaProFileId
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
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy PlacementsListResource)
                      mempty
