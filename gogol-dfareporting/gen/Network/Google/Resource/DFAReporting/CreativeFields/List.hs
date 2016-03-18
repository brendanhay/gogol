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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creative fields, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFields.list@.
module Network.Google.Resource.DFAReporting.CreativeFields.List
    (
    -- * REST Resource
      CreativeFieldsListResource

    -- * Creating a Request
    , creativeFieldsList
    , CreativeFieldsList

    -- * Request Lenses
    , cflSearchString
    , cflIds
    , cflProFileId
    , cflSortOrder
    , cflPageToken
    , cflSortField
    , cflAdvertiserIds
    , cflMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.list@ method which the
-- 'CreativeFieldsList' request conforms to.
type CreativeFieldsListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" (Textual Int64) :>
                   QueryParam "sortOrder" CreativeFieldsListSortOrder :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" CreativeFieldsListSortField :>
                         QueryParams "advertiserIds" (Textual Int64) :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] CreativeFieldsListResponse

-- | Retrieves a list of creative fields, possibly filtered.
--
-- /See:/ 'creativeFieldsList' smart constructor.
data CreativeFieldsList = CreativeFieldsList
    { _cflSearchString  :: !(Maybe Text)
    , _cflIds           :: !(Maybe [Textual Int64])
    , _cflProFileId     :: !(Textual Int64)
    , _cflSortOrder     :: !(Maybe CreativeFieldsListSortOrder)
    , _cflPageToken     :: !(Maybe Text)
    , _cflSortField     :: !(Maybe CreativeFieldsListSortField)
    , _cflAdvertiserIds :: !(Maybe [Textual Int64])
    , _cflMaxResults    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflSearchString'
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
creativeFieldsList
    :: Int64 -- ^ 'cflProFileId'
    -> CreativeFieldsList
creativeFieldsList pCflProFileId_ =
    CreativeFieldsList
    { _cflSearchString = Nothing
    , _cflIds = Nothing
    , _cflProFileId = _Coerce # pCflProFileId_
    , _cflSortOrder = Nothing
    , _cflPageToken = Nothing
    , _cflSortField = Nothing
    , _cflAdvertiserIds = Nothing
    , _cflMaxResults = Nothing
    }

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

-- | Order of sorted results, default is ASCENDING.
cflSortOrder :: Lens' CreativeFieldsList (Maybe CreativeFieldsListSortOrder)
cflSortOrder
  = lens _cflSortOrder (\ s a -> s{_cflSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
cflPageToken :: Lens' CreativeFieldsList (Maybe Text)
cflPageToken
  = lens _cflPageToken (\ s a -> s{_cflPageToken = a})

-- | Field by which to sort the list.
cflSortField :: Lens' CreativeFieldsList (Maybe CreativeFieldsListSortField)
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
cflMaxResults :: Lens' CreativeFieldsList (Maybe Int32)
cflMaxResults
  = lens _cflMaxResults
      (\ s a -> s{_cflMaxResults = a})
      . mapping _Coerce

instance GoogleRequest CreativeFieldsList where
        type Rs CreativeFieldsList =
             CreativeFieldsListResponse
        requestClient CreativeFieldsList{..}
          = go _cflProFileId _cflSearchString
              (_cflIds ^. _Default)
              _cflSortOrder
              _cflPageToken
              _cflSortField
              (_cflAdvertiserIds ^. _Default)
              _cflMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsListResource)
                      mempty
