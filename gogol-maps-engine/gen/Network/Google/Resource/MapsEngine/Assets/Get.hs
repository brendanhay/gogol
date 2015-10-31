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
-- Module      : Network.Google.Resource.MapsEngine.Assets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return metadata for a particular asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.assets.get@.
module Network.Google.Resource.MapsEngine.Assets.Get
    (
    -- * REST Resource
      AssetsGetResource

    -- * Creating a Request
    , assetsGet
    , AssetsGet

    -- * Request Lenses
    , agId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.assets.get@ method which the
-- 'AssetsGet' request conforms to.
type AssetsGetResource =
     "mapsengine" :>
       "v1" :>
         "assets" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Asset

-- | Return metadata for a particular asset.
--
-- /See:/ 'assetsGet' smart constructor.
newtype AssetsGet = AssetsGet
    { _agId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agId'
assetsGet
    :: Text -- ^ 'agId'
    -> AssetsGet
assetsGet pAgId_ =
    AssetsGet
    { _agId = pAgId_
    }

-- | The ID of the asset.
agId :: Lens' AssetsGet Text
agId = lens _agId (\ s a -> s{_agId = a})

instance GoogleRequest AssetsGet where
        type Rs AssetsGet = Asset
        type Scopes AssetsGet =
             '["https://www.googleapis.com/auth/mapsengine",
               "https://www.googleapis.com/auth/mapsengine.readonly"]
        requestClient AssetsGet{..}
          = go _agId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy AssetsGetResource)
                      mempty
