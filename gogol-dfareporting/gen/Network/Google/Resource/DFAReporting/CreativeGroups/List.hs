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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creative groups, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeGroups.list@.
module Network.Google.Resource.DFAReporting.CreativeGroups.List
    (
    -- * REST Resource
      CreativeGroupsListResource

    -- * Creating a Request
    , creativeGroupsList
    , CreativeGroupsList

    -- * Request Lenses
    , cglXgafv
    , cglUploadProtocol
    , cglAccessToken
    , cglSearchString
    , cglUploadType
    , cglIds
    , cglProFileId
    , cglSortOrder
    , cglGroupNumber
    , cglPageToken
    , cglSortField
    , cglAdvertiserIds
    , cglMaxResults
    , cglCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.list@ method which the
-- 'CreativeGroupsList' request conforms to.
type CreativeGroupsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParam "sortOrder" CreativeGroupsListSortOrder :>
                             QueryParam "groupNumber" (Textual Int32) :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "sortField"
                                   CreativeGroupsListSortField
                                   :>
                                   QueryParams "advertiserIds" (Textual Int64)
                                     :>
                                     QueryParam "maxResults" (Textual Int32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             CreativeGroupsListResponse

-- | Retrieves a list of creative groups, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'creativeGroupsList' smart constructor.
data CreativeGroupsList =
  CreativeGroupsList'
    { _cglXgafv :: !(Maybe Xgafv)
    , _cglUploadProtocol :: !(Maybe Text)
    , _cglAccessToken :: !(Maybe Text)
    , _cglSearchString :: !(Maybe Text)
    , _cglUploadType :: !(Maybe Text)
    , _cglIds :: !(Maybe [Textual Int64])
    , _cglProFileId :: !(Textual Int64)
    , _cglSortOrder :: !CreativeGroupsListSortOrder
    , _cglGroupNumber :: !(Maybe (Textual Int32))
    , _cglPageToken :: !(Maybe Text)
    , _cglSortField :: !CreativeGroupsListSortField
    , _cglAdvertiserIds :: !(Maybe [Textual Int64])
    , _cglMaxResults :: !(Textual Int32)
    , _cglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cglXgafv'
--
-- * 'cglUploadProtocol'
--
-- * 'cglAccessToken'
--
-- * 'cglSearchString'
--
-- * 'cglUploadType'
--
-- * 'cglIds'
--
-- * 'cglProFileId'
--
-- * 'cglSortOrder'
--
-- * 'cglGroupNumber'
--
-- * 'cglPageToken'
--
-- * 'cglSortField'
--
-- * 'cglAdvertiserIds'
--
-- * 'cglMaxResults'
--
-- * 'cglCallback'
creativeGroupsList
    :: Int64 -- ^ 'cglProFileId'
    -> CreativeGroupsList
creativeGroupsList pCglProFileId_ =
  CreativeGroupsList'
    { _cglXgafv = Nothing
    , _cglUploadProtocol = Nothing
    , _cglAccessToken = Nothing
    , _cglSearchString = Nothing
    , _cglUploadType = Nothing
    , _cglIds = Nothing
    , _cglProFileId = _Coerce # pCglProFileId_
    , _cglSortOrder = CGLSOAscending
    , _cglGroupNumber = Nothing
    , _cglPageToken = Nothing
    , _cglSortField = CGLSFID
    , _cglAdvertiserIds = Nothing
    , _cglMaxResults = 1000
    , _cglCallback = Nothing
    }


-- | V1 error format.
cglXgafv :: Lens' CreativeGroupsList (Maybe Xgafv)
cglXgafv = lens _cglXgafv (\ s a -> s{_cglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cglUploadProtocol :: Lens' CreativeGroupsList (Maybe Text)
cglUploadProtocol
  = lens _cglUploadProtocol
      (\ s a -> s{_cglUploadProtocol = a})

-- | OAuth access token.
cglAccessToken :: Lens' CreativeGroupsList (Maybe Text)
cglAccessToken
  = lens _cglAccessToken
      (\ s a -> s{_cglAccessToken = a})

-- | Allows searching for creative groups by name or ID. Wildcards (*) are
-- allowed. For example, \"creativegroup*2015\" will return creative groups
-- with names like \"creativegroup June 2015\", \"creativegroup April
-- 2015\", or simply \"creativegroup 2015\". Most of the searches also add
-- wild-cards implicitly at the start and the end of the search string. For
-- example, a search string of \"creativegroup\" will match creative groups
-- with the name \"my creativegroup\", \"creativegroup 2015\", or simply
-- \"creativegroup\".
cglSearchString :: Lens' CreativeGroupsList (Maybe Text)
cglSearchString
  = lens _cglSearchString
      (\ s a -> s{_cglSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cglUploadType :: Lens' CreativeGroupsList (Maybe Text)
cglUploadType
  = lens _cglUploadType
      (\ s a -> s{_cglUploadType = a})

-- | Select only creative groups with these IDs.
cglIds :: Lens' CreativeGroupsList [Int64]
cglIds
  = lens _cglIds (\ s a -> s{_cglIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
cglProFileId :: Lens' CreativeGroupsList Int64
cglProFileId
  = lens _cglProFileId (\ s a -> s{_cglProFileId = a})
      . _Coerce

-- | Order of sorted results.
cglSortOrder :: Lens' CreativeGroupsList CreativeGroupsListSortOrder
cglSortOrder
  = lens _cglSortOrder (\ s a -> s{_cglSortOrder = a})

-- | Select only creative groups that belong to this subgroup.
cglGroupNumber :: Lens' CreativeGroupsList (Maybe Int32)
cglGroupNumber
  = lens _cglGroupNumber
      (\ s a -> s{_cglGroupNumber = a})
      . mapping _Coerce

-- | Value of the nextPageToken from the previous result page.
cglPageToken :: Lens' CreativeGroupsList (Maybe Text)
cglPageToken
  = lens _cglPageToken (\ s a -> s{_cglPageToken = a})

-- | Field by which to sort the list.
cglSortField :: Lens' CreativeGroupsList CreativeGroupsListSortField
cglSortField
  = lens _cglSortField (\ s a -> s{_cglSortField = a})

-- | Select only creative groups that belong to these advertisers.
cglAdvertiserIds :: Lens' CreativeGroupsList [Int64]
cglAdvertiserIds
  = lens _cglAdvertiserIds
      (\ s a -> s{_cglAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Maximum number of results to return.
cglMaxResults :: Lens' CreativeGroupsList Int32
cglMaxResults
  = lens _cglMaxResults
      (\ s a -> s{_cglMaxResults = a})
      . _Coerce

-- | JSONP
cglCallback :: Lens' CreativeGroupsList (Maybe Text)
cglCallback
  = lens _cglCallback (\ s a -> s{_cglCallback = a})

instance GoogleRequest CreativeGroupsList where
        type Rs CreativeGroupsList =
             CreativeGroupsListResponse
        type Scopes CreativeGroupsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeGroupsList'{..}
          = go _cglProFileId _cglXgafv _cglUploadProtocol
              _cglAccessToken
              _cglSearchString
              _cglUploadType
              (_cglIds ^. _Default)
              (Just _cglSortOrder)
              _cglGroupNumber
              _cglPageToken
              (Just _cglSortField)
              (_cglAdvertiserIds ^. _Default)
              (Just _cglMaxResults)
              _cglCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsListResource)
                      mempty
