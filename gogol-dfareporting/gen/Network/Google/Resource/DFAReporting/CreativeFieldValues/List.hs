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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creative field values, possibly filtered. This
-- method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFieldValues.list@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.List
    (
    -- * REST Resource
      CreativeFieldValuesListResource

    -- * Creating a Request
    , creativeFieldValuesList
    , CreativeFieldValuesList

    -- * Request Lenses
    , cfvlCreativeFieldId
    , cfvlSearchString
    , cfvlIds
    , cfvlProFileId
    , cfvlSortOrder
    , cfvlPageToken
    , cfvlSortField
    , cfvlMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFieldValues.list@ method which the
-- 'CreativeFieldValuesList' request conforms to.
type CreativeFieldValuesListResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "creativeFieldId" (Textual Int64) :>
                 "creativeFieldValues" :>
                   QueryParam "searchString" Text :>
                     QueryParams "ids" (Textual Int64) :>
                       QueryParam "sortOrder"
                         CreativeFieldValuesListSortOrder
                         :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField"
                             CreativeFieldValuesListSortField
                             :>
                             QueryParam "maxResults" (Textual Int32) :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CreativeFieldValuesListResponse

-- | Retrieves a list of creative field values, possibly filtered. This
-- method supports paging.
--
-- /See:/ 'creativeFieldValuesList' smart constructor.
data CreativeFieldValuesList = CreativeFieldValuesList'
    { _cfvlCreativeFieldId :: !(Textual Int64)
    , _cfvlSearchString    :: !(Maybe Text)
    , _cfvlIds             :: !(Maybe [Textual Int64])
    , _cfvlProFileId       :: !(Textual Int64)
    , _cfvlSortOrder       :: !(Maybe CreativeFieldValuesListSortOrder)
    , _cfvlPageToken       :: !(Maybe Text)
    , _cfvlSortField       :: !(Maybe CreativeFieldValuesListSortField)
    , _cfvlMaxResults      :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvlCreativeFieldId'
--
-- * 'cfvlSearchString'
--
-- * 'cfvlIds'
--
-- * 'cfvlProFileId'
--
-- * 'cfvlSortOrder'
--
-- * 'cfvlPageToken'
--
-- * 'cfvlSortField'
--
-- * 'cfvlMaxResults'
creativeFieldValuesList
    :: Int64 -- ^ 'cfvlCreativeFieldId'
    -> Int64 -- ^ 'cfvlProFileId'
    -> CreativeFieldValuesList
creativeFieldValuesList pCfvlCreativeFieldId_ pCfvlProFileId_ =
    CreativeFieldValuesList'
    { _cfvlCreativeFieldId = _Coerce # pCfvlCreativeFieldId_
    , _cfvlSearchString = Nothing
    , _cfvlIds = Nothing
    , _cfvlProFileId = _Coerce # pCfvlProFileId_
    , _cfvlSortOrder = Nothing
    , _cfvlPageToken = Nothing
    , _cfvlSortField = Nothing
    , _cfvlMaxResults = Nothing
    }

-- | Creative field ID for this creative field value.
cfvlCreativeFieldId :: Lens' CreativeFieldValuesList Int64
cfvlCreativeFieldId
  = lens _cfvlCreativeFieldId
      (\ s a -> s{_cfvlCreativeFieldId = a})
      . _Coerce

-- | Allows searching for creative field values by their values. Wildcards
-- (e.g. *) are not allowed.
cfvlSearchString :: Lens' CreativeFieldValuesList (Maybe Text)
cfvlSearchString
  = lens _cfvlSearchString
      (\ s a -> s{_cfvlSearchString = a})

-- | Select only creative field values with these IDs.
cfvlIds :: Lens' CreativeFieldValuesList [Int64]
cfvlIds
  = lens _cfvlIds (\ s a -> s{_cfvlIds = a}) . _Default
      . _Coerce

-- | User profile ID associated with this request.
cfvlProFileId :: Lens' CreativeFieldValuesList Int64
cfvlProFileId
  = lens _cfvlProFileId
      (\ s a -> s{_cfvlProFileId = a})
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
cfvlSortOrder :: Lens' CreativeFieldValuesList (Maybe CreativeFieldValuesListSortOrder)
cfvlSortOrder
  = lens _cfvlSortOrder
      (\ s a -> s{_cfvlSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
cfvlPageToken :: Lens' CreativeFieldValuesList (Maybe Text)
cfvlPageToken
  = lens _cfvlPageToken
      (\ s a -> s{_cfvlPageToken = a})

-- | Field by which to sort the list.
cfvlSortField :: Lens' CreativeFieldValuesList (Maybe CreativeFieldValuesListSortField)
cfvlSortField
  = lens _cfvlSortField
      (\ s a -> s{_cfvlSortField = a})

-- | Maximum number of results to return.
cfvlMaxResults :: Lens' CreativeFieldValuesList (Maybe Int32)
cfvlMaxResults
  = lens _cfvlMaxResults
      (\ s a -> s{_cfvlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest CreativeFieldValuesList where
        type Rs CreativeFieldValuesList =
             CreativeFieldValuesListResponse
        type Scopes CreativeFieldValuesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldValuesList'{..}
          = go _cfvlProFileId _cfvlCreativeFieldId
              _cfvlSearchString
              (_cfvlIds ^. _Default)
              _cfvlSortOrder
              _cfvlPageToken
              _cfvlSortField
              _cfvlMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldValuesListResource)
                      mempty
