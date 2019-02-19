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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.Zones.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.zones.testIamPermissions@.
module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsIapTunnelZonesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsIapTunnelZonesTestIAMPermissions
    , ProjectsIapTunnelZonesTestIAMPermissions

    -- * Request Lenses
    , pitztipXgafv
    , pitztipUploadProtocol
    , pitztipAccessToken
    , pitztipUploadType
    , pitztipPayload
    , pitztipResource
    , pitztipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.zones.testIamPermissions@ method which the
-- 'ProjectsIapTunnelZonesTestIAMPermissions' request conforms to.
type ProjectsIapTunnelZonesTestIAMPermissionsResource
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
-- /See:/ 'projectsIapTunnelZonesTestIAMPermissions' smart constructor.
data ProjectsIapTunnelZonesTestIAMPermissions =
  ProjectsIapTunnelZonesTestIAMPermissions'
    { _pitztipXgafv          :: !(Maybe Xgafv)
    , _pitztipUploadProtocol :: !(Maybe Text)
    , _pitztipAccessToken    :: !(Maybe Text)
    , _pitztipUploadType     :: !(Maybe Text)
    , _pitztipPayload        :: !TestIAMPermissionsRequest
    , _pitztipResource       :: !Text
    , _pitztipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsIapTunnelZonesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitztipXgafv'
--
-- * 'pitztipUploadProtocol'
--
-- * 'pitztipAccessToken'
--
-- * 'pitztipUploadType'
--
-- * 'pitztipPayload'
--
-- * 'pitztipResource'
--
-- * 'pitztipCallback'
projectsIapTunnelZonesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pitztipPayload'
    -> Text -- ^ 'pitztipResource'
    -> ProjectsIapTunnelZonesTestIAMPermissions
projectsIapTunnelZonesTestIAMPermissions pPitztipPayload_ pPitztipResource_ =
  ProjectsIapTunnelZonesTestIAMPermissions'
    { _pitztipXgafv = Nothing
    , _pitztipUploadProtocol = Nothing
    , _pitztipAccessToken = Nothing
    , _pitztipUploadType = Nothing
    , _pitztipPayload = pPitztipPayload_
    , _pitztipResource = pPitztipResource_
    , _pitztipCallback = Nothing
    }

-- | V1 error format.
pitztipXgafv :: Lens' ProjectsIapTunnelZonesTestIAMPermissions (Maybe Xgafv)
pitztipXgafv
  = lens _pitztipXgafv (\ s a -> s{_pitztipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitztipUploadProtocol :: Lens' ProjectsIapTunnelZonesTestIAMPermissions (Maybe Text)
pitztipUploadProtocol
  = lens _pitztipUploadProtocol
      (\ s a -> s{_pitztipUploadProtocol = a})

-- | OAuth access token.
pitztipAccessToken :: Lens' ProjectsIapTunnelZonesTestIAMPermissions (Maybe Text)
pitztipAccessToken
  = lens _pitztipAccessToken
      (\ s a -> s{_pitztipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitztipUploadType :: Lens' ProjectsIapTunnelZonesTestIAMPermissions (Maybe Text)
pitztipUploadType
  = lens _pitztipUploadType
      (\ s a -> s{_pitztipUploadType = a})

-- | Multipart request metadata.
pitztipPayload :: Lens' ProjectsIapTunnelZonesTestIAMPermissions TestIAMPermissionsRequest
pitztipPayload
  = lens _pitztipPayload
      (\ s a -> s{_pitztipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pitztipResource :: Lens' ProjectsIapTunnelZonesTestIAMPermissions Text
pitztipResource
  = lens _pitztipResource
      (\ s a -> s{_pitztipResource = a})

-- | JSONP
pitztipCallback :: Lens' ProjectsIapTunnelZonesTestIAMPermissions (Maybe Text)
pitztipCallback
  = lens _pitztipCallback
      (\ s a -> s{_pitztipCallback = a})

instance GoogleRequest
           ProjectsIapTunnelZonesTestIAMPermissions
         where
        type Rs ProjectsIapTunnelZonesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsIapTunnelZonesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapTunnelZonesTestIAMPermissions'{..}
          = go _pitztipResource _pitztipXgafv
              _pitztipUploadProtocol
              _pitztipAccessToken
              _pitztipUploadType
              _pitztipCallback
              (Just AltJSON)
              _pitztipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsIapTunnelZonesTestIAMPermissionsResource)
                      mempty
