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
-- Retrieves a list of advertiser groups, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserGroups.list@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.List
    (
    -- * REST Resource
      AdvertiserGroupsListResource

    -- * Creating a Request
    , advertiserGroupsList
    , AdvertiserGroupsList

    -- * Request Lenses
    , aglSearchString
    , aglIds
    , aglProFileId
    , aglSortOrder
    , aglPageToken
    , aglSortField
    , aglMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.list@ method which the
-- 'AdvertiserGroupsList' request conforms to.
type AdvertiserGroupsListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserGroups" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" (Textual Int64) :>
                   QueryParam "sortOrder" AdvertiserGroupsListSortOrder
                     :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" AdvertiserGroupsListSortField
                         :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AdvertiserGroupsListResponse

-- | Retrieves a list of advertiser groups, possibly filtered.
--
-- /See:/ 'advertiserGroupsList' smart constructor.
data AdvertiserGroupsList = AdvertiserGroupsList
    { _aglSearchString :: !(Maybe Text)
    , _aglIds          :: !(Maybe [Textual Int64])
    , _aglProFileId    :: !(Textual Int64)
    , _aglSortOrder    :: !(Maybe AdvertiserGroupsListSortOrder)
    , _aglPageToken    :: !(Maybe Text)
    , _aglSortField    :: !(Maybe AdvertiserGroupsListSortField)
    , _aglMaxResults   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aglSearchString'
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
advertiserGroupsList
    :: Int64 -- ^ 'aglProFileId'
    -> AdvertiserGroupsList
advertiserGroupsList pAglProFileId_ =
    AdvertiserGroupsList
    { _aglSearchString = Nothing
    , _aglIds = Nothing
    , _aglProFileId = _Coerce # pAglProFileId_
    , _aglSortOrder = Nothing
    , _aglPageToken = Nothing
    , _aglSortField = Nothing
    , _aglMaxResults = Nothing
    }

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

-- | Order of sorted results, default is ASCENDING.
aglSortOrder :: Lens' AdvertiserGroupsList (Maybe AdvertiserGroupsListSortOrder)
aglSortOrder
  = lens _aglSortOrder (\ s a -> s{_aglSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
aglPageToken :: Lens' AdvertiserGroupsList (Maybe Text)
aglPageToken
  = lens _aglPageToken (\ s a -> s{_aglPageToken = a})

-- | Field by which to sort the list.
aglSortField :: Lens' AdvertiserGroupsList (Maybe AdvertiserGroupsListSortField)
aglSortField
  = lens _aglSortField (\ s a -> s{_aglSortField = a})

-- | Maximum number of results to return.
aglMaxResults :: Lens' AdvertiserGroupsList (Maybe Int32)
aglMaxResults
  = lens _aglMaxResults
      (\ s a -> s{_aglMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AdvertiserGroupsList where
        type Rs AdvertiserGroupsList =
             AdvertiserGroupsListResponse
        requestClient AdvertiserGroupsList{..}
          = go _aglProFileId _aglSearchString
              (_aglIds ^. _Default)
              _aglSortOrder
              _aglPageToken
              _aglSortField
              _aglMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsListResource)
                      mempty
