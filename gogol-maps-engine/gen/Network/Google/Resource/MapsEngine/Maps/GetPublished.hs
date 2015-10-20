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
-- Module      : Network.Google.Resource.MapsEngine.Maps.GetPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return the published metadata for a particular map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.getPublished@.
module Network.Google.Resource.MapsEngine.Maps.GetPublished
    (
    -- * REST Resource
      MapsGetPublishedResource

    -- * Creating a Request
    , mapsGetPublished
    , MapsGetPublished

    -- * Request Lenses
    , mgpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.getPublished@ method which the
-- 'MapsGetPublished' request conforms to.
type MapsGetPublishedResource =
     "maps" :>
       Capture "id" Text :>
         "published" :>
           QueryParam "alt" AltJSON :> Get '[JSON] PublishedMap

-- | Return the published metadata for a particular map.
--
-- /See:/ 'mapsGetPublished' smart constructor.
newtype MapsGetPublished = MapsGetPublished
    { _mgpId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsGetPublished' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgpId'
mapsGetPublished
    :: Text -- ^ 'mgpId'
    -> MapsGetPublished
mapsGetPublished pMgpId_ =
    MapsGetPublished
    { _mgpId = pMgpId_
    }

-- | The ID of the map.
mgpId :: Lens' MapsGetPublished Text
mgpId = lens _mgpId (\ s a -> s{_mgpId = a})

instance GoogleRequest MapsGetPublished where
        type Rs MapsGetPublished = PublishedMap
        requestClient MapsGetPublished{..}
          = go _mgpId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy MapsGetPublishedResource)
                      mempty
