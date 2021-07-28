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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of campaigns, possibly filtered. This method supports
-- paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaigns.list@.
module Network.Google.Resource.DFAReporting.Campaigns.List
    (
    -- * REST Resource
      CampaignsListResource

    -- * Creating a Request
    , campaignsList
    , CampaignsList

    -- * Request Lenses
    , clExcludedIds
    , clXgafv
    , clUploadProtocol
    , clAccessToken
    , clSearchString
    , clUploadType
    , clIds
    , clProFileId
    , clSortOrder
    , clAdvertiserGroupIds
    , clAtLeastOneOptimizationActivity
    , clOverriddenEventTagId
    , clPageToken
    , clSortField
    , clSubAccountId
    , clAdvertiserIds
    , clArchived
    , clMaxResults
    , clCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.list@ method which the
-- 'CampaignsList' request conforms to.
type CampaignsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               QueryParams "excludedIds" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "searchString" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParams "ids" (Textual Int64) :>
                             QueryParam "sortOrder" CampaignsListSortOrder :>
                               QueryParams "advertiserGroupIds" (Textual Int64)
                                 :>
                                 QueryParam "atLeastOneOptimizationActivity"
                                   Bool
                                   :>
                                   QueryParam "overriddenEventTagId"
                                     (Textual Int64)
                                     :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "sortField"
                                         CampaignsListSortField
                                         :>
                                         QueryParam "subaccountId"
                                           (Textual Int64)
                                           :>
                                           QueryParams "advertiserIds"
                                             (Textual Int64)
                                             :>
                                             QueryParam "archived" Bool :>
                                               QueryParam "maxResults"
                                                 (Textual Int32)
                                                 :>
                                                 QueryParam "callback" Text :>
                                                   QueryParam "alt" AltJSON :>
                                                     Get '[JSON]
                                                       CampaignsListResponse

-- | Retrieves a list of campaigns, possibly filtered. This method supports
-- paging.
--
-- /See:/ 'campaignsList' smart constructor.
data CampaignsList =
  CampaignsList'
    { _clExcludedIds :: !(Maybe [Textual Int64])
    , _clXgafv :: !(Maybe Xgafv)
    , _clUploadProtocol :: !(Maybe Text)
    , _clAccessToken :: !(Maybe Text)
    , _clSearchString :: !(Maybe Text)
    , _clUploadType :: !(Maybe Text)
    , _clIds :: !(Maybe [Textual Int64])
    , _clProFileId :: !(Textual Int64)
    , _clSortOrder :: !CampaignsListSortOrder
    , _clAdvertiserGroupIds :: !(Maybe [Textual Int64])
    , _clAtLeastOneOptimizationActivity :: !(Maybe Bool)
    , _clOverriddenEventTagId :: !(Maybe (Textual Int64))
    , _clPageToken :: !(Maybe Text)
    , _clSortField :: !CampaignsListSortField
    , _clSubAccountId :: !(Maybe (Textual Int64))
    , _clAdvertiserIds :: !(Maybe [Textual Int64])
    , _clArchived :: !(Maybe Bool)
    , _clMaxResults :: !(Textual Int32)
    , _clCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CampaignsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clExcludedIds'
--
-- * 'clXgafv'
--
-- * 'clUploadProtocol'
--
-- * 'clAccessToken'
--
-- * 'clSearchString'
--
-- * 'clUploadType'
--
-- * 'clIds'
--
-- * 'clProFileId'
--
-- * 'clSortOrder'
--
-- * 'clAdvertiserGroupIds'
--
-- * 'clAtLeastOneOptimizationActivity'
--
-- * 'clOverriddenEventTagId'
--
-- * 'clPageToken'
--
-- * 'clSortField'
--
-- * 'clSubAccountId'
--
-- * 'clAdvertiserIds'
--
-- * 'clArchived'
--
-- * 'clMaxResults'
--
-- * 'clCallback'
campaignsList
    :: Int64 -- ^ 'clProFileId'
    -> CampaignsList
campaignsList pClProFileId_ =
  CampaignsList'
    { _clExcludedIds = Nothing
    , _clXgafv = Nothing
    , _clUploadProtocol = Nothing
    , _clAccessToken = Nothing
    , _clSearchString = Nothing
    , _clUploadType = Nothing
    , _clIds = Nothing
    , _clProFileId = _Coerce # pClProFileId_
    , _clSortOrder = CLSOAscending
    , _clAdvertiserGroupIds = Nothing
    , _clAtLeastOneOptimizationActivity = Nothing
    , _clOverriddenEventTagId = Nothing
    , _clPageToken = Nothing
    , _clSortField = CLSFID
    , _clSubAccountId = Nothing
    , _clAdvertiserIds = Nothing
    , _clArchived = Nothing
    , _clMaxResults = 1000
    , _clCallback = Nothing
    }


-- | Exclude campaigns with these IDs.
clExcludedIds :: Lens' CampaignsList [Int64]
clExcludedIds
  = lens _clExcludedIds
      (\ s a -> s{_clExcludedIds = a})
      . _Default
      . _Coerce

-- | V1 error format.
clXgafv :: Lens' CampaignsList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CampaignsList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | OAuth access token.
clAccessToken :: Lens' CampaignsList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Allows searching for campaigns by name or ID. Wildcards (*) are allowed.
-- For example, \"campaign*2015\" will return campaigns with names like
-- \"campaign June 2015\", \"campaign April 2015\", or simply \"campaign
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"campaign\" will match campaigns with name \"my campaign\", \"campaign
-- 2015\", or simply \"campaign\".
clSearchString :: Lens' CampaignsList (Maybe Text)
clSearchString
  = lens _clSearchString
      (\ s a -> s{_clSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CampaignsList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | Select only campaigns with these IDs.
clIds :: Lens' CampaignsList [Int64]
clIds
  = lens _clIds (\ s a -> s{_clIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
clProFileId :: Lens' CampaignsList Int64
clProFileId
  = lens _clProFileId (\ s a -> s{_clProFileId = a}) .
      _Coerce

-- | Order of sorted results.
clSortOrder :: Lens' CampaignsList CampaignsListSortOrder
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | Select only campaigns whose advertisers belong to these advertiser
-- groups.
clAdvertiserGroupIds :: Lens' CampaignsList [Int64]
clAdvertiserGroupIds
  = lens _clAdvertiserGroupIds
      (\ s a -> s{_clAdvertiserGroupIds = a})
      . _Default
      . _Coerce

-- | Select only campaigns that have at least one optimization activity.
clAtLeastOneOptimizationActivity :: Lens' CampaignsList (Maybe Bool)
clAtLeastOneOptimizationActivity
  = lens _clAtLeastOneOptimizationActivity
      (\ s a -> s{_clAtLeastOneOptimizationActivity = a})

-- | Select only campaigns that have overridden this event tag ID.
clOverriddenEventTagId :: Lens' CampaignsList (Maybe Int64)
clOverriddenEventTagId
  = lens _clOverriddenEventTagId
      (\ s a -> s{_clOverriddenEventTagId = a})
      . mapping _Coerce

-- | Value of the nextPageToken from the previous result page.
clPageToken :: Lens' CampaignsList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Field by which to sort the list.
clSortField :: Lens' CampaignsList CampaignsListSortField
clSortField
  = lens _clSortField (\ s a -> s{_clSortField = a})

-- | Select only campaigns that belong to this subaccount.
clSubAccountId :: Lens' CampaignsList (Maybe Int64)
clSubAccountId
  = lens _clSubAccountId
      (\ s a -> s{_clSubAccountId = a})
      . mapping _Coerce

-- | Select only campaigns that belong to these advertisers.
clAdvertiserIds :: Lens' CampaignsList [Int64]
clAdvertiserIds
  = lens _clAdvertiserIds
      (\ s a -> s{_clAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Select only archived campaigns. Don\'t set this field to select both
-- archived and non-archived campaigns.
clArchived :: Lens' CampaignsList (Maybe Bool)
clArchived
  = lens _clArchived (\ s a -> s{_clArchived = a})

-- | Maximum number of results to return.
clMaxResults :: Lens' CampaignsList Int32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})
      . _Coerce

-- | JSONP
clCallback :: Lens' CampaignsList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleRequest CampaignsList where
        type Rs CampaignsList = CampaignsListResponse
        type Scopes CampaignsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignsList'{..}
          = go _clProFileId (_clExcludedIds ^. _Default)
              _clXgafv
              _clUploadProtocol
              _clAccessToken
              _clSearchString
              _clUploadType
              (_clIds ^. _Default)
              (Just _clSortOrder)
              (_clAdvertiserGroupIds ^. _Default)
              _clAtLeastOneOptimizationActivity
              _clOverriddenEventTagId
              _clPageToken
              (Just _clSortField)
              _clSubAccountId
              (_clAdvertiserIds ^. _Default)
              _clArchived
              (Just _clMaxResults)
              _clCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CampaignsListResource)
                      mempty
