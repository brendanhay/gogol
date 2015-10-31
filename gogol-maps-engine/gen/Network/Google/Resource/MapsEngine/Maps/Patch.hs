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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Mutate a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.patch@.
module Network.Google.Resource.MapsEngine.Maps.Patch
    (
    -- * REST Resource
      MapsPatchResource

    -- * Creating a Request
    , mapsPatch
    , MapsPatch

    -- * Request Lenses
    , mpPayload
    , mpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.patch@ method which the
-- 'MapsPatch' request conforms to.
type MapsPatchResource =
     "mapsengine" :>
       "v1" :>
         "maps" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Map :> Patch '[JSON] ()

-- | Mutate a map asset.
--
-- /See:/ 'mapsPatch' smart constructor.
data MapsPatch = MapsPatch
    { _mpPayload :: !Map
    , _mpId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpPayload'
--
-- * 'mpId'
mapsPatch
    :: Map -- ^ 'mpPayload'
    -> Text -- ^ 'mpId'
    -> MapsPatch
mapsPatch pMpPayload_ pMpId_ =
    MapsPatch
    { _mpPayload = pMpPayload_
    , _mpId = pMpId_
    }

-- | Multipart request metadata.
mpPayload :: Lens' MapsPatch Map
mpPayload
  = lens _mpPayload (\ s a -> s{_mpPayload = a})

-- | The ID of the map.
mpId :: Lens' MapsPatch Text
mpId = lens _mpId (\ s a -> s{_mpId = a})

instance GoogleRequest MapsPatch where
        type Rs MapsPatch = ()
        type Scopes MapsPatch =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient MapsPatch{..}
          = go _mpId (Just AltJSON) _mpPayload
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy MapsPatchResource)
                      mempty
