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
-- Module      : Network.Google.Resource.MapsEngine.Maps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all maps readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.list@.
module Network.Google.Resource.MapsEngine.Maps.List
    (
    -- * REST Resource
      MapsListResource

    -- * Creating a Request
    , mapsList
    , MapsList

    -- * Request Lenses
    , mlCreatedAfter
    , mlCreatorEmail
    , mlRole
    , mlBbox
    , mlProcessingStatus
    , mlModifiedAfter
    , mlModifiedBefore
    , mlPageToken
    , mlProjectId
    , mlSearch
    , mlMaxResults
    , mlTags
    , mlCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.list@ method which the
-- 'MapsList' request conforms to.
type MapsListResource =
     "mapsengine" :>
       "v1" :>
         "maps" :>
           QueryParam "createdAfter" DateTime' :>
             QueryParam "creatorEmail" Text :>
               QueryParam "role" MapsListRole :>
                 QueryParam "bbox" Text :>
                   QueryParam "processingStatus"
                     MapsListProcessingStatus
                     :>
                     QueryParam "modifiedAfter" DateTime' :>
                       QueryParam "modifiedBefore" DateTime' :>
                         QueryParam "pageToken" Text :>
                           QueryParam "projectId" Text :>
                             QueryParam "search" Text :>
                               QueryParam "maxResults" (JSONText Word32) :>
                                 QueryParam "tags" Text :>
                                   QueryParam "createdBefore" DateTime' :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] MapsListResponse

-- | Return all maps readable by the current user.
--
-- /See:/ 'mapsList' smart constructor.
data MapsList = MapsList
    { _mlCreatedAfter     :: !(Maybe DateTime')
    , _mlCreatorEmail     :: !(Maybe Text)
    , _mlRole             :: !(Maybe MapsListRole)
    , _mlBbox             :: !(Maybe Text)
    , _mlProcessingStatus :: !(Maybe MapsListProcessingStatus)
    , _mlModifiedAfter    :: !(Maybe DateTime')
    , _mlModifiedBefore   :: !(Maybe DateTime')
    , _mlPageToken        :: !(Maybe Text)
    , _mlProjectId        :: !(Maybe Text)
    , _mlSearch           :: !(Maybe Text)
    , _mlMaxResults       :: !(Maybe (JSONText Word32))
    , _mlTags             :: !(Maybe Text)
    , _mlCreatedBefore    :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlCreatedAfter'
--
-- * 'mlCreatorEmail'
--
-- * 'mlRole'
--
-- * 'mlBbox'
--
-- * 'mlProcessingStatus'
--
-- * 'mlModifiedAfter'
--
-- * 'mlModifiedBefore'
--
-- * 'mlPageToken'
--
-- * 'mlProjectId'
--
-- * 'mlSearch'
--
-- * 'mlMaxResults'
--
-- * 'mlTags'
--
-- * 'mlCreatedBefore'
mapsList
    :: MapsList
mapsList =
    MapsList
    { _mlCreatedAfter = Nothing
    , _mlCreatorEmail = Nothing
    , _mlRole = Nothing
    , _mlBbox = Nothing
    , _mlProcessingStatus = Nothing
    , _mlModifiedAfter = Nothing
    , _mlModifiedBefore = Nothing
    , _mlPageToken = Nothing
    , _mlProjectId = Nothing
    , _mlSearch = Nothing
    , _mlMaxResults = Nothing
    , _mlTags = Nothing
    , _mlCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
mlCreatedAfter :: Lens' MapsList (Maybe UTCTime)
mlCreatedAfter
  = lens _mlCreatedAfter
      (\ s a -> s{_mlCreatedAfter = a})
      . mapping _DateTime

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
mlCreatorEmail :: Lens' MapsList (Maybe Text)
mlCreatorEmail
  = lens _mlCreatorEmail
      (\ s a -> s{_mlCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
mlRole :: Lens' MapsList (Maybe MapsListRole)
mlRole = lens _mlRole (\ s a -> s{_mlRole = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
mlBbox :: Lens' MapsList (Maybe Text)
mlBbox = lens _mlBbox (\ s a -> s{_mlBbox = a})

mlProcessingStatus :: Lens' MapsList (Maybe MapsListProcessingStatus)
mlProcessingStatus
  = lens _mlProcessingStatus
      (\ s a -> s{_mlProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
mlModifiedAfter :: Lens' MapsList (Maybe UTCTime)
mlModifiedAfter
  = lens _mlModifiedAfter
      (\ s a -> s{_mlModifiedAfter = a})
      . mapping _DateTime

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
mlModifiedBefore :: Lens' MapsList (Maybe UTCTime)
mlModifiedBefore
  = lens _mlModifiedBefore
      (\ s a -> s{_mlModifiedBefore = a})
      . mapping _DateTime

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
mlPageToken :: Lens' MapsList (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
mlProjectId :: Lens' MapsList (Maybe Text)
mlProjectId
  = lens _mlProjectId (\ s a -> s{_mlProjectId = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
mlSearch :: Lens' MapsList (Maybe Text)
mlSearch = lens _mlSearch (\ s a -> s{_mlSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
mlMaxResults :: Lens' MapsList (Maybe Word32)
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})
      . mapping _Coerce

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
mlTags :: Lens' MapsList (Maybe Text)
mlTags = lens _mlTags (\ s a -> s{_mlTags = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
mlCreatedBefore :: Lens' MapsList (Maybe UTCTime)
mlCreatedBefore
  = lens _mlCreatedBefore
      (\ s a -> s{_mlCreatedBefore = a})
      . mapping _DateTime

instance GoogleRequest MapsList where
        type Rs MapsList = MapsListResponse
        requestClient MapsList{..}
          = go _mlCreatedAfter _mlCreatorEmail _mlRole _mlBbox
              _mlProcessingStatus
              _mlModifiedAfter
              _mlModifiedBefore
              _mlPageToken
              _mlProjectId
              _mlSearch
              _mlMaxResults
              _mlTags
              _mlCreatedBefore
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy MapsListResource)
                      mempty
