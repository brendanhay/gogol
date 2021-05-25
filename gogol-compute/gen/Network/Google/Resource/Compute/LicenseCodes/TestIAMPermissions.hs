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
-- Module      : Network.Google.Resource.Compute.LicenseCodes.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. Caution
-- This resource is intended for use only by third-party partners who are
-- creating Cloud Marketplace images.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenseCodes.testIamPermissions@.
module Network.Google.Resource.Compute.LicenseCodes.TestIAMPermissions
    (
    -- * REST Resource
      LicenseCodesTestIAMPermissionsResource

    -- * Creating a Request
    , licenseCodesTestIAMPermissions
    , LicenseCodesTestIAMPermissions

    -- * Request Lenses
    , lctipProject
    , lctipPayload
    , lctipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.licenseCodes.testIamPermissions@ method which the
-- 'LicenseCodesTestIAMPermissions' request conforms to.
type LicenseCodesTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenseCodes" :>
                 Capture "resource" Text :>
                   "testIamPermissions" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TestPermissionsRequest :>
                         Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. Caution
-- This resource is intended for use only by third-party partners who are
-- creating Cloud Marketplace images.
--
-- /See:/ 'licenseCodesTestIAMPermissions' smart constructor.
data LicenseCodesTestIAMPermissions =
  LicenseCodesTestIAMPermissions'
    { _lctipProject :: !Text
    , _lctipPayload :: !TestPermissionsRequest
    , _lctipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicenseCodesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lctipProject'
--
-- * 'lctipPayload'
--
-- * 'lctipResource'
licenseCodesTestIAMPermissions
    :: Text -- ^ 'lctipProject'
    -> TestPermissionsRequest -- ^ 'lctipPayload'
    -> Text -- ^ 'lctipResource'
    -> LicenseCodesTestIAMPermissions
licenseCodesTestIAMPermissions pLctipProject_ pLctipPayload_ pLctipResource_ =
  LicenseCodesTestIAMPermissions'
    { _lctipProject = pLctipProject_
    , _lctipPayload = pLctipPayload_
    , _lctipResource = pLctipResource_
    }


-- | Project ID for this request.
lctipProject :: Lens' LicenseCodesTestIAMPermissions Text
lctipProject
  = lens _lctipProject (\ s a -> s{_lctipProject = a})

-- | Multipart request metadata.
lctipPayload :: Lens' LicenseCodesTestIAMPermissions TestPermissionsRequest
lctipPayload
  = lens _lctipPayload (\ s a -> s{_lctipPayload = a})

-- | Name or id of the resource for this request.
lctipResource :: Lens' LicenseCodesTestIAMPermissions Text
lctipResource
  = lens _lctipResource
      (\ s a -> s{_lctipResource = a})

instance GoogleRequest LicenseCodesTestIAMPermissions
         where
        type Rs LicenseCodesTestIAMPermissions =
             TestPermissionsResponse
        type Scopes LicenseCodesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient LicenseCodesTestIAMPermissions'{..}
          = go _lctipProject _lctipResource (Just AltJSON)
              _lctipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LicenseCodesTestIAMPermissionsResource)
                      mempty
