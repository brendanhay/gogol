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
-- Retrieves a list of placements, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.list@.
module Network.Google.Resource.DFAReporting.Placements.List
    (
    -- * REST Resource
      PlacementsListResource

    -- * Creating a Request
    , placementsList
    , PlacementsList

    -- * Request Lenses
    , pPlacementStrategyIds
    , pContentCategoryIds
    , pMaxEndDate
    , pCampaignIds
    , pPricingTypes
    , pSearchString
    , pSizeIds
    , pIds
    , pProFileId
    , pGroupIds
    , pDirectorySiteIds
    , pSortOrder
    , pPaymentSource
    , pSiteIds
    , pPageToken
    , pSortField
    , pCompatibilities
    , pMaxStartDate
    , pAdvertiserIds
    , pMinStartDate
    , pArchived
    , pMaxResults
    , pMinEndDate
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.list@ method which the
-- 'PlacementsList' request conforms to.
type PlacementsListResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (JSONText Int64) :>
             "placements" :>
               QueryParams "placementStrategyIds" (JSONText Int64)
                 :>
                 QueryParams "contentCategoryIds" (JSONText Int64) :>
                   QueryParam "maxEndDate" Text :>
                     QueryParams "campaignIds" (JSONText Int64) :>
                       QueryParams "pricingTypes" PlacementsListPricingTypes
                         :>
                         QueryParam "searchString" Text :>
                           QueryParams "sizeIds" (JSONText Int64) :>
                             QueryParams "ids" (JSONText Int64) :>
                               QueryParams "groupIds" (JSONText Int64) :>
                                 QueryParams "directorySiteIds" (JSONText Int64)
                                   :>
                                   QueryParam "sortOrder"
                                     PlacementsListSortOrder
                                     :>
                                     QueryParam "paymentSource"
                                       PlacementsListPaymentSource
                                       :>
                                       QueryParams "siteIds" (JSONText Int64) :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "sortField"
                                             PlacementsListSortField
                                             :>
                                             QueryParams "compatibilities"
                                               PlacementsListCompatibilities
                                               :>
                                               QueryParam "maxStartDate" Text :>
                                                 QueryParams "advertiserIds"
                                                   (JSONText Int64)
                                                   :>
                                                   QueryParam "minStartDate"
                                                     Text
                                                     :>
                                                     QueryParam "archived" Bool
                                                       :>
                                                       QueryParam "maxResults"
                                                         (JSONText Int32)
                                                         :>
                                                         QueryParam "minEndDate"
                                                           Text
                                                           :>
                                                           QueryParam "alt"
                                                             AltJSON
                                                             :>
                                                             Get '[JSON]
                                                               PlacementsListResponse

-- | Retrieves a list of placements, possibly filtered.
--
-- /See:/ 'placementsList' smart constructor.
data PlacementsList = PlacementsList
    { _pPlacementStrategyIds :: !(Maybe [JSONText Int64])
    , _pContentCategoryIds   :: !(Maybe [JSONText Int64])
    , _pMaxEndDate           :: !(Maybe Text)
    , _pCampaignIds          :: !(Maybe [JSONText Int64])
    , _pPricingTypes         :: !(Maybe [PlacementsListPricingTypes])
    , _pSearchString         :: !(Maybe Text)
    , _pSizeIds              :: !(Maybe [JSONText Int64])
    , _pIds                  :: !(Maybe [JSONText Int64])
    , _pProFileId            :: !(JSONText Int64)
    , _pGroupIds             :: !(Maybe [JSONText Int64])
    , _pDirectorySiteIds     :: !(Maybe [JSONText Int64])
    , _pSortOrder            :: !(Maybe PlacementsListSortOrder)
    , _pPaymentSource        :: !(Maybe PlacementsListPaymentSource)
    , _pSiteIds              :: !(Maybe [JSONText Int64])
    , _pPageToken            :: !(Maybe Text)
    , _pSortField            :: !(Maybe PlacementsListSortField)
    , _pCompatibilities      :: !(Maybe [PlacementsListCompatibilities])
    , _pMaxStartDate         :: !(Maybe Text)
    , _pAdvertiserIds        :: !(Maybe [JSONText Int64])
    , _pMinStartDate         :: !(Maybe Text)
    , _pArchived             :: !(Maybe Bool)
    , _pMaxResults           :: !(Maybe (JSONText Int32))
    , _pMinEndDate           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPlacementStrategyIds'
--
-- * 'pContentCategoryIds'
--
-- * 'pMaxEndDate'
--
-- * 'pCampaignIds'
--
-- * 'pPricingTypes'
--
-- * 'pSearchString'
--
-- * 'pSizeIds'
--
-- * 'pIds'
--
-- * 'pProFileId'
--
-- * 'pGroupIds'
--
-- * 'pDirectorySiteIds'
--
-- * 'pSortOrder'
--
-- * 'pPaymentSource'
--
-- * 'pSiteIds'
--
-- * 'pPageToken'
--
-- * 'pSortField'
--
-- * 'pCompatibilities'
--
-- * 'pMaxStartDate'
--
-- * 'pAdvertiserIds'
--
-- * 'pMinStartDate'
--
-- * 'pArchived'
--
-- * 'pMaxResults'
--
-- * 'pMinEndDate'
placementsList
    :: Int64 -- ^ 'pProFileId'
    -> PlacementsList
placementsList pPProFileId_ =
    PlacementsList
    { _pPlacementStrategyIds = Nothing
    , _pContentCategoryIds = Nothing
    , _pMaxEndDate = Nothing
    , _pCampaignIds = Nothing
    , _pPricingTypes = Nothing
    , _pSearchString = Nothing
    , _pSizeIds = Nothing
    , _pIds = Nothing
    , _pProFileId = pPProFileId_
    , _pGroupIds = Nothing
    , _pDirectorySiteIds = Nothing
    , _pSortOrder = Nothing
    , _pPaymentSource = Nothing
    , _pSiteIds = Nothing
    , _pPageToken = Nothing
    , _pSortField = Nothing
    , _pCompatibilities = Nothing
    , _pMaxStartDate = Nothing
    , _pAdvertiserIds = Nothing
    , _pMinStartDate = Nothing
    , _pArchived = Nothing
    , _pMaxResults = Nothing
    , _pMinEndDate = Nothing
    }

-- | Select only placements that are associated with these placement
-- strategies.
pPlacementStrategyIds :: Lens' PlacementsList [Int64]
pPlacementStrategyIds
  = lens _pPlacementStrategyIds
      (\ s a -> s{_pPlacementStrategyIds = a})
      . _Default
      . _Coerce

-- | Select only placements that are associated with these content
-- categories.
pContentCategoryIds :: Lens' PlacementsList [Int64]
pContentCategoryIds
  = lens _pContentCategoryIds
      (\ s a -> s{_pContentCategoryIds = a})
      . _Default
      . _Coerce

-- | Select only placements or placement groups whose end date is on or
-- before the specified maxEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pMaxEndDate :: Lens' PlacementsList (Maybe Text)
pMaxEndDate
  = lens _pMaxEndDate (\ s a -> s{_pMaxEndDate = a})

-- | Select only placements that belong to these campaigns.
pCampaignIds :: Lens' PlacementsList [Int64]
pCampaignIds
  = lens _pCampaignIds (\ s a -> s{_pCampaignIds = a})
      . _Default
      . _Coerce

-- | Select only placements with these pricing types.
pPricingTypes :: Lens' PlacementsList [PlacementsListPricingTypes]
pPricingTypes
  = lens _pPricingTypes
      (\ s a -> s{_pPricingTypes = a})
      . _Default
      . _Coerce

-- | Allows searching for placements by name or ID. Wildcards (*) are
-- allowed. For example, \"placement*2015\" will return placements with
-- names like \"placement June 2015\", \"placement May 2015\", or simply
-- \"placements 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"placement\" will match placements with name \"my
-- placement\", \"placement 2015\", or simply \"placement\".
pSearchString :: Lens' PlacementsList (Maybe Text)
pSearchString
  = lens _pSearchString
      (\ s a -> s{_pSearchString = a})

-- | Select only placements that are associated with these sizes.
pSizeIds :: Lens' PlacementsList [Int64]
pSizeIds
  = lens _pSizeIds (\ s a -> s{_pSizeIds = a}) .
      _Default
      . _Coerce

-- | Select only placements with these IDs.
pIds :: Lens' PlacementsList [Int64]
pIds
  = lens _pIds (\ s a -> s{_pIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
pProFileId :: Lens' PlacementsList Int64
pProFileId
  = lens _pProFileId (\ s a -> s{_pProFileId = a}) .
      _Coerce

-- | Select only placements that belong to these placement groups.
pGroupIds :: Lens' PlacementsList [Int64]
pGroupIds
  = lens _pGroupIds (\ s a -> s{_pGroupIds = a}) .
      _Default
      . _Coerce

-- | Select only placements that are associated with these directory sites.
pDirectorySiteIds :: Lens' PlacementsList [Int64]
pDirectorySiteIds
  = lens _pDirectorySiteIds
      (\ s a -> s{_pDirectorySiteIds = a})
      . _Default
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
pSortOrder :: Lens' PlacementsList (Maybe PlacementsListSortOrder)
pSortOrder
  = lens _pSortOrder (\ s a -> s{_pSortOrder = a})

-- | Select only placements with this payment source.
pPaymentSource :: Lens' PlacementsList (Maybe PlacementsListPaymentSource)
pPaymentSource
  = lens _pPaymentSource
      (\ s a -> s{_pPaymentSource = a})

-- | Select only placements that are associated with these sites.
pSiteIds :: Lens' PlacementsList [Int64]
pSiteIds
  = lens _pSiteIds (\ s a -> s{_pSiteIds = a}) .
      _Default
      . _Coerce

-- | Value of the nextPageToken from the previous result page.
pPageToken :: Lens' PlacementsList (Maybe Text)
pPageToken
  = lens _pPageToken (\ s a -> s{_pPageToken = a})

-- | Field by which to sort the list.
pSortField :: Lens' PlacementsList (Maybe PlacementsListSortField)
pSortField
  = lens _pSortField (\ s a -> s{_pSortField = a})

-- | Select only placements that are associated with these compatibilities.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO refers
-- to rendering in in-stream video ads developed with the VAST standard.
pCompatibilities :: Lens' PlacementsList [PlacementsListCompatibilities]
pCompatibilities
  = lens _pCompatibilities
      (\ s a -> s{_pCompatibilities = a})
      . _Default
      . _Coerce

-- | Select only placements or placement groups whose start date is on or
-- before the specified maxStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pMaxStartDate :: Lens' PlacementsList (Maybe Text)
pMaxStartDate
  = lens _pMaxStartDate
      (\ s a -> s{_pMaxStartDate = a})

-- | Select only placements that belong to these advertisers.
pAdvertiserIds :: Lens' PlacementsList [Int64]
pAdvertiserIds
  = lens _pAdvertiserIds
      (\ s a -> s{_pAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Select only placements or placement groups whose start date is on or
-- after the specified minStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pMinStartDate :: Lens' PlacementsList (Maybe Text)
pMinStartDate
  = lens _pMinStartDate
      (\ s a -> s{_pMinStartDate = a})

-- | Select only archived placements. Don\'t set this field to select both
-- archived and non-archived placements.
pArchived :: Lens' PlacementsList (Maybe Bool)
pArchived
  = lens _pArchived (\ s a -> s{_pArchived = a})

-- | Maximum number of results to return.
pMaxResults :: Lens' PlacementsList (Maybe Int32)
pMaxResults
  = lens _pMaxResults (\ s a -> s{_pMaxResults = a}) .
      mapping _Coerce

-- | Select only placements or placement groups whose end date is on or after
-- the specified minEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pMinEndDate :: Lens' PlacementsList (Maybe Text)
pMinEndDate
  = lens _pMinEndDate (\ s a -> s{_pMinEndDate = a})

instance GoogleRequest PlacementsList where
        type Rs PlacementsList = PlacementsListResponse
        requestClient PlacementsList{..}
          = go _pProFileId (_pPlacementStrategyIds ^. _Default)
              (_pContentCategoryIds ^. _Default)
              _pMaxEndDate
              (_pCampaignIds ^. _Default)
              (_pPricingTypes ^. _Default)
              _pSearchString
              (_pSizeIds ^. _Default)
              (_pIds ^. _Default)
              (_pGroupIds ^. _Default)
              (_pDirectorySiteIds ^. _Default)
              _pSortOrder
              _pPaymentSource
              (_pSiteIds ^. _Default)
              _pPageToken
              _pSortField
              (_pCompatibilities ^. _Default)
              _pMaxStartDate
              (_pAdvertiserIds ^. _Default)
              _pMinStartDate
              _pArchived
              _pMaxResults
              _pMinEndDate
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy PlacementsListResource)
                      mempty
