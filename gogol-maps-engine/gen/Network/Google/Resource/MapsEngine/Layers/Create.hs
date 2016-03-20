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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.create@.
module Network.Google.Resource.MapsEngine.Layers.Create
    (
    -- * REST Resource
      LayersCreateResource

    -- * Creating a Request
    , layersCreate
    , LayersCreate

    -- * Request Lenses
    , lcProcess
    , lcPayload
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.create@ method which the
-- 'LayersCreate' request conforms to.
type LayersCreateResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           QueryParam "process" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Layer :> Post '[JSON] Layer

-- | Create a layer asset.
--
-- /See:/ 'layersCreate' smart constructor.
data LayersCreate = LayersCreate
    { _lcProcess :: !(Maybe Bool)
    , _lcPayload :: !Layer
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcProcess'
--
-- * 'lcPayload'
layersCreate
    :: Layer -- ^ 'lcPayload'
    -> LayersCreate
layersCreate pLcPayload_ =
    LayersCreate
    { _lcProcess = Nothing
    , _lcPayload = pLcPayload_
    }

-- | Whether to queue the created layer for processing.
lcProcess :: Lens' LayersCreate (Maybe Bool)
lcProcess
  = lens _lcProcess (\ s a -> s{_lcProcess = a})

-- | Multipart request metadata.
lcPayload :: Lens' LayersCreate Layer
lcPayload
  = lens _lcPayload (\ s a -> s{_lcPayload = a})

instance GoogleRequest LayersCreate where
        type Rs LayersCreate = Layer
        requestClient LayersCreate{..}
          = go _lcProcess (Just AltJSON) _lcPayload
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy LayersCreateResource)
                      mempty
