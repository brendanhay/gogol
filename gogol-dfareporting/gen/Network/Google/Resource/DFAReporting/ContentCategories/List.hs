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
-- Retrieves a list of content categories, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.contentCategories.list@.
module Network.Google.Resource.DFAReporting.ContentCategories.List
    (
    -- * REST Resource
      ContentCategoriesListResource

    -- * Creating a Request
    , contentCategoriesList
    , ContentCategoriesList

    -- * Request Lenses
    , cclSearchString
    , cclIds
    , cclProFileId
    , cclSortOrder
    , cclPageToken
    , cclSortField
    , cclMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.list@ method which the
-- 'ContentCategoriesList' request conforms to.
type ContentCategoriesListResource =
     "dfareporting" :>
       "v2.5beta1" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" (Textual Int64) :>
                   QueryParam "sortOrder" ContentCategoriesListSortOrder
                     :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" ContentCategoriesListSortField
                         :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ContentCategoriesListResponse

-- | Retrieves a list of content categories, possibly filtered.
--
-- /See:/ 'contentCategoriesList' smart constructor.
data ContentCategoriesList = ContentCategoriesList'
    { _cclSearchString :: !(Maybe Text)
    , _cclIds          :: !(Maybe [Textual Int64])
    , _cclProFileId    :: !(Textual Int64)
    , _cclSortOrder    :: !(Maybe ContentCategoriesListSortOrder)
    , _cclPageToken    :: !(Maybe Text)
    , _cclSortField    :: !(Maybe ContentCategoriesListSortField)
    , _cclMaxResults   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclSearchString'
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
contentCategoriesList
    :: Int64 -- ^ 'cclProFileId'
    -> ContentCategoriesList
contentCategoriesList pCclProFileId_ =
    ContentCategoriesList'
    { _cclSearchString = Nothing
    , _cclIds = Nothing
    , _cclProFileId = _Coerce # pCclProFileId_
    , _cclSortOrder = Nothing
    , _cclPageToken = Nothing
    , _cclSortField = Nothing
    , _cclMaxResults = Nothing
    }

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

-- | Order of sorted results, default is ASCENDING.
cclSortOrder :: Lens' ContentCategoriesList (Maybe ContentCategoriesListSortOrder)
cclSortOrder
  = lens _cclSortOrder (\ s a -> s{_cclSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
cclPageToken :: Lens' ContentCategoriesList (Maybe Text)
cclPageToken
  = lens _cclPageToken (\ s a -> s{_cclPageToken = a})

-- | Field by which to sort the list.
cclSortField :: Lens' ContentCategoriesList (Maybe ContentCategoriesListSortField)
cclSortField
  = lens _cclSortField (\ s a -> s{_cclSortField = a})

-- | Maximum number of results to return.
cclMaxResults :: Lens' ContentCategoriesList (Maybe Int32)
cclMaxResults
  = lens _cclMaxResults
      (\ s a -> s{_cclMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ContentCategoriesList where
        type Rs ContentCategoriesList =
             ContentCategoriesListResponse
        type Scopes ContentCategoriesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesList'{..}
          = go _cclProFileId _cclSearchString
              (_cclIds ^. _Default)
              _cclSortOrder
              _cclPageToken
              _cclSortField
              _cclMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesListResource)
                      mempty
