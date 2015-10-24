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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all parent ids of the specified raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.parents.list@.
module Network.Google.Resource.MapsEngine.RasterCollections.Parents.List
    (
    -- * REST Resource
      RasterCollectionsParentsListResource

    -- * Creating a Request
    , rasterCollectionsParentsList
    , RasterCollectionsParentsList

    -- * Request Lenses
    , rcplcId
    , rcplcPageToken
    , rcplcMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.parents.list@ method which the
-- 'RasterCollectionsParentsList' request conforms to.
type RasterCollectionsParentsListResource =
     "mapsengine" :>
       "v1" :>
         "rasterCollections" :>
           Capture "id" Text :>
             "parents" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified raster collection.
--
-- /See:/ 'rasterCollectionsParentsList' smart constructor.
data RasterCollectionsParentsList = RasterCollectionsParentsList
    { _rcplcId         :: !Text
    , _rcplcPageToken  :: !(Maybe Text)
    , _rcplcMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsParentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcplcId'
--
-- * 'rcplcPageToken'
--
-- * 'rcplcMaxResults'
rasterCollectionsParentsList
    :: Text -- ^ 'rcplcId'
    -> RasterCollectionsParentsList
rasterCollectionsParentsList pRcplcId_ =
    RasterCollectionsParentsList
    { _rcplcId = pRcplcId_
    , _rcplcPageToken = Nothing
    , _rcplcMaxResults = Nothing
    }

-- | The ID of the raster collection whose parents will be listed.
rcplcId :: Lens' RasterCollectionsParentsList Text
rcplcId = lens _rcplcId (\ s a -> s{_rcplcId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rcplcPageToken :: Lens' RasterCollectionsParentsList (Maybe Text)
rcplcPageToken
  = lens _rcplcPageToken
      (\ s a -> s{_rcplcPageToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
rcplcMaxResults :: Lens' RasterCollectionsParentsList (Maybe Word32)
rcplcMaxResults
  = lens _rcplcMaxResults
      (\ s a -> s{_rcplcMaxResults = a})
      . mapping _Coerce

instance GoogleRequest RasterCollectionsParentsList
         where
        type Rs RasterCollectionsParentsList =
             ParentsListResponse
        requestClient RasterCollectionsParentsList{..}
          = go _rcplcId _rcplcPageToken _rcplcMaxResults
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsParentsListResource)
                      mempty
