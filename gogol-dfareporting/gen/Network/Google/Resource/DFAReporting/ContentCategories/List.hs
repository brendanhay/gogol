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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of content categories, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.contentCategories.list@.
module Network.Google.Resource.DFAReporting.ContentCategories.List
    (
    -- * REST Resource
      ContentCategoriesListResource

    -- * Creating a Request
    , contentCategoriesList
    , ContentCategoriesList

    -- * Request Lenses
    , cclXgafv
    , cclUploadProtocol
    , cclAccessToken
    , cclSearchString
    , cclUploadType
    , cclIds
    , cclProFileId
    , cclSortOrder
    , cclPageToken
    , cclSortField
    , cclMaxResults
    , cclCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.list@ method which the
-- 'ContentCategoriesList' request conforms to.
type ContentCategoriesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParam "sortOrder" ContentCategoriesListSortOrder
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 ContentCategoriesListSortField
                                 :>
                                 QueryParam "maxResults" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ContentCategoriesListResponse

-- | Retrieves a list of content categories, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'contentCategoriesList' smart constructor.
data ContentCategoriesList =
  ContentCategoriesList'
    { _cclXgafv :: !(Maybe Xgafv)
    , _cclUploadProtocol :: !(Maybe Text)
    , _cclAccessToken :: !(Maybe Text)
    , _cclSearchString :: !(Maybe Text)
    , _cclUploadType :: !(Maybe Text)
    , _cclIds :: !(Maybe [Textual Int64])
    , _cclProFileId :: !(Textual Int64)
    , _cclSortOrder :: !ContentCategoriesListSortOrder
    , _cclPageToken :: !(Maybe Text)
    , _cclSortField :: !ContentCategoriesListSortField
    , _cclMaxResults :: !(Textual Int32)
    , _cclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContentCategoriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclXgafv'
--
-- * 'cclUploadProtocol'
--
-- * 'cclAccessToken'
--
-- * 'cclSearchString'
--
-- * 'cclUploadType'
--
-- * 'cclIds'
--
-- * 'cclProFileId'
--
-- * 'cclSortOrder'
--
-- * 'cclPageToken'
--
-- * 'cclSortField'
--
-- * 'cclMaxResults'
--
-- * 'cclCallback'
contentCategoriesList
    :: Int64 -- ^ 'cclProFileId'
    -> ContentCategoriesList
contentCategoriesList pCclProFileId_ =
  ContentCategoriesList'
    { _cclXgafv = Nothing
    , _cclUploadProtocol = Nothing
    , _cclAccessToken = Nothing
    , _cclSearchString = Nothing
    , _cclUploadType = Nothing
    , _cclIds = Nothing
    , _cclProFileId = _Coerce # pCclProFileId_
    , _cclSortOrder = CCLSOAscending
    , _cclPageToken = Nothing
    , _cclSortField = CCLSFID
    , _cclMaxResults = 1000
    , _cclCallback = Nothing
    }


-- | V1 error format.
cclXgafv :: Lens' ContentCategoriesList (Maybe Xgafv)
cclXgafv = lens _cclXgafv (\ s a -> s{_cclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cclUploadProtocol :: Lens' ContentCategoriesList (Maybe Text)
cclUploadProtocol
  = lens _cclUploadProtocol
      (\ s a -> s{_cclUploadProtocol = a})

-- | OAuth access token.
cclAccessToken :: Lens' ContentCategoriesList (Maybe Text)
cclAccessToken
  = lens _cclAccessToken
      (\ s a -> s{_cclAccessToken = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"contentcategory*2015\" will return objects with names
-- like \"contentcategory June 2015\", \"contentcategory April 2015\", or
-- simply \"contentcategory 2015\". Most of the searches also add wildcards
-- implicitly at the start and the end of the search string. For example, a
-- search string of \"contentcategory\" will match objects with name \"my
-- contentcategory\", \"contentcategory 2015\", or simply
-- \"contentcategory\".
cclSearchString :: Lens' ContentCategoriesList (Maybe Text)
cclSearchString
  = lens _cclSearchString
      (\ s a -> s{_cclSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cclUploadType :: Lens' ContentCategoriesList (Maybe Text)
cclUploadType
  = lens _cclUploadType
      (\ s a -> s{_cclUploadType = a})

-- | Select only content categories with these IDs.
cclIds :: Lens' ContentCategoriesList [Int64]
cclIds
  = lens _cclIds (\ s a -> s{_cclIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
cclProFileId :: Lens' ContentCategoriesList Int64
cclProFileId
  = lens _cclProFileId (\ s a -> s{_cclProFileId = a})
      . _Coerce

-- | Order of sorted results.
cclSortOrder :: Lens' ContentCategoriesList ContentCategoriesListSortOrder
cclSortOrder
  = lens _cclSortOrder (\ s a -> s{_cclSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
cclPageToken :: Lens' ContentCategoriesList (Maybe Text)
cclPageToken
  = lens _cclPageToken (\ s a -> s{_cclPageToken = a})

-- | Field by which to sort the list.
cclSortField :: Lens' ContentCategoriesList ContentCategoriesListSortField
cclSortField
  = lens _cclSortField (\ s a -> s{_cclSortField = a})

-- | Maximum number of results to return.
cclMaxResults :: Lens' ContentCategoriesList Int32
cclMaxResults
  = lens _cclMaxResults
      (\ s a -> s{_cclMaxResults = a})
      . _Coerce

-- | JSONP
cclCallback :: Lens' ContentCategoriesList (Maybe Text)
cclCallback
  = lens _cclCallback (\ s a -> s{_cclCallback = a})

instance GoogleRequest ContentCategoriesList where
        type Rs ContentCategoriesList =
             ContentCategoriesListResponse
        type Scopes ContentCategoriesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesList'{..}
          = go _cclProFileId _cclXgafv _cclUploadProtocol
              _cclAccessToken
              _cclSearchString
              _cclUploadType
              (_cclIds ^. _Default)
              (Just _cclSortOrder)
              _cclPageToken
              (Just _cclSortField)
              (Just _cclMaxResults)
              _cclCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesListResource)
                      mempty
