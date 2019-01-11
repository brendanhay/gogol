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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.Services.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.services.testIamPermissions@.
module Network.Google.Resource.IAP.Projects.IapWeb.Services.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsIapWebServicesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsIapWebServicesTestIAMPermissions
    , ProjectsIapWebServicesTestIAMPermissions

    -- * Request Lenses
    , piwstipXgafv
    , piwstipUploadProtocol
    , piwstipAccessToken
    , piwstipUploadType
    , piwstipPayload
    , piwstipResource
    , piwstipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.services.testIamPermissions@ method which the
-- 'ProjectsIapWebServicesTestIAMPermissions' request conforms to.
type ProjectsIapWebServicesTestIAMPermissionsResource
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
-- /See:/ 'projectsIapWebServicesTestIAMPermissions' smart constructor.
data ProjectsIapWebServicesTestIAMPermissions = ProjectsIapWebServicesTestIAMPermissions'
    { _piwstipXgafv          :: !(Maybe Xgafv)
    , _piwstipUploadProtocol :: !(Maybe Text)
    , _piwstipAccessToken    :: !(Maybe Text)
    , _piwstipUploadType     :: !(Maybe Text)
    , _piwstipPayload        :: !TestIAMPermissionsRequest
    , _piwstipResource       :: !Text
    , _piwstipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapWebServicesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwstipXgafv'
--
-- * 'piwstipUploadProtocol'
--
-- * 'piwstipAccessToken'
--
-- * 'piwstipUploadType'
--
-- * 'piwstipPayload'
--
-- * 'piwstipResource'
--
-- * 'piwstipCallback'
projectsIapWebServicesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'piwstipPayload'
    -> Text -- ^ 'piwstipResource'
    -> ProjectsIapWebServicesTestIAMPermissions
projectsIapWebServicesTestIAMPermissions pPiwstipPayload_ pPiwstipResource_ =
    ProjectsIapWebServicesTestIAMPermissions'
    { _piwstipXgafv = Nothing
    , _piwstipUploadProtocol = Nothing
    , _piwstipAccessToken = Nothing
    , _piwstipUploadType = Nothing
    , _piwstipPayload = pPiwstipPayload_
    , _piwstipResource = pPiwstipResource_
    , _piwstipCallback = Nothing
    }

-- | V1 error format.
piwstipXgafv :: Lens' ProjectsIapWebServicesTestIAMPermissions (Maybe Xgafv)
piwstipXgafv
  = lens _piwstipXgafv (\ s a -> s{_piwstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwstipUploadProtocol :: Lens' ProjectsIapWebServicesTestIAMPermissions (Maybe Text)
piwstipUploadProtocol
  = lens _piwstipUploadProtocol
      (\ s a -> s{_piwstipUploadProtocol = a})

-- | OAuth access token.
piwstipAccessToken :: Lens' ProjectsIapWebServicesTestIAMPermissions (Maybe Text)
piwstipAccessToken
  = lens _piwstipAccessToken
      (\ s a -> s{_piwstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwstipUploadType :: Lens' ProjectsIapWebServicesTestIAMPermissions (Maybe Text)
piwstipUploadType
  = lens _piwstipUploadType
      (\ s a -> s{_piwstipUploadType = a})

-- | Multipart request metadata.
piwstipPayload :: Lens' ProjectsIapWebServicesTestIAMPermissions TestIAMPermissionsRequest
piwstipPayload
  = lens _piwstipPayload
      (\ s a -> s{_piwstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
piwstipResource :: Lens' ProjectsIapWebServicesTestIAMPermissions Text
piwstipResource
  = lens _piwstipResource
      (\ s a -> s{_piwstipResource = a})

-- | JSONP
piwstipCallback :: Lens' ProjectsIapWebServicesTestIAMPermissions (Maybe Text)
piwstipCallback
  = lens _piwstipCallback
      (\ s a -> s{_piwstipCallback = a})

instance GoogleRequest
         ProjectsIapWebServicesTestIAMPermissions where
        type Rs ProjectsIapWebServicesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsIapWebServicesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapWebServicesTestIAMPermissions'{..}
          = go _piwstipResource _piwstipXgafv
              _piwstipUploadProtocol
              _piwstipAccessToken
              _piwstipUploadType
              _piwstipCallback
              (Just AltJSON)
              _piwstipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsIapWebServicesTestIAMPermissionsResource)
                      mempty
