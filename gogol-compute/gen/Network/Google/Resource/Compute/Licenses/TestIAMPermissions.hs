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
-- Module      : Network.Google.Resource.Compute.Licenses.TestIAMPermissions
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenses.testIamPermissions@.
module Network.Google.Resource.Compute.Licenses.TestIAMPermissions
    (
    -- * REST Resource
      LicensesTestIAMPermissionsResource

    -- * Creating a Request
    , licensesTestIAMPermissions
    , LicensesTestIAMPermissions

    -- * Request Lenses
    , ltipProject
    , ltipPayload
    , ltipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.licenses.testIamPermissions@ method which the
-- 'LicensesTestIAMPermissions' request conforms to.
type LicensesTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenses" :>
                 Capture "resource" Text :>
                   "testIamPermissions" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TestPermissionsRequest :>
                         Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. Caution
-- This resource is intended for use only by third-party partners who are
-- creating Cloud Marketplace images.
--
-- /See:/ 'licensesTestIAMPermissions' smart constructor.
data LicensesTestIAMPermissions =
  LicensesTestIAMPermissions'
    { _ltipProject :: !Text
    , _ltipPayload :: !TestPermissionsRequest
    , _ltipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicensesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltipProject'
--
-- * 'ltipPayload'
--
-- * 'ltipResource'
licensesTestIAMPermissions
    :: Text -- ^ 'ltipProject'
    -> TestPermissionsRequest -- ^ 'ltipPayload'
    -> Text -- ^ 'ltipResource'
    -> LicensesTestIAMPermissions
licensesTestIAMPermissions pLtipProject_ pLtipPayload_ pLtipResource_ =
  LicensesTestIAMPermissions'
    { _ltipProject = pLtipProject_
    , _ltipPayload = pLtipPayload_
    , _ltipResource = pLtipResource_
    }


-- | Project ID for this request.
ltipProject :: Lens' LicensesTestIAMPermissions Text
ltipProject
  = lens _ltipProject (\ s a -> s{_ltipProject = a})

-- | Multipart request metadata.
ltipPayload :: Lens' LicensesTestIAMPermissions TestPermissionsRequest
ltipPayload
  = lens _ltipPayload (\ s a -> s{_ltipPayload = a})

-- | Name or id of the resource for this request.
ltipResource :: Lens' LicensesTestIAMPermissions Text
ltipResource
  = lens _ltipResource (\ s a -> s{_ltipResource = a})

instance GoogleRequest LicensesTestIAMPermissions
         where
        type Rs LicensesTestIAMPermissions =
             TestPermissionsResponse
        type Scopes LicensesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient LicensesTestIAMPermissions'{..}
          = go _ltipProject _ltipResource (Just AltJSON)
              _ltipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy LicensesTestIAMPermissionsResource)
                      mempty
