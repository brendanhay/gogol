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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of advertiser groups, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserGroups.list@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.List
    (
    -- * REST Resource
      AdvertiserGroupsListResource

    -- * Creating a Request
    , advertiserGroupsList
    , AdvertiserGroupsList

    -- * Request Lenses
    , aglXgafv
    , aglUploadProtocol
    , aglAccessToken
    , aglSearchString
    , aglUploadType
    , aglIds
    , aglProFileId
    , aglSortOrder
    , aglPageToken
    , aglSortField
    , aglMaxResults
    , aglCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.list@ method which the
-- 'AdvertiserGroupsList' request conforms to.
type AdvertiserGroupsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParam "sortOrder" AdvertiserGroupsListSortOrder
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 AdvertiserGroupsListSortField
                                 :>
                                 QueryParam "maxResults" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] AdvertiserGroupsListResponse

-- | Retrieves a list of advertiser groups, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'advertiserGroupsList' smart constructor.
data AdvertiserGroupsList =
  AdvertiserGroupsList'
    { _aglXgafv :: !(Maybe Xgafv)
    , _aglUploadProtocol :: !(Maybe Text)
    , _aglAccessToken :: !(Maybe Text)
    , _aglSearchString :: !(Maybe Text)
    , _aglUploadType :: !(Maybe Text)
    , _aglIds :: !(Maybe [Textual Int64])
    , _aglProFileId :: !(Textual Int64)
    , _aglSortOrder :: !AdvertiserGroupsListSortOrder
    , _aglPageToken :: !(Maybe Text)
    , _aglSortField :: !AdvertiserGroupsListSortField
    , _aglMaxResults :: !(Textual Int32)
    , _aglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aglXgafv'
--
-- * 'aglUploadProtocol'
--
-- * 'aglAccessToken'
--
-- * 'aglSearchString'
--
-- * 'aglUploadType'
--
-- * 'aglIds'
--
-- * 'aglProFileId'
--
-- * 'aglSortOrder'
--
-- * 'aglPageToken'
--
-- * 'aglSortField'
--
-- * 'aglMaxResults'
--
-- * 'aglCallback'
advertiserGroupsList
    :: Int64 -- ^ 'aglProFileId'
    -> AdvertiserGroupsList
advertiserGroupsList pAglProFileId_ =
  AdvertiserGroupsList'
    { _aglXgafv = Nothing
    , _aglUploadProtocol = Nothing
    , _aglAccessToken = Nothing
    , _aglSearchString = Nothing
    , _aglUploadType = Nothing
    , _aglIds = Nothing
    , _aglProFileId = _Coerce # pAglProFileId_
    , _aglSortOrder = AGLSOAscending
    , _aglPageToken = Nothing
    , _aglSortField = AGLSFID
    , _aglMaxResults = 1000
    , _aglCallback = Nothing
    }


-- | V1 error format.
aglXgafv :: Lens' AdvertiserGroupsList (Maybe Xgafv)
aglXgafv = lens _aglXgafv (\ s a -> s{_aglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aglUploadProtocol :: Lens' AdvertiserGroupsList (Maybe Text)
aglUploadProtocol
  = lens _aglUploadProtocol
      (\ s a -> s{_aglUploadProtocol = a})

-- | OAuth access token.
aglAccessToken :: Lens' AdvertiserGroupsList (Maybe Text)
aglAccessToken
  = lens _aglAccessToken
      (\ s a -> s{_aglAccessToken = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"advertiser*2015\" will return objects with names like
-- \"advertiser group June 2015\", \"advertiser group April 2015\", or
-- simply \"advertiser group 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"advertisergroup\" will match objects with
-- name \"my advertisergroup\", \"advertisergroup 2015\", or simply
-- \"advertisergroup\".
aglSearchString :: Lens' AdvertiserGroupsList (Maybe Text)
aglSearchString
  = lens _aglSearchString
      (\ s a -> s{_aglSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aglUploadType :: Lens' AdvertiserGroupsList (Maybe Text)
aglUploadType
  = lens _aglUploadType
      (\ s a -> s{_aglUploadType = a})

-- | Select only advertiser groups with these IDs.
aglIds :: Lens' AdvertiserGroupsList [Int64]
aglIds
  = lens _aglIds (\ s a -> s{_aglIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
aglProFileId :: Lens' AdvertiserGroupsList Int64
aglProFileId
  = lens _aglProFileId (\ s a -> s{_aglProFileId = a})
      . _Coerce

-- | Order of sorted results.
aglSortOrder :: Lens' AdvertiserGroupsList AdvertiserGroupsListSortOrder
aglSortOrder
  = lens _aglSortOrder (\ s a -> s{_aglSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
aglPageToken :: Lens' AdvertiserGroupsList (Maybe Text)
aglPageToken
  = lens _aglPageToken (\ s a -> s{_aglPageToken = a})

-- | Field by which to sort the list.
aglSortField :: Lens' AdvertiserGroupsList AdvertiserGroupsListSortField
aglSortField
  = lens _aglSortField (\ s a -> s{_aglSortField = a})

-- | Maximum number of results to return.
aglMaxResults :: Lens' AdvertiserGroupsList Int32
aglMaxResults
  = lens _aglMaxResults
      (\ s a -> s{_aglMaxResults = a})
      . _Coerce

-- | JSONP
aglCallback :: Lens' AdvertiserGroupsList (Maybe Text)
aglCallback
  = lens _aglCallback (\ s a -> s{_aglCallback = a})

instance GoogleRequest AdvertiserGroupsList where
        type Rs AdvertiserGroupsList =
             AdvertiserGroupsListResponse
        type Scopes AdvertiserGroupsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserGroupsList'{..}
          = go _aglProFileId _aglXgafv _aglUploadProtocol
              _aglAccessToken
              _aglSearchString
              _aglUploadType
              (_aglIds ^. _Default)
              (Just _aglSortOrder)
              _aglPageToken
              (Just _aglSortField)
              (Just _aglMaxResults)
              _aglCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsListResource)
                      mempty
