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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return metadata for a particular map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsGet@.
module Network.Google.Resource.MapsEngine.Maps.Get
    (
    -- * REST Resource
      MapsGetResource

    -- * Creating a Request
    , mapsGet'
    , MapsGet'

    -- * Request Lenses
    , mgVersion
    , mgId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsGet@ method which the
-- 'MapsGet'' request conforms to.
type MapsGetResource =
     "maps" :>
       Capture "id" Text :>
         QueryParam "version" MapsGetVersion :>
           QueryParam "alt" AltJSON :> Get '[JSON] Map

-- | Return metadata for a particular map.
--
-- /See:/ 'mapsGet'' smart constructor.
data MapsGet' = MapsGet'
    { _mgVersion :: !(Maybe MapsGetVersion)
    , _mgId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgVersion'
--
-- * 'mgId'
mapsGet'
    :: Text -- ^ 'id'
    -> MapsGet'
mapsGet' pMgId_ =
    MapsGet'
    { _mgVersion = Nothing
    , _mgId = pMgId_
    }

-- | Deprecated: The version parameter indicates which version of the map
-- should be returned. When version is set to published, the published
-- version of the map will be returned. Please use the maps.getPublished
-- endpoint instead.
mgVersion :: Lens' MapsGet' (Maybe MapsGetVersion)
mgVersion
  = lens _mgVersion (\ s a -> s{_mgVersion = a})

-- | The ID of the map.
mgId :: Lens' MapsGet' Text
mgId = lens _mgId (\ s a -> s{_mgId = a})

instance GoogleRequest MapsGet' where
        type Rs MapsGet' = Map
        requestClient MapsGet'{..}
          = go _mgId _mgVersion (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy MapsGetResource) mempty
