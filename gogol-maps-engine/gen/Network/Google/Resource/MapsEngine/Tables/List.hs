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
-- Module      : Network.Google.Resource.MapsEngine.Tables.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all tables readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.list@.
module Network.Google.Resource.MapsEngine.Tables.List
    (
    -- * REST Resource
      TablesListResource

    -- * Creating a Request
    , tablesList
    , TablesList

    -- * Request Lenses
    , tlCreatedAfter
    , tlCreatorEmail
    , tlRole
    , tlBbox
    , tlProcessingStatus
    , tlModifiedAfter
    , tlModifiedBefore
    , tlPageToken
    , tlProjectId
    , tlSearch
    , tlMaxResults
    , tlTags
    , tlCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.list@ method which the
-- 'TablesList' request conforms to.
type TablesListResource =
     "mapsengine" :>
       "v1" :>
         "tables" :>
           QueryParam "createdAfter" DateTime' :>
             QueryParam "creatorEmail" Text :>
               QueryParam "role" TablesListRole :>
                 QueryParam "bbox" Text :>
                   QueryParam "processingStatus"
                     TablesListProcessingStatus
                     :>
                     QueryParam "modifiedAfter" DateTime' :>
                       QueryParam "modifiedBefore" DateTime' :>
                         QueryParam "pageToken" Text :>
                           QueryParam "projectId" Text :>
                             QueryParam "search" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "tags" Text :>
                                   QueryParam "createdBefore" DateTime' :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] TablesListResponse

-- | Return all tables readable by the current user.
--
-- /See:/ 'tablesList' smart constructor.
data TablesList = TablesList
    { _tlCreatedAfter     :: !(Maybe DateTime')
    , _tlCreatorEmail     :: !(Maybe Text)
    , _tlRole             :: !(Maybe TablesListRole)
    , _tlBbox             :: !(Maybe Text)
    , _tlProcessingStatus :: !(Maybe TablesListProcessingStatus)
    , _tlModifiedAfter    :: !(Maybe DateTime')
    , _tlModifiedBefore   :: !(Maybe DateTime')
    , _tlPageToken        :: !(Maybe Text)
    , _tlProjectId        :: !(Maybe Text)
    , _tlSearch           :: !(Maybe Text)
    , _tlMaxResults       :: !(Maybe (Textual Word32))
    , _tlTags             :: !(Maybe Text)
    , _tlCreatedBefore    :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlCreatedAfter'
--
-- * 'tlCreatorEmail'
--
-- * 'tlRole'
--
-- * 'tlBbox'
--
-- * 'tlProcessingStatus'
--
-- * 'tlModifiedAfter'
--
-- * 'tlModifiedBefore'
--
-- * 'tlPageToken'
--
-- * 'tlProjectId'
--
-- * 'tlSearch'
--
-- * 'tlMaxResults'
--
-- * 'tlTags'
--
-- * 'tlCreatedBefore'
tablesList
    :: TablesList
tablesList =
    TablesList
    { _tlCreatedAfter = Nothing
    , _tlCreatorEmail = Nothing
    , _tlRole = Nothing
    , _tlBbox = Nothing
    , _tlProcessingStatus = Nothing
    , _tlModifiedAfter = Nothing
    , _tlModifiedBefore = Nothing
    , _tlPageToken = Nothing
    , _tlProjectId = Nothing
    , _tlSearch = Nothing
    , _tlMaxResults = Nothing
    , _tlTags = Nothing
    , _tlCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
tlCreatedAfter :: Lens' TablesList (Maybe UTCTime)
tlCreatedAfter
  = lens _tlCreatedAfter
      (\ s a -> s{_tlCreatedAfter = a})
      . mapping _DateTime

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
tlCreatorEmail :: Lens' TablesList (Maybe Text)
tlCreatorEmail
  = lens _tlCreatorEmail
      (\ s a -> s{_tlCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
tlRole :: Lens' TablesList (Maybe TablesListRole)
tlRole = lens _tlRole (\ s a -> s{_tlRole = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
tlBbox :: Lens' TablesList (Maybe Text)
tlBbox = lens _tlBbox (\ s a -> s{_tlBbox = a})

tlProcessingStatus :: Lens' TablesList (Maybe TablesListProcessingStatus)
tlProcessingStatus
  = lens _tlProcessingStatus
      (\ s a -> s{_tlProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
tlModifiedAfter :: Lens' TablesList (Maybe UTCTime)
tlModifiedAfter
  = lens _tlModifiedAfter
      (\ s a -> s{_tlModifiedAfter = a})
      . mapping _DateTime

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
tlModifiedBefore :: Lens' TablesList (Maybe UTCTime)
tlModifiedBefore
  = lens _tlModifiedBefore
      (\ s a -> s{_tlModifiedBefore = a})
      . mapping _DateTime

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
tlPageToken :: Lens' TablesList (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
tlProjectId :: Lens' TablesList (Maybe Text)
tlProjectId
  = lens _tlProjectId (\ s a -> s{_tlProjectId = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
tlSearch :: Lens' TablesList (Maybe Text)
tlSearch = lens _tlSearch (\ s a -> s{_tlSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
tlMaxResults :: Lens' TablesList (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})
      . mapping _Coerce

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
tlTags :: Lens' TablesList (Maybe Text)
tlTags = lens _tlTags (\ s a -> s{_tlTags = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
tlCreatedBefore :: Lens' TablesList (Maybe UTCTime)
tlCreatedBefore
  = lens _tlCreatedBefore
      (\ s a -> s{_tlCreatedBefore = a})
      . mapping _DateTime

instance GoogleRequest TablesList where
        type Rs TablesList = TablesListResponse
        requestClient TablesList{..}
          = go _tlCreatedAfter _tlCreatorEmail _tlRole _tlBbox
              _tlProcessingStatus
              _tlModifiedAfter
              _tlModifiedBefore
              _tlPageToken
              _tlProjectId
              _tlSearch
              _tlMaxResults
              _tlTags
              _tlCreatedBefore
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy TablesListResource)
                      mempty
