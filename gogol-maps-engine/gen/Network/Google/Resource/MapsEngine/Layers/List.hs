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
-- Module      : Network.Google.Resource.MapsEngine.Layers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all layers readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.list@.
module Network.Google.Resource.MapsEngine.Layers.List
    (
    -- * REST Resource
      LayersListResource

    -- * Creating a Request
    , layersList
    , LayersList

    -- * Request Lenses
    , llCreatedAfter
    , llCreatorEmail
    , llRole
    , llBbox
    , llProcessingStatus
    , llModifiedAfter
    , llModifiedBefore
    , llPageToken
    , llProjectId
    , llSearch
    , llMaxResults
    , llTags
    , llCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.list@ method which the
-- 'LayersList' request conforms to.
type LayersListResource =
     "layers" :>
       QueryParam "createdAfter" DateTime' :>
         QueryParam "creatorEmail" Text :>
           QueryParam "role" LayersListRole :>
             QueryParam "bbox" Text :>
               QueryParam "processingStatus"
                 LayersListProcessingStatus
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
                                   Get '[JSON] LayersListResponse

-- | Return all layers readable by the current user.
--
-- /See:/ 'layersList' smart constructor.
data LayersList = LayersList
    { _llCreatedAfter     :: !(Maybe DateTime')
    , _llCreatorEmail     :: !(Maybe Text)
    , _llRole             :: !(Maybe LayersListRole)
    , _llBbox             :: !(Maybe Text)
    , _llProcessingStatus :: !(Maybe LayersListProcessingStatus)
    , _llModifiedAfter    :: !(Maybe DateTime')
    , _llModifiedBefore   :: !(Maybe DateTime')
    , _llPageToken        :: !(Maybe Text)
    , _llProjectId        :: !(Maybe Text)
    , _llSearch           :: !(Maybe Text)
    , _llMaxResults       :: !(Maybe Word32)
    , _llTags             :: !(Maybe Text)
    , _llCreatedBefore    :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llCreatedAfter'
--
-- * 'llCreatorEmail'
--
-- * 'llRole'
--
-- * 'llBbox'
--
-- * 'llProcessingStatus'
--
-- * 'llModifiedAfter'
--
-- * 'llModifiedBefore'
--
-- * 'llPageToken'
--
-- * 'llProjectId'
--
-- * 'llSearch'
--
-- * 'llMaxResults'
--
-- * 'llTags'
--
-- * 'llCreatedBefore'
layersList
    :: LayersList
layersList =
    LayersList
    { _llCreatedAfter = Nothing
    , _llCreatorEmail = Nothing
    , _llRole = Nothing
    , _llBbox = Nothing
    , _llProcessingStatus = Nothing
    , _llModifiedAfter = Nothing
    , _llModifiedBefore = Nothing
    , _llPageToken = Nothing
    , _llProjectId = Nothing
    , _llSearch = Nothing
    , _llMaxResults = Nothing
    , _llTags = Nothing
    , _llCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
llCreatedAfter :: Lens' LayersList (Maybe UTCTime)
llCreatedAfter
  = lens _llCreatedAfter
      (\ s a -> s{_llCreatedAfter = a})
      . mapping _DateTime

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
llCreatorEmail :: Lens' LayersList (Maybe Text)
llCreatorEmail
  = lens _llCreatorEmail
      (\ s a -> s{_llCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
llRole :: Lens' LayersList (Maybe LayersListRole)
llRole = lens _llRole (\ s a -> s{_llRole = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
llBbox :: Lens' LayersList (Maybe Text)
llBbox = lens _llBbox (\ s a -> s{_llBbox = a})

llProcessingStatus :: Lens' LayersList (Maybe LayersListProcessingStatus)
llProcessingStatus
  = lens _llProcessingStatus
      (\ s a -> s{_llProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
llModifiedAfter :: Lens' LayersList (Maybe UTCTime)
llModifiedAfter
  = lens _llModifiedAfter
      (\ s a -> s{_llModifiedAfter = a})
      . mapping _DateTime

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
llModifiedBefore :: Lens' LayersList (Maybe UTCTime)
llModifiedBefore
  = lens _llModifiedBefore
      (\ s a -> s{_llModifiedBefore = a})
      . mapping _DateTime

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
llPageToken :: Lens' LayersList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
llProjectId :: Lens' LayersList (Maybe Text)
llProjectId
  = lens _llProjectId (\ s a -> s{_llProjectId = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
llSearch :: Lens' LayersList (Maybe Text)
llSearch = lens _llSearch (\ s a -> s{_llSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
llMaxResults :: Lens' LayersList (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
llTags :: Lens' LayersList (Maybe Text)
llTags = lens _llTags (\ s a -> s{_llTags = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
llCreatedBefore :: Lens' LayersList (Maybe UTCTime)
llCreatedBefore
  = lens _llCreatedBefore
      (\ s a -> s{_llCreatedBefore = a})
      . mapping _DateTime

instance GoogleRequest LayersList where
        type Rs LayersList = LayersListResponse
        requestClient LayersList{..}
          = go _llCreatedAfter _llCreatorEmail _llRole _llBbox
              _llProcessingStatus
              _llModifiedAfter
              _llModifiedBefore
              _llPageToken
              _llProjectId
              _llSearch
              _llMaxResults
              _llTags
              _llCreatedBefore
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy LayersListResource)
                      mempty
