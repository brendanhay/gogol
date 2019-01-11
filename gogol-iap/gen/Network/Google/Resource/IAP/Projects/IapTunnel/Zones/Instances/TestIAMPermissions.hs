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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the Identity-Aware Proxy
-- protected resource. More information about managing access via IAP can
-- be found at:
-- https:\/\/cloud.google.com\/iap\/docs\/managing-access#managing_access_via_the_api
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.zones.instances.testIamPermissions@.
module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsIapTunnelZonesInstancesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsIapTunnelZonesInstancesTestIAMPermissions
    , ProjectsIapTunnelZonesInstancesTestIAMPermissions

    -- * Request Lenses
    , pitzitipXgafv
    , pitzitipUploadProtocol
    , pitzitipAccessToken
    , pitzitipUploadType
    , pitzitipPayload
    , pitzitipResource
    , pitzitipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.zones.instances.testIamPermissions@ method which the
-- 'ProjectsIapTunnelZonesInstancesTestIAMPermissions' request conforms to.
type ProjectsIapTunnelZonesInstancesTestIAMPermissionsResource
     =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the Identity-Aware Proxy
-- protected resource. More information about managing access via IAP can
-- be found at:
-- https:\/\/cloud.google.com\/iap\/docs\/managing-access#managing_access_via_the_api
--
-- /See:/ 'projectsIapTunnelZonesInstancesTestIAMPermissions' smart constructor.
data ProjectsIapTunnelZonesInstancesTestIAMPermissions = ProjectsIapTunnelZonesInstancesTestIAMPermissions'
    { _pitzitipXgafv          :: !(Maybe Xgafv)
    , _pitzitipUploadProtocol :: !(Maybe Text)
    , _pitzitipAccessToken    :: !(Maybe Text)
    , _pitzitipUploadType     :: !(Maybe Text)
    , _pitzitipPayload        :: !TestIAMPermissionsRequest
    , _pitzitipResource       :: !Text
    , _pitzitipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapTunnelZonesInstancesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitzitipXgafv'
--
-- * 'pitzitipUploadProtocol'
--
-- * 'pitzitipAccessToken'
--
-- * 'pitzitipUploadType'
--
-- * 'pitzitipPayload'
--
-- * 'pitzitipResource'
--
-- * 'pitzitipCallback'
projectsIapTunnelZonesInstancesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pitzitipPayload'
    -> Text -- ^ 'pitzitipResource'
    -> ProjectsIapTunnelZonesInstancesTestIAMPermissions
projectsIapTunnelZonesInstancesTestIAMPermissions pPitzitipPayload_ pPitzitipResource_ =
    ProjectsIapTunnelZonesInstancesTestIAMPermissions'
    { _pitzitipXgafv = Nothing
    , _pitzitipUploadProtocol = Nothing
    , _pitzitipAccessToken = Nothing
    , _pitzitipUploadType = Nothing
    , _pitzitipPayload = pPitzitipPayload_
    , _pitzitipResource = pPitzitipResource_
    , _pitzitipCallback = Nothing
    }

-- | V1 error format.
pitzitipXgafv :: Lens' ProjectsIapTunnelZonesInstancesTestIAMPermissions (Maybe Xgafv)
pitzitipXgafv
  = lens _pitzitipXgafv
      (\ s a -> s{_pitzitipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitzitipUploadProtocol :: Lens' ProjectsIapTunnelZonesInstancesTestIAMPermissions (Maybe Text)
pitzitipUploadProtocol
  = lens _pitzitipUploadProtocol
      (\ s a -> s{_pitzitipUploadProtocol = a})

-- | OAuth access token.
pitzitipAccessToken :: Lens' ProjectsIapTunnelZonesInstancesTestIAMPermissions (Maybe Text)
pitzitipAccessToken
  = lens _pitzitipAccessToken
      (\ s a -> s{_pitzitipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitzitipUploadType :: Lens' ProjectsIapTunnelZonesInstancesTestIAMPermissions (Maybe Text)
pitzitipUploadType
  = lens _pitzitipUploadType
      (\ s a -> s{_pitzitipUploadType = a})

-- | Multipart request metadata.
pitzitipPayload :: Lens' ProjectsIapTunnelZonesInstancesTestIAMPermissions TestIAMPermissionsRequest
pitzitipPayload
  = lens _pitzitipPayload
      (\ s a -> s{_pitzitipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pitzitipResource :: Lens' ProjectsIapTunnelZonesInstancesTestIAMPermissions Text
pitzitipResource
  = lens _pitzitipResource
      (\ s a -> s{_pitzitipResource = a})

-- | JSONP
pitzitipCallback :: Lens' ProjectsIapTunnelZonesInstancesTestIAMPermissions (Maybe Text)
pitzitipCallback
  = lens _pitzitipCallback
      (\ s a -> s{_pitzitipCallback = a})

instance GoogleRequest
         ProjectsIapTunnelZonesInstancesTestIAMPermissions
         where
        type Rs
               ProjectsIapTunnelZonesInstancesTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsIapTunnelZonesInstancesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapTunnelZonesInstancesTestIAMPermissions'{..}
          = go _pitzitipResource _pitzitipXgafv
              _pitzitipUploadProtocol
              _pitzitipAccessToken
              _pitzitipUploadType
              _pitzitipCallback
              (Just AltJSON)
              _pitzitipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsIapTunnelZonesInstancesTestIAMPermissionsResource)
                      mempty
