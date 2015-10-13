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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a single raster.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersGet@.
module Network.Google.Resource.MapsEngine.Rasters.Get
    (
    -- * REST Resource
      RastersGetResource

    -- * Creating a Request
    , rastersGet'
    , RastersGet'

    -- * Request Lenses
    , rgId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersGet@ method which the
-- 'RastersGet'' request conforms to.
type RastersGetResource =
     "rasters" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] Raster

-- | Return metadata for a single raster.
--
-- /See:/ 'rastersGet'' smart constructor.
newtype RastersGet' = RastersGet'
    { _rgId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgId'
rastersGet'
    :: Text -- ^ 'id'
    -> RastersGet'
rastersGet' pRgId_ =
    RastersGet'
    { _rgId = pRgId_
    }

-- | The ID of the raster.
rgId :: Lens' RastersGet' Text
rgId = lens _rgId (\ s a -> s{_rgId = a})

instance GoogleRequest RastersGet' where
        type Rs RastersGet' = Raster
        requestClient RastersGet'{..}
          = go _rgId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy RastersGetResource)
                      mempty
