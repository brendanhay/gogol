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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of placement groups, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementGroups.list@.
module Network.Google.Resource.DFAReporting.PlacementGroups.List
    (
    -- * REST Resource
      PlacementGroupsListResource

    -- * Creating a Request
    , placementGroupsList
    , PlacementGroupsList

    -- * Request Lenses
    , pglPlacementStrategyIds
    , pglXgafv
    , pglContentCategoryIds
    , pglMaxEndDate
    , pglUploadProtocol
    , pglAccessToken
    , pglCampaignIds
    , pglPricingTypes
    , pglSearchString
    , pglUploadType
    , pglIds
    , pglProFileId
    , pglPlacementGroupType
    , pglDirectorySiteIds
    , pglSortOrder
    , pglSiteIds
    , pglPageToken
    , pglSortField
    , pglMaxStartDate
    , pglAdvertiserIds
    , pglMinStartDate
    , pglArchived
    , pglMaxResults
    , pglMinEndDate
    , pglCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementGroups.list@ method which the
-- 'PlacementGroupsList' request conforms to.
type PlacementGroupsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementGroups" :>
               QueryParams "placementStrategyIds" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParams "contentCategoryIds" (Textual Int64) :>
                     QueryParam "maxEndDate" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParams "campaignIds" (Textual Int64) :>
                             QueryParams "pricingTypes"
                               PlacementGroupsListPricingTypes
                               :>
                               QueryParam "searchString" Text :>
                                 QueryParam "uploadType" Text :>
                                   QueryParams "ids" (Textual Int64) :>
                                     QueryParam "placementGroupType"
                                       PlacementGroupsListPlacementGroupType
                                       :>
                                       QueryParams "directorySiteIds"
                                         (Textual Int64)
                                         :>
                                         QueryParam "sortOrder"
                                           PlacementGroupsListSortOrder
                                           :>
                                           QueryParams "siteIds" (Textual Int64)
                                             :>
                                             QueryParam "pageToken" Text :>
                                               QueryParam "sortField"
                                                 PlacementGroupsListSortField
                                                 :>
                                                 QueryParam "maxStartDate" Text
                                                   :>
                                                   QueryParams "advertiserIds"
                                                     (Textual Int64)
                                                     :>
                                                     QueryParam "minStartDate"
                                                       Text
                                                       :>
                                                       QueryParam "archived"
                                                         Bool
                                                         :>
                                                         QueryParam "maxResults"
                                                           (Textual Int32)
                                                           :>
                                                           QueryParam
                                                             "minEndDate"
                                                             Text
                                                             :>
                                                             QueryParam
                                                               "callback"
                                                               Text
                                                               :>
                                                               QueryParam "alt"
                                                                 AltJSON
                                                                 :>
                                                                 Get '[JSON]
                                                                   PlacementGroupsListResponse

-- | Retrieves a list of placement groups, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'placementGroupsList' smart constructor.
data PlacementGroupsList =
  PlacementGroupsList'
    { _pglPlacementStrategyIds :: !(Maybe [Textual Int64])
    , _pglXgafv :: !(Maybe Xgafv)
    , _pglContentCategoryIds :: !(Maybe [Textual Int64])
    , _pglMaxEndDate :: !(Maybe Text)
    , _pglUploadProtocol :: !(Maybe Text)
    , _pglAccessToken :: !(Maybe Text)
    , _pglCampaignIds :: !(Maybe [Textual Int64])
    , _pglPricingTypes :: !(Maybe [PlacementGroupsListPricingTypes])
    , _pglSearchString :: !(Maybe Text)
    , _pglUploadType :: !(Maybe Text)
    , _pglIds :: !(Maybe [Textual Int64])
    , _pglProFileId :: !(Textual Int64)
    , _pglPlacementGroupType :: !(Maybe PlacementGroupsListPlacementGroupType)
    , _pglDirectorySiteIds :: !(Maybe [Textual Int64])
    , _pglSortOrder :: !PlacementGroupsListSortOrder
    , _pglSiteIds :: !(Maybe [Textual Int64])
    , _pglPageToken :: !(Maybe Text)
    , _pglSortField :: !PlacementGroupsListSortField
    , _pglMaxStartDate :: !(Maybe Text)
    , _pglAdvertiserIds :: !(Maybe [Textual Int64])
    , _pglMinStartDate :: !(Maybe Text)
    , _pglArchived :: !(Maybe Bool)
    , _pglMaxResults :: !(Textual Int32)
    , _pglMinEndDate :: !(Maybe Text)
    , _pglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pglPlacementStrategyIds'
--
-- * 'pglXgafv'
--
-- * 'pglContentCategoryIds'
--
-- * 'pglMaxEndDate'
--
-- * 'pglUploadProtocol'
--
-- * 'pglAccessToken'
--
-- * 'pglCampaignIds'
--
-- * 'pglPricingTypes'
--
-- * 'pglSearchString'
--
-- * 'pglUploadType'
--
-- * 'pglIds'
--
-- * 'pglProFileId'
--
-- * 'pglPlacementGroupType'
--
-- * 'pglDirectorySiteIds'
--
-- * 'pglSortOrder'
--
-- * 'pglSiteIds'
--
-- * 'pglPageToken'
--
-- * 'pglSortField'
--
-- * 'pglMaxStartDate'
--
-- * 'pglAdvertiserIds'
--
-- * 'pglMinStartDate'
--
-- * 'pglArchived'
--
-- * 'pglMaxResults'
--
-- * 'pglMinEndDate'
--
-- * 'pglCallback'
placementGroupsList
    :: Int64 -- ^ 'pglProFileId'
    -> PlacementGroupsList
placementGroupsList pPglProFileId_ =
  PlacementGroupsList'
    { _pglPlacementStrategyIds = Nothing
    , _pglXgafv = Nothing
    , _pglContentCategoryIds = Nothing
    , _pglMaxEndDate = Nothing
    , _pglUploadProtocol = Nothing
    , _pglAccessToken = Nothing
    , _pglCampaignIds = Nothing
    , _pglPricingTypes = Nothing
    , _pglSearchString = Nothing
    , _pglUploadType = Nothing
    , _pglIds = Nothing
    , _pglProFileId = _Coerce # pPglProFileId_
    , _pglPlacementGroupType = Nothing
    , _pglDirectorySiteIds = Nothing
    , _pglSortOrder = PGLSOAscending
    , _pglSiteIds = Nothing
    , _pglPageToken = Nothing
    , _pglSortField = PGLSFID
    , _pglMaxStartDate = Nothing
    , _pglAdvertiserIds = Nothing
    , _pglMinStartDate = Nothing
    , _pglArchived = Nothing
    , _pglMaxResults = 800
    , _pglMinEndDate = Nothing
    , _pglCallback = Nothing
    }


-- | Select only placement groups that are associated with these placement
-- strategies.
pglPlacementStrategyIds :: Lens' PlacementGroupsList [Int64]
pglPlacementStrategyIds
  = lens _pglPlacementStrategyIds
      (\ s a -> s{_pglPlacementStrategyIds = a})
      . _Default
      . _Coerce

-- | V1 error format.
pglXgafv :: Lens' PlacementGroupsList (Maybe Xgafv)
pglXgafv = lens _pglXgafv (\ s a -> s{_pglXgafv = a})

-- | Select only placement groups that are associated with these content
-- categories.
pglContentCategoryIds :: Lens' PlacementGroupsList [Int64]
pglContentCategoryIds
  = lens _pglContentCategoryIds
      (\ s a -> s{_pglContentCategoryIds = a})
      . _Default
      . _Coerce

-- | Select only placements or placement groups whose end date is on or
-- before the specified maxEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pglMaxEndDate :: Lens' PlacementGroupsList (Maybe Text)
pglMaxEndDate
  = lens _pglMaxEndDate
      (\ s a -> s{_pglMaxEndDate = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pglUploadProtocol :: Lens' PlacementGroupsList (Maybe Text)
pglUploadProtocol
  = lens _pglUploadProtocol
      (\ s a -> s{_pglUploadProtocol = a})

-- | OAuth access token.
pglAccessToken :: Lens' PlacementGroupsList (Maybe Text)
pglAccessToken
  = lens _pglAccessToken
      (\ s a -> s{_pglAccessToken = a})

-- | Select only placement groups that belong to these campaigns.
pglCampaignIds :: Lens' PlacementGroupsList [Int64]
pglCampaignIds
  = lens _pglCampaignIds
      (\ s a -> s{_pglCampaignIds = a})
      . _Default
      . _Coerce

-- | Select only placement groups with these pricing types.
pglPricingTypes :: Lens' PlacementGroupsList [PlacementGroupsListPricingTypes]
pglPricingTypes
  = lens _pglPricingTypes
      (\ s a -> s{_pglPricingTypes = a})
      . _Default
      . _Coerce

-- | Allows searching for placement groups by name or ID. Wildcards (*) are
-- allowed. For example, \"placement*2015\" will return placement groups
-- with names like \"placement group June 2015\", \"placement group May
-- 2015\", or simply \"placements 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"placementgroup\" will match placement
-- groups with name \"my placementgroup\", \"placementgroup 2015\", or
-- simply \"placementgroup\".
pglSearchString :: Lens' PlacementGroupsList (Maybe Text)
pglSearchString
  = lens _pglSearchString
      (\ s a -> s{_pglSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pglUploadType :: Lens' PlacementGroupsList (Maybe Text)
pglUploadType
  = lens _pglUploadType
      (\ s a -> s{_pglUploadType = a})

-- | Select only placement groups with these IDs.
pglIds :: Lens' PlacementGroupsList [Int64]
pglIds
  = lens _pglIds (\ s a -> s{_pglIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
pglProFileId :: Lens' PlacementGroupsList Int64
pglProFileId
  = lens _pglProFileId (\ s a -> s{_pglProFileId = a})
      . _Coerce

-- | Select only placement groups belonging with this group type. A package
-- is a simple group of placements that acts as a single pricing point for
-- a group of tags. A roadblock is a group of placements that not only acts
-- as a single pricing point but also assumes that all the tags in it will
-- be served at the same time. A roadblock requires one of its assigned
-- placements to be marked as primary for reporting.
pglPlacementGroupType :: Lens' PlacementGroupsList (Maybe PlacementGroupsListPlacementGroupType)
pglPlacementGroupType
  = lens _pglPlacementGroupType
      (\ s a -> s{_pglPlacementGroupType = a})

-- | Select only placement groups that are associated with these directory
-- sites.
pglDirectorySiteIds :: Lens' PlacementGroupsList [Int64]
pglDirectorySiteIds
  = lens _pglDirectorySiteIds
      (\ s a -> s{_pglDirectorySiteIds = a})
      . _Default
      . _Coerce

-- | Order of sorted results.
pglSortOrder :: Lens' PlacementGroupsList PlacementGroupsListSortOrder
pglSortOrder
  = lens _pglSortOrder (\ s a -> s{_pglSortOrder = a})

-- | Select only placement groups that are associated with these sites.
pglSiteIds :: Lens' PlacementGroupsList [Int64]
pglSiteIds
  = lens _pglSiteIds (\ s a -> s{_pglSiteIds = a}) .
      _Default
      . _Coerce

-- | Value of the nextPageToken from the previous result page.
pglPageToken :: Lens' PlacementGroupsList (Maybe Text)
pglPageToken
  = lens _pglPageToken (\ s a -> s{_pglPageToken = a})

-- | Field by which to sort the list.
pglSortField :: Lens' PlacementGroupsList PlacementGroupsListSortField
pglSortField
  = lens _pglSortField (\ s a -> s{_pglSortField = a})

-- | Select only placements or placement groups whose start date is on or
-- before the specified maxStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pglMaxStartDate :: Lens' PlacementGroupsList (Maybe Text)
pglMaxStartDate
  = lens _pglMaxStartDate
      (\ s a -> s{_pglMaxStartDate = a})

-- | Select only placement groups that belong to these advertisers.
pglAdvertiserIds :: Lens' PlacementGroupsList [Int64]
pglAdvertiserIds
  = lens _pglAdvertiserIds
      (\ s a -> s{_pglAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Select only placements or placement groups whose start date is on or
-- after the specified minStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pglMinStartDate :: Lens' PlacementGroupsList (Maybe Text)
pglMinStartDate
  = lens _pglMinStartDate
      (\ s a -> s{_pglMinStartDate = a})

-- | Select only archived placements. Don\'t set this field to select both
-- archived and non-archived placements.
pglArchived :: Lens' PlacementGroupsList (Maybe Bool)
pglArchived
  = lens _pglArchived (\ s a -> s{_pglArchived = a})

-- | Maximum number of results to return.
pglMaxResults :: Lens' PlacementGroupsList Int32
pglMaxResults
  = lens _pglMaxResults
      (\ s a -> s{_pglMaxResults = a})
      . _Coerce

-- | Select only placements or placement groups whose end date is on or after
-- the specified minEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pglMinEndDate :: Lens' PlacementGroupsList (Maybe Text)
pglMinEndDate
  = lens _pglMinEndDate
      (\ s a -> s{_pglMinEndDate = a})

-- | JSONP
pglCallback :: Lens' PlacementGroupsList (Maybe Text)
pglCallback
  = lens _pglCallback (\ s a -> s{_pglCallback = a})

instance GoogleRequest PlacementGroupsList where
        type Rs PlacementGroupsList =
             PlacementGroupsListResponse
        type Scopes PlacementGroupsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementGroupsList'{..}
          = go _pglProFileId
              (_pglPlacementStrategyIds ^. _Default)
              _pglXgafv
              (_pglContentCategoryIds ^. _Default)
              _pglMaxEndDate
              _pglUploadProtocol
              _pglAccessToken
              (_pglCampaignIds ^. _Default)
              (_pglPricingTypes ^. _Default)
              _pglSearchString
              _pglUploadType
              (_pglIds ^. _Default)
              _pglPlacementGroupType
              (_pglDirectorySiteIds ^. _Default)
              (Just _pglSortOrder)
              (_pglSiteIds ^. _Default)
              _pglPageToken
              (Just _pglSortField)
              _pglMaxStartDate
              (_pglAdvertiserIds ^. _Default)
              _pglMinStartDate
              _pglArchived
              (Just _pglMaxResults)
              _pglMinEndDate
              _pglCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementGroupsListResource)
                      mempty
