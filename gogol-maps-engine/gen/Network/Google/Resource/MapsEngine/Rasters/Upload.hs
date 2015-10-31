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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a skeleton raster asset for upload.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.upload@.
module Network.Google.Resource.MapsEngine.Rasters.Upload
    (
    -- * REST Resource
      RastersUploadResource

    -- * Creating a Request
    , rastersUpload
    , RastersUpload

    -- * Request Lenses
    , ruPayload
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.upload@ method which the
-- 'RastersUpload' request conforms to.
type RastersUploadResource =
     "mapsengine" :>
       "v1" :>
         "rasters" :>
           "upload" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Raster :> Post '[JSON] Raster

-- | Create a skeleton raster asset for upload.
--
-- /See:/ 'rastersUpload' smart constructor.
newtype RastersUpload = RastersUpload
    { _ruPayload :: Raster
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruPayload'
rastersUpload
    :: Raster -- ^ 'ruPayload'
    -> RastersUpload
rastersUpload pRuPayload_ =
    RastersUpload
    { _ruPayload = pRuPayload_
    }

-- | Multipart request metadata.
ruPayload :: Lens' RastersUpload Raster
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

instance GoogleRequest RastersUpload where
        type Rs RastersUpload = Raster
        type Scopes RastersUpload =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient RastersUpload{..}
          = go (Just AltJSON) _ruPayload mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy RastersUploadResource)
                      mempty
