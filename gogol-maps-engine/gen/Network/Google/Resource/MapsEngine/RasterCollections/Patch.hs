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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Mutate a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsPatch@.
module Network.Google.Resource.MapsEngine.RasterCollections.Patch
    (
    -- * REST Resource
      RasterCollectionsPatchResource

    -- * Creating a Request
    , rasterCollectionsPatch'
    , RasterCollectionsPatch'

    -- * Request Lenses
    , rcpPayload
    , rcpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsPatch@ method which the
-- 'RasterCollectionsPatch'' request conforms to.
type RasterCollectionsPatchResource =
     "rasterCollections" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] RasterCollection :> Patch '[JSON] ()

-- | Mutate a raster collection asset.
--
-- /See:/ 'rasterCollectionsPatch'' smart constructor.
data RasterCollectionsPatch' = RasterCollectionsPatch'
    { _rcpPayload :: !RasterCollection
    , _rcpId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpPayload'
--
-- * 'rcpId'
rasterCollectionsPatch'
    :: RasterCollection -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RasterCollectionsPatch'
rasterCollectionsPatch' pRcpPayload_ pRcpId_ =
    RasterCollectionsPatch'
    { _rcpPayload = pRcpPayload_
    , _rcpId = pRcpId_
    }

-- | Multipart request metadata.
rcpPayload :: Lens' RasterCollectionsPatch' RasterCollection
rcpPayload
  = lens _rcpPayload (\ s a -> s{_rcpPayload = a})

-- | The ID of the raster collection.
rcpId :: Lens' RasterCollectionsPatch' Text
rcpId = lens _rcpId (\ s a -> s{_rcpId = a})

instance GoogleRequest RasterCollectionsPatch' where
        type Rs RasterCollectionsPatch' = ()
        requestClient RasterCollectionsPatch'{..}
          = go _rcpId (Just AltJSON) _rcpPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsPatchResource)
                      mempty
