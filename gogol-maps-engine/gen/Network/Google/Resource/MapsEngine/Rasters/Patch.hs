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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersPatch@.
module Network.Google.Resource.MapsEngine.Rasters.Patch
    (
    -- * REST Resource
      RastersPatchResource

    -- * Creating a Request
    , rastersPatch'
    , RastersPatch'

    -- * Request Lenses
    , rPayload
    , rId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersPatch@ method which the
-- 'RastersPatch'' request conforms to.
type RastersPatchResource =
     "rasters" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Raster :> Patch '[JSON] ()

-- | Mutate a raster asset.
--
-- /See:/ 'rastersPatch'' smart constructor.
data RastersPatch' = RastersPatch'
    { _rPayload :: !Raster
    , _rId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rPayload'
--
-- * 'rId'
rastersPatch'
    :: Raster -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RastersPatch'
rastersPatch' pRPayload_ pRId_ =
    RastersPatch'
    { _rPayload = pRPayload_
    , _rId = pRId_
    }

-- | Multipart request metadata.
rPayload :: Lens' RastersPatch' Raster
rPayload = lens _rPayload (\ s a -> s{_rPayload = a})

-- | The ID of the raster.
rId :: Lens' RastersPatch' Text
rId = lens _rId (\ s a -> s{_rId = a})

instance GoogleRequest RastersPatch' where
        type Rs RastersPatch' = ()
        requestClient RastersPatch'{..}
          = go _rId (Just AltJSON) _rPayload mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy RastersPatchResource)
                      mempty
