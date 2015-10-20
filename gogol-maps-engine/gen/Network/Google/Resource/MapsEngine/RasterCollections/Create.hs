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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.create@.
module Network.Google.Resource.MapsEngine.RasterCollections.Create
    (
    -- * REST Resource
      RasterCollectionsCreateResource

    -- * Creating a Request
    , rasterCollectionsCreate
    , RasterCollectionsCreate

    -- * Request Lenses
    , rccPayload
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.create@ method which the
-- 'RasterCollectionsCreate' request conforms to.
type RasterCollectionsCreateResource =
     "rasterCollections" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] RasterCollection :>
           Post '[JSON] RasterCollection

-- | Create a raster collection asset.
--
-- /See:/ 'rasterCollectionsCreate' smart constructor.
newtype RasterCollectionsCreate = RasterCollectionsCreate
    { _rccPayload :: RasterCollection
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccPayload'
rasterCollectionsCreate
    :: RasterCollection -- ^ 'rccPayload'
    -> RasterCollectionsCreate
rasterCollectionsCreate pRccPayload_ =
    RasterCollectionsCreate
    { _rccPayload = pRccPayload_
    }

-- | Multipart request metadata.
rccPayload :: Lens' RasterCollectionsCreate RasterCollection
rccPayload
  = lens _rccPayload (\ s a -> s{_rccPayload = a})

instance GoogleRequest RasterCollectionsCreate where
        type Rs RasterCollectionsCreate = RasterCollection
        requestClient RasterCollectionsCreate{..}
          = go (Just AltJSON) _rccPayload mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsCreateResource)
                      mempty
