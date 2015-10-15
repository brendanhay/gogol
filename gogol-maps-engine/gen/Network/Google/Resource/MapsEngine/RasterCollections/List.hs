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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all raster collections readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsList@.
module Network.Google.Resource.MapsEngine.RasterCollections.List
    (
    -- * REST Resource
      RasterCollectionsListResource

    -- * Creating a Request
    , rasterCollectionsList'
    , RasterCollectionsList'

    -- * Request Lenses
    , rclCreatedAfter
    , rclCreatorEmail
    , rclRole
    , rclBbox
    , rclProcessingStatus
    , rclModifiedAfter
    , rclModifiedBefore
    , rclPageToken
    , rclProjectId
    , rclSearch
    , rclMaxResults
    , rclTags
    , rclCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsList@ method which the
-- 'RasterCollectionsList'' request conforms to.
type RasterCollectionsListResource =
     "rasterCollections" :>
       QueryParam "createdAfter" DateTime' :>
         QueryParam "creatorEmail" Text :>
           QueryParam "role" RasterCollectionsListRole :>
             QueryParam "bbox" Text :>
               QueryParam "processingStatus"
                 RasterCollectionsListProcessingStatus
                 :>
                 QueryParam "modifiedAfter" DateTime' :>
                   QueryParam "modifiedBefore" DateTime' :>
                     QueryParam "pageToken" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "search" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "tags" Text :>
                               QueryParam "createdBefore" DateTime' :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] RasterCollectionsListResponse

-- | Return all raster collections readable by the current user.
--
-- /See:/ 'rasterCollectionsList'' smart constructor.
data RasterCollectionsList' = RasterCollectionsList'
    { _rclCreatedAfter     :: !(Maybe DateTime')
    , _rclCreatorEmail     :: !(Maybe Text)
    , _rclRole             :: !(Maybe RasterCollectionsListRole)
    , _rclBbox             :: !(Maybe Text)
    , _rclProcessingStatus :: !(Maybe RasterCollectionsListProcessingStatus)
    , _rclModifiedAfter    :: !(Maybe DateTime')
    , _rclModifiedBefore   :: !(Maybe DateTime')
    , _rclPageToken        :: !(Maybe Text)
    , _rclProjectId        :: !(Maybe Text)
    , _rclSearch           :: !(Maybe Text)
    , _rclMaxResults       :: !(Maybe Word32)
    , _rclTags             :: !(Maybe Text)
    , _rclCreatedBefore    :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rclCreatedAfter'
--
-- * 'rclCreatorEmail'
--
-- * 'rclRole'
--
-- * 'rclBbox'
--
-- * 'rclProcessingStatus'
--
-- * 'rclModifiedAfter'
--
-- * 'rclModifiedBefore'
--
-- * 'rclPageToken'
--
-- * 'rclProjectId'
--
-- * 'rclSearch'
--
-- * 'rclMaxResults'
--
-- * 'rclTags'
--
-- * 'rclCreatedBefore'
rasterCollectionsList'
    :: RasterCollectionsList'
rasterCollectionsList' =
    RasterCollectionsList'
    { _rclCreatedAfter = Nothing
    , _rclCreatorEmail = Nothing
    , _rclRole = Nothing
    , _rclBbox = Nothing
    , _rclProcessingStatus = Nothing
    , _rclModifiedAfter = Nothing
    , _rclModifiedBefore = Nothing
    , _rclPageToken = Nothing
    , _rclProjectId = Nothing
    , _rclSearch = Nothing
    , _rclMaxResults = Nothing
    , _rclTags = Nothing
    , _rclCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
rclCreatedAfter :: Lens' RasterCollectionsList' (Maybe UTCTime)
rclCreatedAfter
  = lens _rclCreatedAfter
      (\ s a -> s{_rclCreatedAfter = a})
      . mapping _DateTime

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
rclCreatorEmail :: Lens' RasterCollectionsList' (Maybe Text)
rclCreatorEmail
  = lens _rclCreatorEmail
      (\ s a -> s{_rclCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
rclRole :: Lens' RasterCollectionsList' (Maybe RasterCollectionsListRole)
rclRole = lens _rclRole (\ s a -> s{_rclRole = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
rclBbox :: Lens' RasterCollectionsList' (Maybe Text)
rclBbox = lens _rclBbox (\ s a -> s{_rclBbox = a})

rclProcessingStatus :: Lens' RasterCollectionsList' (Maybe RasterCollectionsListProcessingStatus)
rclProcessingStatus
  = lens _rclProcessingStatus
      (\ s a -> s{_rclProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
rclModifiedAfter :: Lens' RasterCollectionsList' (Maybe UTCTime)
rclModifiedAfter
  = lens _rclModifiedAfter
      (\ s a -> s{_rclModifiedAfter = a})
      . mapping _DateTime

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
rclModifiedBefore :: Lens' RasterCollectionsList' (Maybe UTCTime)
rclModifiedBefore
  = lens _rclModifiedBefore
      (\ s a -> s{_rclModifiedBefore = a})
      . mapping _DateTime

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rclPageToken :: Lens' RasterCollectionsList' (Maybe Text)
rclPageToken
  = lens _rclPageToken (\ s a -> s{_rclPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
rclProjectId :: Lens' RasterCollectionsList' (Maybe Text)
rclProjectId
  = lens _rclProjectId (\ s a -> s{_rclProjectId = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
rclSearch :: Lens' RasterCollectionsList' (Maybe Text)
rclSearch
  = lens _rclSearch (\ s a -> s{_rclSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
rclMaxResults :: Lens' RasterCollectionsList' (Maybe Word32)
rclMaxResults
  = lens _rclMaxResults
      (\ s a -> s{_rclMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
rclTags :: Lens' RasterCollectionsList' (Maybe Text)
rclTags = lens _rclTags (\ s a -> s{_rclTags = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
rclCreatedBefore :: Lens' RasterCollectionsList' (Maybe UTCTime)
rclCreatedBefore
  = lens _rclCreatedBefore
      (\ s a -> s{_rclCreatedBefore = a})
      . mapping _DateTime

instance GoogleRequest RasterCollectionsList' where
        type Rs RasterCollectionsList' =
             RasterCollectionsListResponse
        requestClient RasterCollectionsList'{..}
          = go _rclCreatedAfter _rclCreatorEmail _rclRole
              _rclBbox
              _rclProcessingStatus
              _rclModifiedAfter
              _rclModifiedBefore
              _rclPageToken
              _rclProjectId
              _rclSearch
              _rclMaxResults
              _rclTags
              _rclCreatedBefore
              (Just AltJSON)
              mapsEngine
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsListResource)
                      mempty
