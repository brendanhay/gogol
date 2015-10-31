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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Mutate a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.patch@.
module Network.Google.Resource.MapsEngine.Rasters.Patch
    (
    -- * REST Resource
      RastersPatchResource

    -- * Creating a Request
    , rastersPatch
    , RastersPatch

    -- * Request Lenses
    , rppPayload
    , rppId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.patch@ method which the
-- 'RastersPatch' request conforms to.
type RastersPatchResource =
     "mapsengine" :>
       "v1" :>
         "rasters" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Raster :> Patch '[JSON] ()

-- | Mutate a raster asset.
--
-- /See:/ 'rastersPatch' smart constructor.
data RastersPatch = RastersPatch
    { _rppPayload :: !Raster
    , _rppId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppPayload'
--
-- * 'rppId'
rastersPatch
    :: Raster -- ^ 'rppPayload'
    -> Text -- ^ 'rppId'
    -> RastersPatch
rastersPatch pRppPayload_ pRppId_ =
    RastersPatch
    { _rppPayload = pRppPayload_
    , _rppId = pRppId_
    }

-- | Multipart request metadata.
rppPayload :: Lens' RastersPatch Raster
rppPayload
  = lens _rppPayload (\ s a -> s{_rppPayload = a})

-- | The ID of the raster.
rppId :: Lens' RastersPatch Text
rppId = lens _rppId (\ s a -> s{_rppId = a})

instance GoogleRequest RastersPatch where
        type Rs RastersPatch = ()
        type Scopes RastersPatch =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient RastersPatch{..}
          = go _rppId (Just AltJSON) _rppPayload
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy RastersPatchResource)
                      mempty
