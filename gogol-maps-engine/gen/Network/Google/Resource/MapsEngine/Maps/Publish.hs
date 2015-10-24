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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publish a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.publish@.
module Network.Google.Resource.MapsEngine.Maps.Publish
    (
    -- * REST Resource
      MapsPublishResource

    -- * Creating a Request
    , mapsPublish
    , MapsPublish

    -- * Request Lenses
    , mapForce
    , mapId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.publish@ method which the
-- 'MapsPublish' request conforms to.
type MapsPublishResource =
     "mapsengine" :>
       "v1" :>
         "maps" :>
           Capture "id" Text :>
             "publish" :>
               QueryParam "force" Bool :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] PublishResponse

-- | Publish a map asset.
--
-- /See:/ 'mapsPublish' smart constructor.
data MapsPublish = MapsPublish
    { _mapForce :: !(Maybe Bool)
    , _mapId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mapForce'
--
-- * 'mapId'
mapsPublish
    :: Text -- ^ 'mapId'
    -> MapsPublish
mapsPublish pMapId_ =
    MapsPublish
    { _mapForce = Nothing
    , _mapId = pMapId_
    }

-- | If set to true, the API will allow publication of the map even if it\'s
-- out of date. If false, the map must have a processingStatus of complete
-- before publishing.
mapForce :: Lens' MapsPublish (Maybe Bool)
mapForce = lens _mapForce (\ s a -> s{_mapForce = a})

-- | The ID of the map.
mapId :: Lens' MapsPublish Text
mapId = lens _mapId (\ s a -> s{_mapId = a})

instance GoogleRequest MapsPublish where
        type Rs MapsPublish = PublishResponse
        requestClient MapsPublish{..}
          = go _mapId _mapForce (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy MapsPublishResource)
                      mempty
