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
-- Module      : Network.Google.Resource.Compute.PacketMirrorings.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.packetMirrorings.testIamPermissions@.
module Network.Google.Resource.Compute.PacketMirrorings.TestIAMPermissions
    (
    -- * REST Resource
      PacketMirroringsTestIAMPermissionsResource

    -- * Creating a Request
    , packetMirroringsTestIAMPermissions
    , PacketMirroringsTestIAMPermissions

    -- * Request Lenses
    , pmtipProject
    , pmtipPayload
    , pmtipResource
    , pmtipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.packetMirrorings.testIamPermissions@ method which the
-- 'PacketMirroringsTestIAMPermissions' request conforms to.
type PacketMirroringsTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "packetMirrorings" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'packetMirroringsTestIAMPermissions' smart constructor.
data PacketMirroringsTestIAMPermissions =
  PacketMirroringsTestIAMPermissions'
    { _pmtipProject :: !Text
    , _pmtipPayload :: !TestPermissionsRequest
    , _pmtipResource :: !Text
    , _pmtipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PacketMirroringsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmtipProject'
--
-- * 'pmtipPayload'
--
-- * 'pmtipResource'
--
-- * 'pmtipRegion'
packetMirroringsTestIAMPermissions
    :: Text -- ^ 'pmtipProject'
    -> TestPermissionsRequest -- ^ 'pmtipPayload'
    -> Text -- ^ 'pmtipResource'
    -> Text -- ^ 'pmtipRegion'
    -> PacketMirroringsTestIAMPermissions
packetMirroringsTestIAMPermissions pPmtipProject_ pPmtipPayload_ pPmtipResource_ pPmtipRegion_ =
  PacketMirroringsTestIAMPermissions'
    { _pmtipProject = pPmtipProject_
    , _pmtipPayload = pPmtipPayload_
    , _pmtipResource = pPmtipResource_
    , _pmtipRegion = pPmtipRegion_
    }


-- | Project ID for this request.
pmtipProject :: Lens' PacketMirroringsTestIAMPermissions Text
pmtipProject
  = lens _pmtipProject (\ s a -> s{_pmtipProject = a})

-- | Multipart request metadata.
pmtipPayload :: Lens' PacketMirroringsTestIAMPermissions TestPermissionsRequest
pmtipPayload
  = lens _pmtipPayload (\ s a -> s{_pmtipPayload = a})

-- | Name or id of the resource for this request.
pmtipResource :: Lens' PacketMirroringsTestIAMPermissions Text
pmtipResource
  = lens _pmtipResource
      (\ s a -> s{_pmtipResource = a})

-- | The name of the region for this request.
pmtipRegion :: Lens' PacketMirroringsTestIAMPermissions Text
pmtipRegion
  = lens _pmtipRegion (\ s a -> s{_pmtipRegion = a})

instance GoogleRequest
           PacketMirroringsTestIAMPermissions
         where
        type Rs PacketMirroringsTestIAMPermissions =
             TestPermissionsResponse
        type Scopes PacketMirroringsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient PacketMirroringsTestIAMPermissions'{..}
          = go _pmtipProject _pmtipRegion _pmtipResource
              (Just AltJSON)
              _pmtipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PacketMirroringsTestIAMPermissionsResource)
                      mempty
