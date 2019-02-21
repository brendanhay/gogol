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
-- Module      : Network.Google.Resource.Compute.RegionDisks.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.testIamPermissions@.
module Network.Google.Resource.Compute.RegionDisks.TestIAMPermissions
    (
    -- * REST Resource
      RegionDisksTestIAMPermissionsResource

    -- * Creating a Request
    , regionDisksTestIAMPermissions
    , RegionDisksTestIAMPermissions

    -- * Request Lenses
    , rdtipProject
    , rdtipPayload
    , rdtipResource
    , rdtipRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.testIamPermissions@ method which the
-- 'RegionDisksTestIAMPermissions' request conforms to.
type RegionDisksTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'regionDisksTestIAMPermissions' smart constructor.
data RegionDisksTestIAMPermissions =
  RegionDisksTestIAMPermissions'
    { _rdtipProject  :: !Text
    , _rdtipPayload  :: !TestPermissionsRequest
    , _rdtipResource :: !Text
    , _rdtipRegion   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdtipProject'
--
-- * 'rdtipPayload'
--
-- * 'rdtipResource'
--
-- * 'rdtipRegion'
regionDisksTestIAMPermissions
    :: Text -- ^ 'rdtipProject'
    -> TestPermissionsRequest -- ^ 'rdtipPayload'
    -> Text -- ^ 'rdtipResource'
    -> Text -- ^ 'rdtipRegion'
    -> RegionDisksTestIAMPermissions
regionDisksTestIAMPermissions pRdtipProject_ pRdtipPayload_ pRdtipResource_ pRdtipRegion_ =
  RegionDisksTestIAMPermissions'
    { _rdtipProject = pRdtipProject_
    , _rdtipPayload = pRdtipPayload_
    , _rdtipResource = pRdtipResource_
    , _rdtipRegion = pRdtipRegion_
    }


-- | Project ID for this request.
rdtipProject :: Lens' RegionDisksTestIAMPermissions Text
rdtipProject
  = lens _rdtipProject (\ s a -> s{_rdtipProject = a})

-- | Multipart request metadata.
rdtipPayload :: Lens' RegionDisksTestIAMPermissions TestPermissionsRequest
rdtipPayload
  = lens _rdtipPayload (\ s a -> s{_rdtipPayload = a})

-- | Name or id of the resource for this request.
rdtipResource :: Lens' RegionDisksTestIAMPermissions Text
rdtipResource
  = lens _rdtipResource
      (\ s a -> s{_rdtipResource = a})

-- | The name of the region for this request.
rdtipRegion :: Lens' RegionDisksTestIAMPermissions Text
rdtipRegion
  = lens _rdtipRegion (\ s a -> s{_rdtipRegion = a})

instance GoogleRequest RegionDisksTestIAMPermissions
         where
        type Rs RegionDisksTestIAMPermissions =
             TestPermissionsResponse
        type Scopes RegionDisksTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionDisksTestIAMPermissions'{..}
          = go _rdtipProject _rdtipRegion _rdtipResource
              (Just AltJSON)
              _rdtipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionDisksTestIAMPermissionsResource)
                      mempty
