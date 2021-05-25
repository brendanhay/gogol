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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of remarketing lists, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingLists.list@.
module Network.Google.Resource.DFAReporting.RemarketingLists.List
    (
    -- * REST Resource
      RemarketingListsListResource

    -- * Creating a Request
    , remarketingListsList
    , RemarketingListsList

    -- * Request Lenses
    , rllXgafv
    , rllUploadProtocol
    , rllFloodlightActivityId
    , rllAccessToken
    , rllAdvertiserId
    , rllUploadType
    , rllProFileId
    , rllSortOrder
    , rllActive
    , rllName
    , rllPageToken
    , rllSortField
    , rllMaxResults
    , rllCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingLists.list@ method which the
-- 'RemarketingListsList' request conforms to.
type RemarketingListsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingLists" :>
               QueryParam "advertiserId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "floodlightActivityId" (Textual Int64) :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "sortOrder" RemarketingListsListSortOrder
                             :>
                             QueryParam "active" Bool :>
                               QueryParam "name" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField"
                                     RemarketingListsListSortField
                                     :>
                                     QueryParam "maxResults" (Textual Int32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             RemarketingListsListResponse

-- | Retrieves a list of remarketing lists, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'remarketingListsList' smart constructor.
data RemarketingListsList =
  RemarketingListsList'
    { _rllXgafv :: !(Maybe Xgafv)
    , _rllUploadProtocol :: !(Maybe Text)
    , _rllFloodlightActivityId :: !(Maybe (Textual Int64))
    , _rllAccessToken :: !(Maybe Text)
    , _rllAdvertiserId :: !(Textual Int64)
    , _rllUploadType :: !(Maybe Text)
    , _rllProFileId :: !(Textual Int64)
    , _rllSortOrder :: !RemarketingListsListSortOrder
    , _rllActive :: !(Maybe Bool)
    , _rllName :: !(Maybe Text)
    , _rllPageToken :: !(Maybe Text)
    , _rllSortField :: !RemarketingListsListSortField
    , _rllMaxResults :: !(Textual Int32)
    , _rllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemarketingListsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllXgafv'
--
-- * 'rllUploadProtocol'
--
-- * 'rllFloodlightActivityId'
--
-- * 'rllAccessToken'
--
-- * 'rllAdvertiserId'
--
-- * 'rllUploadType'
--
-- * 'rllProFileId'
--
-- * 'rllSortOrder'
--
-- * 'rllActive'
--
-- * 'rllName'
--
-- * 'rllPageToken'
--
-- * 'rllSortField'
--
-- * 'rllMaxResults'
--
-- * 'rllCallback'
remarketingListsList
    :: Int64 -- ^ 'rllAdvertiserId'
    -> Int64 -- ^ 'rllProFileId'
    -> RemarketingListsList
remarketingListsList pRllAdvertiserId_ pRllProFileId_ =
  RemarketingListsList'
    { _rllXgafv = Nothing
    , _rllUploadProtocol = Nothing
    , _rllFloodlightActivityId = Nothing
    , _rllAccessToken = Nothing
    , _rllAdvertiserId = _Coerce # pRllAdvertiserId_
    , _rllUploadType = Nothing
    , _rllProFileId = _Coerce # pRllProFileId_
    , _rllSortOrder = RLLSOAscending
    , _rllActive = Nothing
    , _rllName = Nothing
    , _rllPageToken = Nothing
    , _rllSortField = RLLSFID
    , _rllMaxResults = 1000
    , _rllCallback = Nothing
    }


-- | V1 error format.
rllXgafv :: Lens' RemarketingListsList (Maybe Xgafv)
rllXgafv = lens _rllXgafv (\ s a -> s{_rllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rllUploadProtocol :: Lens' RemarketingListsList (Maybe Text)
rllUploadProtocol
  = lens _rllUploadProtocol
      (\ s a -> s{_rllUploadProtocol = a})

-- | Select only remarketing lists that have this floodlight activity ID.
rllFloodlightActivityId :: Lens' RemarketingListsList (Maybe Int64)
rllFloodlightActivityId
  = lens _rllFloodlightActivityId
      (\ s a -> s{_rllFloodlightActivityId = a})
      . mapping _Coerce

-- | OAuth access token.
rllAccessToken :: Lens' RemarketingListsList (Maybe Text)
rllAccessToken
  = lens _rllAccessToken
      (\ s a -> s{_rllAccessToken = a})

-- | Select only remarketing lists owned by this advertiser.
rllAdvertiserId :: Lens' RemarketingListsList Int64
rllAdvertiserId
  = lens _rllAdvertiserId
      (\ s a -> s{_rllAdvertiserId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rllUploadType :: Lens' RemarketingListsList (Maybe Text)
rllUploadType
  = lens _rllUploadType
      (\ s a -> s{_rllUploadType = a})

-- | User profile ID associated with this request.
rllProFileId :: Lens' RemarketingListsList Int64
rllProFileId
  = lens _rllProFileId (\ s a -> s{_rllProFileId = a})
      . _Coerce

-- | Order of sorted results.
rllSortOrder :: Lens' RemarketingListsList RemarketingListsListSortOrder
rllSortOrder
  = lens _rllSortOrder (\ s a -> s{_rllSortOrder = a})

-- | Select only active or only inactive remarketing lists.
rllActive :: Lens' RemarketingListsList (Maybe Bool)
rllActive
  = lens _rllActive (\ s a -> s{_rllActive = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"remarketing list*2015\" will return objects with names
-- like \"remarketing list June 2015\", \"remarketing list April 2015\", or
-- simply \"remarketing list 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"remarketing list\" will match objects with
-- name \"my remarketing list\", \"remarketing list 2015\", or simply
-- \"remarketing list\".
rllName :: Lens' RemarketingListsList (Maybe Text)
rllName = lens _rllName (\ s a -> s{_rllName = a})

-- | Value of the nextPageToken from the previous result page.
rllPageToken :: Lens' RemarketingListsList (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | Field by which to sort the list.
rllSortField :: Lens' RemarketingListsList RemarketingListsListSortField
rllSortField
  = lens _rllSortField (\ s a -> s{_rllSortField = a})

-- | Maximum number of results to return.
rllMaxResults :: Lens' RemarketingListsList Int32
rllMaxResults
  = lens _rllMaxResults
      (\ s a -> s{_rllMaxResults = a})
      . _Coerce

-- | JSONP
rllCallback :: Lens' RemarketingListsList (Maybe Text)
rllCallback
  = lens _rllCallback (\ s a -> s{_rllCallback = a})

instance GoogleRequest RemarketingListsList where
        type Rs RemarketingListsList =
             RemarketingListsListResponse
        type Scopes RemarketingListsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListsList'{..}
          = go _rllProFileId (Just _rllAdvertiserId) _rllXgafv
              _rllUploadProtocol
              _rllFloodlightActivityId
              _rllAccessToken
              _rllUploadType
              (Just _rllSortOrder)
              _rllActive
              _rllName
              _rllPageToken
              (Just _rllSortField)
              (Just _rllMaxResults)
              _rllCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsListResource)
                      mempty
