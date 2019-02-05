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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.testIamPermissions@.
module Network.Google.Resource.IAP.Projects.IapTunnel.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsIapTunnelTestIAMPermissionsResource

    -- * Creating a Request
    , projectsIapTunnelTestIAMPermissions
    , ProjectsIapTunnelTestIAMPermissions

    -- * Request Lenses
    , pittipXgafv
    , pittipUploadProtocol
    , pittipAccessToken
    , pittipUploadType
    , pittipPayload
    , pittipResource
    , pittipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.testIamPermissions@ method which the
-- 'ProjectsIapTunnelTestIAMPermissions' request conforms to.
type ProjectsIapTunnelTestIAMPermissionsResource =
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
-- /See:/ 'projectsIapTunnelTestIAMPermissions' smart constructor.
data ProjectsIapTunnelTestIAMPermissions = ProjectsIapTunnelTestIAMPermissions'
    { _pittipXgafv          :: !(Maybe Xgafv)
    , _pittipUploadProtocol :: !(Maybe Text)
    , _pittipAccessToken    :: !(Maybe Text)
    , _pittipUploadType     :: !(Maybe Text)
    , _pittipPayload        :: !TestIAMPermissionsRequest
    , _pittipResource       :: !Text
    , _pittipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapTunnelTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pittipXgafv'
--
-- * 'pittipUploadProtocol'
--
-- * 'pittipAccessToken'
--
-- * 'pittipUploadType'
--
-- * 'pittipPayload'
--
-- * 'pittipResource'
--
-- * 'pittipCallback'
projectsIapTunnelTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pittipPayload'
    -> Text -- ^ 'pittipResource'
    -> ProjectsIapTunnelTestIAMPermissions
projectsIapTunnelTestIAMPermissions pPittipPayload_ pPittipResource_ =
    ProjectsIapTunnelTestIAMPermissions'
    { _pittipXgafv = Nothing
    , _pittipUploadProtocol = Nothing
    , _pittipAccessToken = Nothing
    , _pittipUploadType = Nothing
    , _pittipPayload = pPittipPayload_
    , _pittipResource = pPittipResource_
    , _pittipCallback = Nothing
    }

-- | V1 error format.
pittipXgafv :: Lens' ProjectsIapTunnelTestIAMPermissions (Maybe Xgafv)
pittipXgafv
  = lens _pittipXgafv (\ s a -> s{_pittipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pittipUploadProtocol :: Lens' ProjectsIapTunnelTestIAMPermissions (Maybe Text)
pittipUploadProtocol
  = lens _pittipUploadProtocol
      (\ s a -> s{_pittipUploadProtocol = a})

-- | OAuth access token.
pittipAccessToken :: Lens' ProjectsIapTunnelTestIAMPermissions (Maybe Text)
pittipAccessToken
  = lens _pittipAccessToken
      (\ s a -> s{_pittipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pittipUploadType :: Lens' ProjectsIapTunnelTestIAMPermissions (Maybe Text)
pittipUploadType
  = lens _pittipUploadType
      (\ s a -> s{_pittipUploadType = a})

-- | Multipart request metadata.
pittipPayload :: Lens' ProjectsIapTunnelTestIAMPermissions TestIAMPermissionsRequest
pittipPayload
  = lens _pittipPayload
      (\ s a -> s{_pittipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pittipResource :: Lens' ProjectsIapTunnelTestIAMPermissions Text
pittipResource
  = lens _pittipResource
      (\ s a -> s{_pittipResource = a})

-- | JSONP
pittipCallback :: Lens' ProjectsIapTunnelTestIAMPermissions (Maybe Text)
pittipCallback
  = lens _pittipCallback
      (\ s a -> s{_pittipCallback = a})

instance GoogleRequest
         ProjectsIapTunnelTestIAMPermissions where
        type Rs ProjectsIapTunnelTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsIapTunnelTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapTunnelTestIAMPermissions'{..}
          = go _pittipResource _pittipXgafv
              _pittipUploadProtocol
              _pittipAccessToken
              _pittipUploadType
              _pittipCallback
              (Just AltJSON)
              _pittipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsIapTunnelTestIAMPermissionsResource)
                      mempty
