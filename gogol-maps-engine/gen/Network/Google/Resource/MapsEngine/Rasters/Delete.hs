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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a raster.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.delete@.
module Network.Google.Resource.MapsEngine.Rasters.Delete
    (
    -- * REST Resource
      RastersDeleteResource

    -- * Creating a Request
    , rastersDelete
    , RastersDelete

    -- * Request Lenses
    , rdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.delete@ method which the
-- 'RastersDelete' request conforms to.
type RastersDeleteResource =
     "mapsengine" :>
       "v1" :>
         "rasters" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a raster.
--
-- /See:/ 'rastersDelete' smart constructor.
newtype RastersDelete = RastersDelete
    { _rdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdId'
rastersDelete
    :: Text -- ^ 'rdId'
    -> RastersDelete
rastersDelete pRdId_ =
    RastersDelete
    { _rdId = pRdId_
    }

-- | The ID of the raster. Only the raster creator or project owner are
-- permitted to delete. If the raster is included in a layer or mosaic, the
-- request will fail. Remove it from all parents prior to deleting.
rdId :: Lens' RastersDelete Text
rdId = lens _rdId (\ s a -> s{_rdId = a})

instance GoogleRequest RastersDelete where
        type Rs RastersDelete = ()
        requestClient RastersDelete{..}
          = go _rdId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy RastersDeleteResource)
                      mempty
