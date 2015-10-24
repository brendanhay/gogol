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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.delete@.
module Network.Google.Resource.MapsEngine.Maps.Delete
    (
    -- * REST Resource
      MapsDeleteResource

    -- * Creating a Request
    , mapsDelete
    , MapsDelete

    -- * Request Lenses
    , mdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.delete@ method which the
-- 'MapsDelete' request conforms to.
type MapsDeleteResource =
     "mapsengine" :>
       "v1" :>
         "maps" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a map.
--
-- /See:/ 'mapsDelete' smart constructor.
newtype MapsDelete = MapsDelete
    { _mdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdId'
mapsDelete
    :: Text -- ^ 'mdId'
    -> MapsDelete
mapsDelete pMdId_ =
    MapsDelete
    { _mdId = pMdId_
    }

-- | The ID of the map. Only the map creator or project owner are permitted
-- to delete. If the map is published the request will fail. Unpublish the
-- map prior to deleting.
mdId :: Lens' MapsDelete Text
mdId = lens _mdId (\ s a -> s{_mdId = a})

instance GoogleRequest MapsDelete where
        type Rs MapsDelete = ()
        requestClient MapsDelete{..}
          = go _mdId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy MapsDeleteResource)
                      mempty
