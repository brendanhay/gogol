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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of subaccounts, possibly filtered. This method supports
-- paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.subaccounts.list@.
module Network.Google.Resource.DFAReporting.SubAccounts.List
    (
    -- * REST Resource
      SubAccountsListResource

    -- * Creating a Request
    , subAccountsList
    , SubAccountsList

    -- * Request Lenses
    , salXgafv
    , salUploadProtocol
    , salAccessToken
    , salSearchString
    , salUploadType
    , salIds
    , salProFileId
    , salSortOrder
    , salPageToken
    , salSortField
    , salMaxResults
    , salCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.subaccounts.list@ method which the
-- 'SubAccountsList' request conforms to.
type SubAccountsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "subaccounts" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParam "sortOrder" SubAccountsListSortOrder :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField" SubAccountsListSortField
                                 :>
                                 QueryParam "maxResults" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] SubAccountsListResponse

-- | Gets a list of subaccounts, possibly filtered. This method supports
-- paging.
--
-- /See:/ 'subAccountsList' smart constructor.
data SubAccountsList =
  SubAccountsList'
    { _salXgafv :: !(Maybe Xgafv)
    , _salUploadProtocol :: !(Maybe Text)
    , _salAccessToken :: !(Maybe Text)
    , _salSearchString :: !(Maybe Text)
    , _salUploadType :: !(Maybe Text)
    , _salIds :: !(Maybe [Textual Int64])
    , _salProFileId :: !(Textual Int64)
    , _salSortOrder :: !SubAccountsListSortOrder
    , _salPageToken :: !(Maybe Text)
    , _salSortField :: !SubAccountsListSortField
    , _salMaxResults :: !(Textual Int32)
    , _salCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubAccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salXgafv'
--
-- * 'salUploadProtocol'
--
-- * 'salAccessToken'
--
-- * 'salSearchString'
--
-- * 'salUploadType'
--
-- * 'salIds'
--
-- * 'salProFileId'
--
-- * 'salSortOrder'
--
-- * 'salPageToken'
--
-- * 'salSortField'
--
-- * 'salMaxResults'
--
-- * 'salCallback'
subAccountsList
    :: Int64 -- ^ 'salProFileId'
    -> SubAccountsList
subAccountsList pSalProFileId_ =
  SubAccountsList'
    { _salXgafv = Nothing
    , _salUploadProtocol = Nothing
    , _salAccessToken = Nothing
    , _salSearchString = Nothing
    , _salUploadType = Nothing
    , _salIds = Nothing
    , _salProFileId = _Coerce # pSalProFileId_
    , _salSortOrder = SALSOAscending
    , _salPageToken = Nothing
    , _salSortField = SALSFID
    , _salMaxResults = 1000
    , _salCallback = Nothing
    }


-- | V1 error format.
salXgafv :: Lens' SubAccountsList (Maybe Xgafv)
salXgafv = lens _salXgafv (\ s a -> s{_salXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
salUploadProtocol :: Lens' SubAccountsList (Maybe Text)
salUploadProtocol
  = lens _salUploadProtocol
      (\ s a -> s{_salUploadProtocol = a})

-- | OAuth access token.
salAccessToken :: Lens' SubAccountsList (Maybe Text)
salAccessToken
  = lens _salAccessToken
      (\ s a -> s{_salAccessToken = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"subaccount*2015\" will return objects with names like
-- \"subaccount June 2015\", \"subaccount April 2015\", or simply
-- \"subaccount 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"subaccount\" will match objects with name \"my subaccount\",
-- \"subaccount 2015\", or simply \"subaccount\" .
salSearchString :: Lens' SubAccountsList (Maybe Text)
salSearchString
  = lens _salSearchString
      (\ s a -> s{_salSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
salUploadType :: Lens' SubAccountsList (Maybe Text)
salUploadType
  = lens _salUploadType
      (\ s a -> s{_salUploadType = a})

-- | Select only subaccounts with these IDs.
salIds :: Lens' SubAccountsList [Int64]
salIds
  = lens _salIds (\ s a -> s{_salIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
salProFileId :: Lens' SubAccountsList Int64
salProFileId
  = lens _salProFileId (\ s a -> s{_salProFileId = a})
      . _Coerce

-- | Order of sorted results.
salSortOrder :: Lens' SubAccountsList SubAccountsListSortOrder
salSortOrder
  = lens _salSortOrder (\ s a -> s{_salSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
salPageToken :: Lens' SubAccountsList (Maybe Text)
salPageToken
  = lens _salPageToken (\ s a -> s{_salPageToken = a})

-- | Field by which to sort the list.
salSortField :: Lens' SubAccountsList SubAccountsListSortField
salSortField
  = lens _salSortField (\ s a -> s{_salSortField = a})

-- | Maximum number of results to return.
salMaxResults :: Lens' SubAccountsList Int32
salMaxResults
  = lens _salMaxResults
      (\ s a -> s{_salMaxResults = a})
      . _Coerce

-- | JSONP
salCallback :: Lens' SubAccountsList (Maybe Text)
salCallback
  = lens _salCallback (\ s a -> s{_salCallback = a})

instance GoogleRequest SubAccountsList where
        type Rs SubAccountsList = SubAccountsListResponse
        type Scopes SubAccountsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SubAccountsList'{..}
          = go _salProFileId _salXgafv _salUploadProtocol
              _salAccessToken
              _salSearchString
              _salUploadType
              (_salIds ^. _Default)
              (Just _salSortOrder)
              _salPageToken
              (Just _salSortField)
              (Just _salMaxResults)
              _salCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy SubAccountsListResource)
                      mempty
