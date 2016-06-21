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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Process
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Process a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.process@.
module Network.Google.Resource.MapsEngine.Rasters.Process
    (
    -- * REST Resource
      RastersProcessResource

    -- * Creating a Request
    , rastersProcess
    , RastersProcess

    -- * Request Lenses
    , rpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.process@ method which the
-- 'RastersProcess' request conforms to.
type RastersProcessResource =
     "mapsengine" :>
       "v1" :>
         "rasters" :>
           Capture "id" Text :>
             "process" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] ProcessResponse

-- | Process a raster asset.
--
-- /See:/ 'rastersProcess' smart constructor.
newtype RastersProcess = RastersProcess'
    { _rpId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersProcess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpId'
rastersProcess
    :: Text -- ^ 'rpId'
    -> RastersProcess
rastersProcess pRpId_ =
    RastersProcess'
    { _rpId = pRpId_
    }

-- | The ID of the raster.
rpId :: Lens' RastersProcess Text
rpId = lens _rpId (\ s a -> s{_rpId = a})

instance GoogleRequest RastersProcess where
        type Rs RastersProcess = ProcessResponse
        type Scopes RastersProcess =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient RastersProcess'{..}
          = go _rpId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy RastersProcessResource)
                      mempty
