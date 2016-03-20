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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.create@.
module Network.Google.Resource.MapsEngine.Maps.Create
    (
    -- * REST Resource
      MapsCreateResource

    -- * Creating a Request
    , mapsCreate
    , MapsCreate

    -- * Request Lenses
    , mcPayload
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.create@ method which the
-- 'MapsCreate' request conforms to.
type MapsCreateResource =
     "mapsengine" :>
       "v1" :>
         "maps" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Map :> Post '[JSON] Map

-- | Create a map asset.
--
-- /See:/ 'mapsCreate' smart constructor.
newtype MapsCreate = MapsCreate
    { _mcPayload :: Map
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcPayload'
mapsCreate
    :: Map -- ^ 'mcPayload'
    -> MapsCreate
mapsCreate pMcPayload_ =
    MapsCreate
    { _mcPayload = pMcPayload_
    }

-- | Multipart request metadata.
mcPayload :: Lens' MapsCreate Map
mcPayload
  = lens _mcPayload (\ s a -> s{_mcPayload = a})

instance GoogleRequest MapsCreate where
        type Rs MapsCreate = Map
        requestClient MapsCreate{..}
          = go (Just AltJSON) _mcPayload mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy MapsCreateResource)
                      mempty
