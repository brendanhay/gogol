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
-- Module      : Network.Google.Resource.DFAReporting.TargetableRemarketingLists.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of targetable remarketing lists, possibly filtered.
-- This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.targetableRemarketingLists.list@.
module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.List
    (
    -- * REST Resource
      TargetableRemarketingListsListResource

    -- * Creating a Request
    , targetableRemarketingListsList
    , TargetableRemarketingListsList

    -- * Request Lenses
    , trllXgafv
    , trllUploadProtocol
    , trllAccessToken
    , trllAdvertiserId
    , trllUploadType
    , trllProFileId
    , trllSortOrder
    , trllActive
    , trllName
    , trllPageToken
    , trllSortField
    , trllMaxResults
    , trllCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.targetableRemarketingLists.list@ method which the
-- 'TargetableRemarketingListsList' request conforms to.
type TargetableRemarketingListsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetableRemarketingLists" :>
               QueryParam "advertiserId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "sortOrder"
                           TargetableRemarketingListsListSortOrder
                           :>
                           QueryParam "active" Bool :>
                             QueryParam "name" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "sortField"
                                   TargetableRemarketingListsListSortField
                                   :>
                                   QueryParam "maxResults" (Textual Int32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON]
                                           TargetableRemarketingListsListResponse

-- | Retrieves a list of targetable remarketing lists, possibly filtered.
-- This method supports paging.
--
-- /See:/ 'targetableRemarketingListsList' smart constructor.
data TargetableRemarketingListsList =
  TargetableRemarketingListsList'
    { _trllXgafv :: !(Maybe Xgafv)
    , _trllUploadProtocol :: !(Maybe Text)
    , _trllAccessToken :: !(Maybe Text)
    , _trllAdvertiserId :: !(Textual Int64)
    , _trllUploadType :: !(Maybe Text)
    , _trllProFileId :: !(Textual Int64)
    , _trllSortOrder :: !TargetableRemarketingListsListSortOrder
    , _trllActive :: !(Maybe Bool)
    , _trllName :: !(Maybe Text)
    , _trllPageToken :: !(Maybe Text)
    , _trllSortField :: !TargetableRemarketingListsListSortField
    , _trllMaxResults :: !(Textual Int32)
    , _trllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetableRemarketingListsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trllXgafv'
--
-- * 'trllUploadProtocol'
--
-- * 'trllAccessToken'
--
-- * 'trllAdvertiserId'
--
-- * 'trllUploadType'
--
-- * 'trllProFileId'
--
-- * 'trllSortOrder'
--
-- * 'trllActive'
--
-- * 'trllName'
--
-- * 'trllPageToken'
--
-- * 'trllSortField'
--
-- * 'trllMaxResults'
--
-- * 'trllCallback'
targetableRemarketingListsList
    :: Int64 -- ^ 'trllAdvertiserId'
    -> Int64 -- ^ 'trllProFileId'
    -> TargetableRemarketingListsList
targetableRemarketingListsList pTrllAdvertiserId_ pTrllProFileId_ =
  TargetableRemarketingListsList'
    { _trllXgafv = Nothing
    , _trllUploadProtocol = Nothing
    , _trllAccessToken = Nothing
    , _trllAdvertiserId = _Coerce # pTrllAdvertiserId_
    , _trllUploadType = Nothing
    , _trllProFileId = _Coerce # pTrllProFileId_
    , _trllSortOrder = TRLLSOAscending
    , _trllActive = Nothing
    , _trllName = Nothing
    , _trllPageToken = Nothing
    , _trllSortField = TRLLSFID
    , _trllMaxResults = 1000
    , _trllCallback = Nothing
    }


-- | V1 error format.
trllXgafv :: Lens' TargetableRemarketingListsList (Maybe Xgafv)
trllXgafv
  = lens _trllXgafv (\ s a -> s{_trllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
trllUploadProtocol :: Lens' TargetableRemarketingListsList (Maybe Text)
trllUploadProtocol
  = lens _trllUploadProtocol
      (\ s a -> s{_trllUploadProtocol = a})

-- | OAuth access token.
trllAccessToken :: Lens' TargetableRemarketingListsList (Maybe Text)
trllAccessToken
  = lens _trllAccessToken
      (\ s a -> s{_trllAccessToken = a})

-- | Select only targetable remarketing lists targetable by these
-- advertisers.
trllAdvertiserId :: Lens' TargetableRemarketingListsList Int64
trllAdvertiserId
  = lens _trllAdvertiserId
      (\ s a -> s{_trllAdvertiserId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
trllUploadType :: Lens' TargetableRemarketingListsList (Maybe Text)
trllUploadType
  = lens _trllUploadType
      (\ s a -> s{_trllUploadType = a})

-- | User profile ID associated with this request.
trllProFileId :: Lens' TargetableRemarketingListsList Int64
trllProFileId
  = lens _trllProFileId
      (\ s a -> s{_trllProFileId = a})
      . _Coerce

-- | Order of sorted results.
trllSortOrder :: Lens' TargetableRemarketingListsList TargetableRemarketingListsListSortOrder
trllSortOrder
  = lens _trllSortOrder
      (\ s a -> s{_trllSortOrder = a})

-- | Select only active or only inactive targetable remarketing lists.
trllActive :: Lens' TargetableRemarketingListsList (Maybe Bool)
trllActive
  = lens _trllActive (\ s a -> s{_trllActive = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"remarketing list*2015\" will return objects with names
-- like \"remarketing list June 2015\", \"remarketing list April 2015\", or
-- simply \"remarketing list 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"remarketing list\" will match objects with
-- name \"my remarketing list\", \"remarketing list 2015\", or simply
-- \"remarketing list\".
trllName :: Lens' TargetableRemarketingListsList (Maybe Text)
trllName = lens _trllName (\ s a -> s{_trllName = a})

-- | Value of the nextPageToken from the previous result page.
trllPageToken :: Lens' TargetableRemarketingListsList (Maybe Text)
trllPageToken
  = lens _trllPageToken
      (\ s a -> s{_trllPageToken = a})

-- | Field by which to sort the list.
trllSortField :: Lens' TargetableRemarketingListsList TargetableRemarketingListsListSortField
trllSortField
  = lens _trllSortField
      (\ s a -> s{_trllSortField = a})

-- | Maximum number of results to return.
trllMaxResults :: Lens' TargetableRemarketingListsList Int32
trllMaxResults
  = lens _trllMaxResults
      (\ s a -> s{_trllMaxResults = a})
      . _Coerce

-- | JSONP
trllCallback :: Lens' TargetableRemarketingListsList (Maybe Text)
trllCallback
  = lens _trllCallback (\ s a -> s{_trllCallback = a})

instance GoogleRequest TargetableRemarketingListsList
         where
        type Rs TargetableRemarketingListsList =
             TargetableRemarketingListsListResponse
        type Scopes TargetableRemarketingListsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetableRemarketingListsList'{..}
          = go _trllProFileId (Just _trllAdvertiserId)
              _trllXgafv
              _trllUploadProtocol
              _trllAccessToken
              _trllUploadType
              (Just _trllSortOrder)
              _trllActive
              _trllName
              _trllPageToken
              (Just _trllSortField)
              (Just _trllMaxResults)
              _trllCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetableRemarketingListsListResource)
                      mempty
