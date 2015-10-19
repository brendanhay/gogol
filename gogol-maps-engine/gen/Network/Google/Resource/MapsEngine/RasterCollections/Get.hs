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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return metadata for a particular raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsGet@.
module Network.Google.Resource.MapsEngine.RasterCollections.Get
    (
    -- * REST Resource
      RasterCollectionsGetResource

    -- * Creating a Request
    , rasterCollectionsGet'
    , RasterCollectionsGet'

    -- * Request Lenses
    , rcgId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsGet@ method which the
-- 'RasterCollectionsGet'' request conforms to.
type RasterCollectionsGetResource =
     "rasterCollections" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :>
           Get '[JSON] RasterCollection

-- | Return metadata for a particular raster collection.
--
-- /See:/ 'rasterCollectionsGet'' smart constructor.
newtype RasterCollectionsGet' = RasterCollectionsGet'
    { _rcgId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcgId'
rasterCollectionsGet'
    :: Text -- ^ 'id'
    -> RasterCollectionsGet'
rasterCollectionsGet' pRcgId_ =
    RasterCollectionsGet'
    { _rcgId = pRcgId_
    }

-- | The ID of the raster collection.
rcgId :: Lens' RasterCollectionsGet' Text
rcgId = lens _rcgId (\ s a -> s{_rcgId = a})

instance GoogleRequest RasterCollectionsGet' where
        type Rs RasterCollectionsGet' = RasterCollection
        requestClient RasterCollectionsGet'{..}
          = go _rcgId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsGetResource)
                      mempty
