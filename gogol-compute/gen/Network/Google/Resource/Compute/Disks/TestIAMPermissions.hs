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
-- Module      : Network.Google.Resource.Compute.Disks.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.testIamPermissions@.
module Network.Google.Resource.Compute.Disks.TestIAMPermissions
    (
    -- * REST Resource
      DisksTestIAMPermissionsResource

    -- * Creating a Request
    , disksTestIAMPermissions
    , DisksTestIAMPermissions

    -- * Request Lenses
    , dtipProject
    , dtipZone
    , dtipPayload
    , dtipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.disks.testIamPermissions@ method which the
-- 'DisksTestIAMPermissions' request conforms to.
type DisksTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'disksTestIAMPermissions' smart constructor.
data DisksTestIAMPermissions =
  DisksTestIAMPermissions'
    { _dtipProject :: !Text
    , _dtipZone :: !Text
    , _dtipPayload :: !TestPermissionsRequest
    , _dtipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtipProject'
--
-- * 'dtipZone'
--
-- * 'dtipPayload'
--
-- * 'dtipResource'
disksTestIAMPermissions
    :: Text -- ^ 'dtipProject'
    -> Text -- ^ 'dtipZone'
    -> TestPermissionsRequest -- ^ 'dtipPayload'
    -> Text -- ^ 'dtipResource'
    -> DisksTestIAMPermissions
disksTestIAMPermissions pDtipProject_ pDtipZone_ pDtipPayload_ pDtipResource_ =
  DisksTestIAMPermissions'
    { _dtipProject = pDtipProject_
    , _dtipZone = pDtipZone_
    , _dtipPayload = pDtipPayload_
    , _dtipResource = pDtipResource_
    }


-- | Project ID for this request.
dtipProject :: Lens' DisksTestIAMPermissions Text
dtipProject
  = lens _dtipProject (\ s a -> s{_dtipProject = a})

-- | The name of the zone for this request.
dtipZone :: Lens' DisksTestIAMPermissions Text
dtipZone = lens _dtipZone (\ s a -> s{_dtipZone = a})

-- | Multipart request metadata.
dtipPayload :: Lens' DisksTestIAMPermissions TestPermissionsRequest
dtipPayload
  = lens _dtipPayload (\ s a -> s{_dtipPayload = a})

-- | Name or id of the resource for this request.
dtipResource :: Lens' DisksTestIAMPermissions Text
dtipResource
  = lens _dtipResource (\ s a -> s{_dtipResource = a})

instance GoogleRequest DisksTestIAMPermissions where
        type Rs DisksTestIAMPermissions =
             TestPermissionsResponse
        type Scopes DisksTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient DisksTestIAMPermissions'{..}
          = go _dtipProject _dtipZone _dtipResource
              (Just AltJSON)
              _dtipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DisksTestIAMPermissionsResource)
                      mempty
