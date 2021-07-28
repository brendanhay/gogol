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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creative fields, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFields.list@.
module Network.Google.Resource.DFAReporting.CreativeFields.List
    (
    -- * REST Resource
      CreativeFieldsListResource

    -- * Creating a Request
    , creativeFieldsList
    , CreativeFieldsList

    -- * Request Lenses
    , cflXgafv
    , cflUploadProtocol
    , cflAccessToken
    , cflSearchString
    , cflUploadType
    , cflIds
    , cflProFileId
    , cflSortOrder
    , cflPageToken
    , cflSortField
    , cflAdvertiserIds
    , cflMaxResults
    , cflCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.list@ method which the
-- 'CreativeFieldsList' request conforms to.
type CreativeFieldsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParam "sortOrder" CreativeFieldsListSortOrder :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 CreativeFieldsListSortField
                                 :>
                                 QueryParams "advertiserIds" (Textual Int64) :>
                                   QueryParam "maxResults" (Textual Int32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] CreativeFieldsListResponse

-- | Retrieves a list of creative fields, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'creativeFieldsList' smart constructor.
data CreativeFieldsList =
  CreativeFieldsList'
    { _cflXgafv :: !(Maybe Xgafv)
    , _cflUploadProtocol :: !(Maybe Text)
    , _cflAccessToken :: !(Maybe Text)
    , _cflSearchString :: !(Maybe Text)
    , _cflUploadType :: !(Maybe Text)
    , _cflIds :: !(Maybe [Textual Int64])
    , _cflProFileId :: !(Textual Int64)
    , _cflSortOrder :: !CreativeFieldsListSortOrder
    , _cflPageToken :: !(Maybe Text)
    , _cflSortField :: !CreativeFieldsListSortField
    , _cflAdvertiserIds :: !(Maybe [Textual Int64])
    , _cflMaxResults :: !(Textual Int32)
    , _cflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflXgafv'
--
-- * 'cflUploadProtocol'
--
-- * 'cflAccessToken'
--
-- * 'cflSearchString'
--
-- * 'cflUploadType'
--
-- * 'cflIds'
--
-- * 'cflProFileId'
--
-- * 'cflSortOrder'
--
-- * 'cflPageToken'
--
-- * 'cflSortField'
--
-- * 'cflAdvertiserIds'
--
-- * 'cflMaxResults'
--
-- * 'cflCallback'
creativeFieldsList
    :: Int64 -- ^ 'cflProFileId'
    -> CreativeFieldsList
creativeFieldsList pCflProFileId_ =
  CreativeFieldsList'
    { _cflXgafv = Nothing
    , _cflUploadProtocol = Nothing
    , _cflAccessToken = Nothing
    , _cflSearchString = Nothing
    , _cflUploadType = Nothing
    , _cflIds = Nothing
    , _cflProFileId = _Coerce # pCflProFileId_
    , _cflSortOrder = CFLSOAscending
    , _cflPageToken = Nothing
    , _cflSortField = CFLSFID
    , _cflAdvertiserIds = Nothing
    , _cflMaxResults = 1000
    , _cflCallback = Nothing
    }


-- | V1 error format.
cflXgafv :: Lens' CreativeFieldsList (Maybe Xgafv)
cflXgafv = lens _cflXgafv (\ s a -> s{_cflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cflUploadProtocol :: Lens' CreativeFieldsList (Maybe Text)
cflUploadProtocol
  = lens _cflUploadProtocol
      (\ s a -> s{_cflUploadProtocol = a})

-- | OAuth access token.
cflAccessToken :: Lens' CreativeFieldsList (Maybe Text)
cflAccessToken
  = lens _cflAccessToken
      (\ s a -> s{_cflAccessToken = a})

-- | Allows searching for creative fields by name or ID. Wildcards (*) are
-- allowed. For example, \"creativefield*2015\" will return creative fields
-- with names like \"creativefield June 2015\", \"creativefield April
-- 2015\", or simply \"creativefield 2015\". Most of the searches also add
-- wild-cards implicitly at the start and the end of the search string. For
-- example, a search string of \"creativefield\" will match creative fields
-- with the name \"my creativefield\", \"creativefield 2015\", or simply
-- \"creativefield\".
cflSearchString :: Lens' CreativeFieldsList (Maybe Text)
cflSearchString
  = lens _cflSearchString
      (\ s a -> s{_cflSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cflUploadType :: Lens' CreativeFieldsList (Maybe Text)
cflUploadType
  = lens _cflUploadType
      (\ s a -> s{_cflUploadType = a})

-- | Select only creative fields with these IDs.
cflIds :: Lens' CreativeFieldsList [Int64]
cflIds
  = lens _cflIds (\ s a -> s{_cflIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
cflProFileId :: Lens' CreativeFieldsList Int64
cflProFileId
  = lens _cflProFileId (\ s a -> s{_cflProFileId = a})
      . _Coerce

-- | Order of sorted results.
cflSortOrder :: Lens' CreativeFieldsList CreativeFieldsListSortOrder
cflSortOrder
  = lens _cflSortOrder (\ s a -> s{_cflSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
cflPageToken :: Lens' CreativeFieldsList (Maybe Text)
cflPageToken
  = lens _cflPageToken (\ s a -> s{_cflPageToken = a})

-- | Field by which to sort the list.
cflSortField :: Lens' CreativeFieldsList CreativeFieldsListSortField
cflSortField
  = lens _cflSortField (\ s a -> s{_cflSortField = a})

-- | Select only creative fields that belong to these advertisers.
cflAdvertiserIds :: Lens' CreativeFieldsList [Int64]
cflAdvertiserIds
  = lens _cflAdvertiserIds
      (\ s a -> s{_cflAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Maximum number of results to return.
cflMaxResults :: Lens' CreativeFieldsList Int32
cflMaxResults
  = lens _cflMaxResults
      (\ s a -> s{_cflMaxResults = a})
      . _Coerce

-- | JSONP
cflCallback :: Lens' CreativeFieldsList (Maybe Text)
cflCallback
  = lens _cflCallback (\ s a -> s{_cflCallback = a})

instance GoogleRequest CreativeFieldsList where
        type Rs CreativeFieldsList =
             CreativeFieldsListResponse
        type Scopes CreativeFieldsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldsList'{..}
          = go _cflProFileId _cflXgafv _cflUploadProtocol
              _cflAccessToken
              _cflSearchString
              _cflUploadType
              (_cflIds ^. _Default)
              (Just _cflSortOrder)
              _cflPageToken
              (Just _cflSortField)
              (_cflAdvertiserIds ^. _Default)
              (Just _cflMaxResults)
              _cflCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsListResource)
                      mempty
