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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.testIamPermissions@.
module Network.Google.Resource.Compute.InstanceTemplates.TestIAMPermissions
    (
    -- * REST Resource
      InstanceTemplatesTestIAMPermissionsResource

    -- * Creating a Request
    , instanceTemplatesTestIAMPermissions
    , InstanceTemplatesTestIAMPermissions

    -- * Request Lenses
    , ittipProject
    , ittipPayload
    , ittipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.testIamPermissions@ method which the
-- 'InstanceTemplatesTestIAMPermissions' request conforms to.
type InstanceTemplatesTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 Capture "resource" Text :>
                   "testIamPermissions" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TestPermissionsRequest :>
                         Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'instanceTemplatesTestIAMPermissions' smart constructor.
data InstanceTemplatesTestIAMPermissions =
  InstanceTemplatesTestIAMPermissions'
    { _ittipProject  :: !Text
    , _ittipPayload  :: !TestPermissionsRequest
    , _ittipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceTemplatesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ittipProject'
--
-- * 'ittipPayload'
--
-- * 'ittipResource'
instanceTemplatesTestIAMPermissions
    :: Text -- ^ 'ittipProject'
    -> TestPermissionsRequest -- ^ 'ittipPayload'
    -> Text -- ^ 'ittipResource'
    -> InstanceTemplatesTestIAMPermissions
instanceTemplatesTestIAMPermissions pIttipProject_ pIttipPayload_ pIttipResource_ =
  InstanceTemplatesTestIAMPermissions'
    { _ittipProject = pIttipProject_
    , _ittipPayload = pIttipPayload_
    , _ittipResource = pIttipResource_
    }

-- | Project ID for this request.
ittipProject :: Lens' InstanceTemplatesTestIAMPermissions Text
ittipProject
  = lens _ittipProject (\ s a -> s{_ittipProject = a})

-- | Multipart request metadata.
ittipPayload :: Lens' InstanceTemplatesTestIAMPermissions TestPermissionsRequest
ittipPayload
  = lens _ittipPayload (\ s a -> s{_ittipPayload = a})

-- | Name or id of the resource for this request.
ittipResource :: Lens' InstanceTemplatesTestIAMPermissions Text
ittipResource
  = lens _ittipResource
      (\ s a -> s{_ittipResource = a})

instance GoogleRequest
           InstanceTemplatesTestIAMPermissions
         where
        type Rs InstanceTemplatesTestIAMPermissions =
             TestPermissionsResponse
        type Scopes InstanceTemplatesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          InstanceTemplatesTestIAMPermissions'{..}
          = go _ittipProject _ittipResource (Just AltJSON)
              _ittipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceTemplatesTestIAMPermissionsResource)
                      mempty
