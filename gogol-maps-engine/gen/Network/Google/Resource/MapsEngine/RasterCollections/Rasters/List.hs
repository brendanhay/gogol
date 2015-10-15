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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Rasters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all rasters within a raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsRastersList@.
module Network.Google.Resource.MapsEngine.RasterCollections.Rasters.List
    (
    -- * REST Resource
      RasterCollectionsRastersListResource

    -- * Creating a Request
    , rasterCollectionsRastersList'
    , RasterCollectionsRastersList'

    -- * Request Lenses
    , rcrlCreatedAfter
    , rcrlCreatorEmail
    , rcrlRole
    , rcrlBbox
    , rcrlId
    , rcrlModifiedAfter
    , rcrlModifiedBefore
    , rcrlPageToken
    , rcrlSearch
    , rcrlMaxResults
    , rcrlTags
    , rcrlCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsRastersList@ method which the
-- 'RasterCollectionsRastersList'' request conforms to.
type RasterCollectionsRastersListResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "rasters" :>
           QueryParam "createdAfter" DateTime' :>
             QueryParam "creatorEmail" Text :>
               QueryParam "role" RasterCollectionsRastersListRole :>
                 QueryParam "bbox" Text :>
                   QueryParam "modifiedAfter" DateTime' :>
                     QueryParam "modifiedBefore" DateTime' :>
                       QueryParam "pageToken" Text :>
                         QueryParam "search" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "tags" Text :>
                               QueryParam "createdBefore" DateTime' :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     RasterCollectionsRastersListResponse

-- | Return all rasters within a raster collection.
--
-- /See:/ 'rasterCollectionsRastersList'' smart constructor.
data RasterCollectionsRastersList' = RasterCollectionsRastersList'
    { _rcrlCreatedAfter   :: !(Maybe DateTime')
    , _rcrlCreatorEmail   :: !(Maybe Text)
    , _rcrlRole           :: !(Maybe RasterCollectionsRastersListRole)
    , _rcrlBbox           :: !(Maybe Text)
    , _rcrlId             :: !Text
    , _rcrlModifiedAfter  :: !(Maybe DateTime')
    , _rcrlModifiedBefore :: !(Maybe DateTime')
    , _rcrlPageToken      :: !(Maybe Text)
    , _rcrlSearch         :: !(Maybe Text)
    , _rcrlMaxResults     :: !(Maybe Word32)
    , _rcrlTags           :: !(Maybe Text)
    , _rcrlCreatedBefore  :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrlCreatedAfter'
--
-- * 'rcrlCreatorEmail'
--
-- * 'rcrlRole'
--
-- * 'rcrlBbox'
--
-- * 'rcrlId'
--
-- * 'rcrlModifiedAfter'
--
-- * 'rcrlModifiedBefore'
--
-- * 'rcrlPageToken'
--
-- * 'rcrlSearch'
--
-- * 'rcrlMaxResults'
--
-- * 'rcrlTags'
--
-- * 'rcrlCreatedBefore'
rasterCollectionsRastersList'
    :: Text -- ^ 'id'
    -> RasterCollectionsRastersList'
rasterCollectionsRastersList' pRcrlId_ =
    RasterCollectionsRastersList'
    { _rcrlCreatedAfter = Nothing
    , _rcrlCreatorEmail = Nothing
    , _rcrlRole = Nothing
    , _rcrlBbox = Nothing
    , _rcrlId = pRcrlId_
    , _rcrlModifiedAfter = Nothing
    , _rcrlModifiedBefore = Nothing
    , _rcrlPageToken = Nothing
    , _rcrlSearch = Nothing
    , _rcrlMaxResults = Nothing
    , _rcrlTags = Nothing
    , _rcrlCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
rcrlCreatedAfter :: Lens' RasterCollectionsRastersList' (Maybe UTCTime)
rcrlCreatedAfter
  = lens _rcrlCreatedAfter
      (\ s a -> s{_rcrlCreatedAfter = a})
      . mapping _DateTime

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
rcrlCreatorEmail :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlCreatorEmail
  = lens _rcrlCreatorEmail
      (\ s a -> s{_rcrlCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
rcrlRole :: Lens' RasterCollectionsRastersList' (Maybe RasterCollectionsRastersListRole)
rcrlRole = lens _rcrlRole (\ s a -> s{_rcrlRole = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
rcrlBbox :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlBbox = lens _rcrlBbox (\ s a -> s{_rcrlBbox = a})

-- | The ID of the raster collection to which these rasters belong.
rcrlId :: Lens' RasterCollectionsRastersList' Text
rcrlId = lens _rcrlId (\ s a -> s{_rcrlId = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
rcrlModifiedAfter :: Lens' RasterCollectionsRastersList' (Maybe UTCTime)
rcrlModifiedAfter
  = lens _rcrlModifiedAfter
      (\ s a -> s{_rcrlModifiedAfter = a})
      . mapping _DateTime

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
rcrlModifiedBefore :: Lens' RasterCollectionsRastersList' (Maybe UTCTime)
rcrlModifiedBefore
  = lens _rcrlModifiedBefore
      (\ s a -> s{_rcrlModifiedBefore = a})
      . mapping _DateTime

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rcrlPageToken :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlPageToken
  = lens _rcrlPageToken
      (\ s a -> s{_rcrlPageToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
rcrlSearch :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlSearch
  = lens _rcrlSearch (\ s a -> s{_rcrlSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
rcrlMaxResults :: Lens' RasterCollectionsRastersList' (Maybe Word32)
rcrlMaxResults
  = lens _rcrlMaxResults
      (\ s a -> s{_rcrlMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
rcrlTags :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlTags = lens _rcrlTags (\ s a -> s{_rcrlTags = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
rcrlCreatedBefore :: Lens' RasterCollectionsRastersList' (Maybe UTCTime)
rcrlCreatedBefore
  = lens _rcrlCreatedBefore
      (\ s a -> s{_rcrlCreatedBefore = a})
      . mapping _DateTime

instance GoogleRequest RasterCollectionsRastersList'
         where
        type Rs RasterCollectionsRastersList' =
             RasterCollectionsRastersListResponse
        requestClient RasterCollectionsRastersList'{..}
          = go _rcrlId _rcrlCreatedAfter _rcrlCreatorEmail
              _rcrlRole
              _rcrlBbox
              _rcrlModifiedAfter
              _rcrlModifiedBefore
              _rcrlPageToken
              _rcrlSearch
              _rcrlMaxResults
              _rcrlTags
              _rcrlCreatedBefore
              (Just AltJSON)
              mapsEngine
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsRastersListResource)
                      mempty
