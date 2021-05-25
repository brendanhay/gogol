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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of advertisers, possibly filtered. This method supports
-- paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertisers.list@.
module Network.Google.Resource.DFAReporting.Advertisers.List
    (
    -- * REST Resource
      AdvertisersListResource

    -- * Creating a Request
    , advertisersList
    , AdvertisersList

    -- * Request Lenses
    , allStatus
    , allXgafv
    , allUploadProtocol
    , allAccessToken
    , allOnlyParent
    , allSearchString
    , allUploadType
    , allIds
    , allIncludeAdvertisersWithoutGroupsOnly
    , allProFileId
    , allSortOrder
    , allAdvertiserGroupIds
    , allPageToken
    , allSortField
    , allSubAccountId
    , allFloodlightConfigurationIds
    , allMaxResults
    , allCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.list@ method which the
-- 'AdvertisersList' request conforms to.
type AdvertisersListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertisers" :>
               QueryParam "status" AdvertisersListStatus :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "onlyParent" Bool :>
                         QueryParam "searchString" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParams "ids" (Textual Int64) :>
                               QueryParam "includeAdvertisersWithoutGroupsOnly"
                                 Bool
                                 :>
                                 QueryParam "sortOrder" AdvertisersListSortOrder
                                   :>
                                   QueryParams "advertiserGroupIds"
                                     (Textual Int64)
                                     :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "sortField"
                                         AdvertisersListSortField
                                         :>
                                         QueryParam "subaccountId"
                                           (Textual Int64)
                                           :>
                                           QueryParams
                                             "floodlightConfigurationIds"
                                             (Textual Int64)
                                             :>
                                             QueryParam "maxResults"
                                               (Textual Int32)
                                               :>
                                               QueryParam "callback" Text :>
                                                 QueryParam "alt" AltJSON :>
                                                   Get '[JSON]
                                                     AdvertisersListResponse

-- | Retrieves a list of advertisers, possibly filtered. This method supports
-- paging.
--
-- /See:/ 'advertisersList' smart constructor.
data AdvertisersList =
  AdvertisersList'
    { _allStatus :: !(Maybe AdvertisersListStatus)
    , _allXgafv :: !(Maybe Xgafv)
    , _allUploadProtocol :: !(Maybe Text)
    , _allAccessToken :: !(Maybe Text)
    , _allOnlyParent :: !(Maybe Bool)
    , _allSearchString :: !(Maybe Text)
    , _allUploadType :: !(Maybe Text)
    , _allIds :: !(Maybe [Textual Int64])
    , _allIncludeAdvertisersWithoutGroupsOnly :: !(Maybe Bool)
    , _allProFileId :: !(Textual Int64)
    , _allSortOrder :: !AdvertisersListSortOrder
    , _allAdvertiserGroupIds :: !(Maybe [Textual Int64])
    , _allPageToken :: !(Maybe Text)
    , _allSortField :: !AdvertisersListSortField
    , _allSubAccountId :: !(Maybe (Textual Int64))
    , _allFloodlightConfigurationIds :: !(Maybe [Textual Int64])
    , _allMaxResults :: !(Textual Int32)
    , _allCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertisersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allStatus'
--
-- * 'allXgafv'
--
-- * 'allUploadProtocol'
--
-- * 'allAccessToken'
--
-- * 'allOnlyParent'
--
-- * 'allSearchString'
--
-- * 'allUploadType'
--
-- * 'allIds'
--
-- * 'allIncludeAdvertisersWithoutGroupsOnly'
--
-- * 'allProFileId'
--
-- * 'allSortOrder'
--
-- * 'allAdvertiserGroupIds'
--
-- * 'allPageToken'
--
-- * 'allSortField'
--
-- * 'allSubAccountId'
--
-- * 'allFloodlightConfigurationIds'
--
-- * 'allMaxResults'
--
-- * 'allCallback'
advertisersList
    :: Int64 -- ^ 'allProFileId'
    -> AdvertisersList
advertisersList pAllProFileId_ =
  AdvertisersList'
    { _allStatus = Nothing
    , _allXgafv = Nothing
    , _allUploadProtocol = Nothing
    , _allAccessToken = Nothing
    , _allOnlyParent = Nothing
    , _allSearchString = Nothing
    , _allUploadType = Nothing
    , _allIds = Nothing
    , _allIncludeAdvertisersWithoutGroupsOnly = Nothing
    , _allProFileId = _Coerce # pAllProFileId_
    , _allSortOrder = ALSOAscending
    , _allAdvertiserGroupIds = Nothing
    , _allPageToken = Nothing
    , _allSortField = ID
    , _allSubAccountId = Nothing
    , _allFloodlightConfigurationIds = Nothing
    , _allMaxResults = 1000
    , _allCallback = Nothing
    }


-- | Select only advertisers with the specified status.
allStatus :: Lens' AdvertisersList (Maybe AdvertisersListStatus)
allStatus
  = lens _allStatus (\ s a -> s{_allStatus = a})

-- | V1 error format.
allXgafv :: Lens' AdvertisersList (Maybe Xgafv)
allXgafv = lens _allXgafv (\ s a -> s{_allXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
allUploadProtocol :: Lens' AdvertisersList (Maybe Text)
allUploadProtocol
  = lens _allUploadProtocol
      (\ s a -> s{_allUploadProtocol = a})

-- | OAuth access token.
allAccessToken :: Lens' AdvertisersList (Maybe Text)
allAccessToken
  = lens _allAccessToken
      (\ s a -> s{_allAccessToken = a})

-- | Select only advertisers which use another advertiser\'s floodlight
-- configuration.
allOnlyParent :: Lens' AdvertisersList (Maybe Bool)
allOnlyParent
  = lens _allOnlyParent
      (\ s a -> s{_allOnlyParent = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"advertiser*2015\" will return objects with names like
-- \"advertiser June 2015\", \"advertiser April 2015\", or simply
-- \"advertiser 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"advertiser\" will match objects with name \"my advertiser\",
-- \"advertiser 2015\", or simply \"advertiser\" .
allSearchString :: Lens' AdvertisersList (Maybe Text)
allSearchString
  = lens _allSearchString
      (\ s a -> s{_allSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
allUploadType :: Lens' AdvertisersList (Maybe Text)
allUploadType
  = lens _allUploadType
      (\ s a -> s{_allUploadType = a})

-- | Select only advertisers with these IDs.
allIds :: Lens' AdvertisersList [Int64]
allIds
  = lens _allIds (\ s a -> s{_allIds = a}) . _Default .
      _Coerce

-- | Select only advertisers which do not belong to any advertiser group.
allIncludeAdvertisersWithoutGroupsOnly :: Lens' AdvertisersList (Maybe Bool)
allIncludeAdvertisersWithoutGroupsOnly
  = lens _allIncludeAdvertisersWithoutGroupsOnly
      (\ s a ->
         s{_allIncludeAdvertisersWithoutGroupsOnly = a})

-- | User profile ID associated with this request.
allProFileId :: Lens' AdvertisersList Int64
allProFileId
  = lens _allProFileId (\ s a -> s{_allProFileId = a})
      . _Coerce

-- | Order of sorted results.
allSortOrder :: Lens' AdvertisersList AdvertisersListSortOrder
allSortOrder
  = lens _allSortOrder (\ s a -> s{_allSortOrder = a})

-- | Select only advertisers with these advertiser group IDs.
allAdvertiserGroupIds :: Lens' AdvertisersList [Int64]
allAdvertiserGroupIds
  = lens _allAdvertiserGroupIds
      (\ s a -> s{_allAdvertiserGroupIds = a})
      . _Default
      . _Coerce

-- | Value of the nextPageToken from the previous result page.
allPageToken :: Lens' AdvertisersList (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | Field by which to sort the list.
allSortField :: Lens' AdvertisersList AdvertisersListSortField
allSortField
  = lens _allSortField (\ s a -> s{_allSortField = a})

-- | Select only advertisers with these subaccount IDs.
allSubAccountId :: Lens' AdvertisersList (Maybe Int64)
allSubAccountId
  = lens _allSubAccountId
      (\ s a -> s{_allSubAccountId = a})
      . mapping _Coerce

-- | Select only advertisers with these floodlight configuration IDs.
allFloodlightConfigurationIds :: Lens' AdvertisersList [Int64]
allFloodlightConfigurationIds
  = lens _allFloodlightConfigurationIds
      (\ s a -> s{_allFloodlightConfigurationIds = a})
      . _Default
      . _Coerce

-- | Maximum number of results to return.
allMaxResults :: Lens' AdvertisersList Int32
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})
      . _Coerce

-- | JSONP
allCallback :: Lens' AdvertisersList (Maybe Text)
allCallback
  = lens _allCallback (\ s a -> s{_allCallback = a})

instance GoogleRequest AdvertisersList where
        type Rs AdvertisersList = AdvertisersListResponse
        type Scopes AdvertisersList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertisersList'{..}
          = go _allProFileId _allStatus _allXgafv
              _allUploadProtocol
              _allAccessToken
              _allOnlyParent
              _allSearchString
              _allUploadType
              (_allIds ^. _Default)
              _allIncludeAdvertisersWithoutGroupsOnly
              (Just _allSortOrder)
              (_allAdvertiserGroupIds ^. _Default)
              _allPageToken
              (Just _allSortField)
              _allSubAccountId
              (_allFloodlightConfigurationIds ^. _Default)
              (Just _allMaxResults)
              _allCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersListResource)
                      mempty
