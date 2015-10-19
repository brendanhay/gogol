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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all rasters readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.list@.
module Network.Google.Resource.MapsEngine.Rasters.List
    (
    -- * REST Resource
      RastersListResource

    -- * Creating a Request
    , rastersList'
    , RastersList'

    -- * Request Lenses
    , rlCreatedAfter
    , rlCreatorEmail
    , rlRole
    , rlBbox
    , rlProcessingStatus
    , rlModifiedAfter
    , rlModifiedBefore
    , rlPageToken
    , rlProjectId
    , rlSearch
    , rlMaxResults
    , rlTags
    , rlCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.list@ method which the
-- 'RastersList'' request conforms to.
type RastersListResource =
     "rasters" :>
       QueryParam "projectId" Text :>
         QueryParam "createdAfter" DateTime' :>
           QueryParam "creatorEmail" Text :>
             QueryParam "role" RastersListRole :>
               QueryParam "bbox" Text :>
                 QueryParam "processingStatus"
                   RastersListProcessingStatus
                   :>
                   QueryParam "modifiedAfter" DateTime' :>
                     QueryParam "modifiedBefore" DateTime' :>
                       QueryParam "pageToken" Text :>
                         QueryParam "search" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "tags" Text :>
                               QueryParam "createdBefore" DateTime' :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] RastersListResponse

-- | Return all rasters readable by the current user.
--
-- /See:/ 'rastersList'' smart constructor.
data RastersList' = RastersList'
    { _rlCreatedAfter     :: !(Maybe DateTime')
    , _rlCreatorEmail     :: !(Maybe Text)
    , _rlRole             :: !(Maybe RastersListRole)
    , _rlBbox             :: !(Maybe Text)
    , _rlProcessingStatus :: !(Maybe RastersListProcessingStatus)
    , _rlModifiedAfter    :: !(Maybe DateTime')
    , _rlModifiedBefore   :: !(Maybe DateTime')
    , _rlPageToken        :: !(Maybe Text)
    , _rlProjectId        :: !Text
    , _rlSearch           :: !(Maybe Text)
    , _rlMaxResults       :: !(Maybe Word32)
    , _rlTags             :: !(Maybe Text)
    , _rlCreatedBefore    :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlCreatedAfter'
--
-- * 'rlCreatorEmail'
--
-- * 'rlRole'
--
-- * 'rlBbox'
--
-- * 'rlProcessingStatus'
--
-- * 'rlModifiedAfter'
--
-- * 'rlModifiedBefore'
--
-- * 'rlPageToken'
--
-- * 'rlProjectId'
--
-- * 'rlSearch'
--
-- * 'rlMaxResults'
--
-- * 'rlTags'
--
-- * 'rlCreatedBefore'
rastersList'
    :: Text -- ^ 'rlProjectId'
    -> RastersList'
rastersList' pRlProjectId_ =
    RastersList'
    { _rlCreatedAfter = Nothing
    , _rlCreatorEmail = Nothing
    , _rlRole = Nothing
    , _rlBbox = Nothing
    , _rlProcessingStatus = Nothing
    , _rlModifiedAfter = Nothing
    , _rlModifiedBefore = Nothing
    , _rlPageToken = Nothing
    , _rlProjectId = pRlProjectId_
    , _rlSearch = Nothing
    , _rlMaxResults = Nothing
    , _rlTags = Nothing
    , _rlCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
rlCreatedAfter :: Lens' RastersList' (Maybe UTCTime)
rlCreatedAfter
  = lens _rlCreatedAfter
      (\ s a -> s{_rlCreatedAfter = a})
      . mapping _DateTime

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
rlCreatorEmail :: Lens' RastersList' (Maybe Text)
rlCreatorEmail
  = lens _rlCreatorEmail
      (\ s a -> s{_rlCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
rlRole :: Lens' RastersList' (Maybe RastersListRole)
rlRole = lens _rlRole (\ s a -> s{_rlRole = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
rlBbox :: Lens' RastersList' (Maybe Text)
rlBbox = lens _rlBbox (\ s a -> s{_rlBbox = a})

rlProcessingStatus :: Lens' RastersList' (Maybe RastersListProcessingStatus)
rlProcessingStatus
  = lens _rlProcessingStatus
      (\ s a -> s{_rlProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
rlModifiedAfter :: Lens' RastersList' (Maybe UTCTime)
rlModifiedAfter
  = lens _rlModifiedAfter
      (\ s a -> s{_rlModifiedAfter = a})
      . mapping _DateTime

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
rlModifiedBefore :: Lens' RastersList' (Maybe UTCTime)
rlModifiedBefore
  = lens _rlModifiedBefore
      (\ s a -> s{_rlModifiedBefore = a})
      . mapping _DateTime

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rlPageToken :: Lens' RastersList' (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
rlProjectId :: Lens' RastersList' Text
rlProjectId
  = lens _rlProjectId (\ s a -> s{_rlProjectId = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
rlSearch :: Lens' RastersList' (Maybe Text)
rlSearch = lens _rlSearch (\ s a -> s{_rlSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
rlMaxResults :: Lens' RastersList' (Maybe Word32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
rlTags :: Lens' RastersList' (Maybe Text)
rlTags = lens _rlTags (\ s a -> s{_rlTags = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
rlCreatedBefore :: Lens' RastersList' (Maybe UTCTime)
rlCreatedBefore
  = lens _rlCreatedBefore
      (\ s a -> s{_rlCreatedBefore = a})
      . mapping _DateTime

instance GoogleRequest RastersList' where
        type Rs RastersList' = RastersListResponse
        requestClient RastersList'{..}
          = go (Just _rlProjectId) _rlCreatedAfter
              _rlCreatorEmail
              _rlRole
              _rlBbox
              _rlProcessingStatus
              _rlModifiedAfter
              _rlModifiedBefore
              _rlPageToken
              _rlSearch
              _rlMaxResults
              _rlTags
              _rlCreatedBefore
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy RastersListResource)
                      mempty
