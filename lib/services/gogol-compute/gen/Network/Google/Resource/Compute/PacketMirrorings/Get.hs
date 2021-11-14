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
-- Module      : Network.Google.Resource.Compute.PacketMirrorings.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified PacketMirroring resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.packetMirrorings.get@.
module Network.Google.Resource.Compute.PacketMirrorings.Get
    (
    -- * REST Resource
      PacketMirroringsGetResource

    -- * Creating a Request
    , packetMirroringsGet
    , PacketMirroringsGet

    -- * Request Lenses
    , pmgProject
    , pmgRegion
    , pmgPacketMirroring
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.packetMirrorings.get@ method which the
-- 'PacketMirroringsGet' request conforms to.
type PacketMirroringsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "packetMirrorings" :>
                   Capture "packetMirroring" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] PacketMirroring

-- | Returns the specified PacketMirroring resource.
--
-- /See:/ 'packetMirroringsGet' smart constructor.
data PacketMirroringsGet =
  PacketMirroringsGet'
    { _pmgProject :: !Text
    , _pmgRegion :: !Text
    , _pmgPacketMirroring :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PacketMirroringsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmgProject'
--
-- * 'pmgRegion'
--
-- * 'pmgPacketMirroring'
packetMirroringsGet
    :: Text -- ^ 'pmgProject'
    -> Text -- ^ 'pmgRegion'
    -> Text -- ^ 'pmgPacketMirroring'
    -> PacketMirroringsGet
packetMirroringsGet pPmgProject_ pPmgRegion_ pPmgPacketMirroring_ =
  PacketMirroringsGet'
    { _pmgProject = pPmgProject_
    , _pmgRegion = pPmgRegion_
    , _pmgPacketMirroring = pPmgPacketMirroring_
    }


-- | Project ID for this request.
pmgProject :: Lens' PacketMirroringsGet Text
pmgProject
  = lens _pmgProject (\ s a -> s{_pmgProject = a})

-- | Name of the region for this request.
pmgRegion :: Lens' PacketMirroringsGet Text
pmgRegion
  = lens _pmgRegion (\ s a -> s{_pmgRegion = a})

-- | Name of the PacketMirroring resource to return.
pmgPacketMirroring :: Lens' PacketMirroringsGet Text
pmgPacketMirroring
  = lens _pmgPacketMirroring
      (\ s a -> s{_pmgPacketMirroring = a})

instance GoogleRequest PacketMirroringsGet where
        type Rs PacketMirroringsGet = PacketMirroring
        type Scopes PacketMirroringsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient PacketMirroringsGet'{..}
          = go _pmgProject _pmgRegion _pmgPacketMirroring
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PacketMirroringsGetResource)
                      mempty
