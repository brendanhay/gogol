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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.services.versions.testIamPermissions@.
module Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsIapWebServicesVersionsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsIapWebServicesVersionsTestIAMPermissions
    , ProjectsIapWebServicesVersionsTestIAMPermissions

    -- * Request Lenses
    , piwsvtipXgafv
    , piwsvtipUploadProtocol
    , piwsvtipAccessToken
    , piwsvtipUploadType
    , piwsvtipPayload
    , piwsvtipResource
    , piwsvtipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.services.versions.testIamPermissions@ method which the
-- 'ProjectsIapWebServicesVersionsTestIAMPermissions' request conforms to.
type ProjectsIapWebServicesVersionsTestIAMPermissionsResource
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
-- /See:/ 'projectsIapWebServicesVersionsTestIAMPermissions' smart constructor.
data ProjectsIapWebServicesVersionsTestIAMPermissions = ProjectsIapWebServicesVersionsTestIAMPermissions'
    { _piwsvtipXgafv          :: !(Maybe Xgafv)
    , _piwsvtipUploadProtocol :: !(Maybe Text)
    , _piwsvtipAccessToken    :: !(Maybe Text)
    , _piwsvtipUploadType     :: !(Maybe Text)
    , _piwsvtipPayload        :: !TestIAMPermissionsRequest
    , _piwsvtipResource       :: !Text
    , _piwsvtipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapWebServicesVersionsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwsvtipXgafv'
--
-- * 'piwsvtipUploadProtocol'
--
-- * 'piwsvtipAccessToken'
--
-- * 'piwsvtipUploadType'
--
-- * 'piwsvtipPayload'
--
-- * 'piwsvtipResource'
--
-- * 'piwsvtipCallback'
projectsIapWebServicesVersionsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'piwsvtipPayload'
    -> Text -- ^ 'piwsvtipResource'
    -> ProjectsIapWebServicesVersionsTestIAMPermissions
projectsIapWebServicesVersionsTestIAMPermissions pPiwsvtipPayload_ pPiwsvtipResource_ =
    ProjectsIapWebServicesVersionsTestIAMPermissions'
    { _piwsvtipXgafv = Nothing
    , _piwsvtipUploadProtocol = Nothing
    , _piwsvtipAccessToken = Nothing
    , _piwsvtipUploadType = Nothing
    , _piwsvtipPayload = pPiwsvtipPayload_
    , _piwsvtipResource = pPiwsvtipResource_
    , _piwsvtipCallback = Nothing
    }

-- | V1 error format.
piwsvtipXgafv :: Lens' ProjectsIapWebServicesVersionsTestIAMPermissions (Maybe Xgafv)
piwsvtipXgafv
  = lens _piwsvtipXgafv
      (\ s a -> s{_piwsvtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwsvtipUploadProtocol :: Lens' ProjectsIapWebServicesVersionsTestIAMPermissions (Maybe Text)
piwsvtipUploadProtocol
  = lens _piwsvtipUploadProtocol
      (\ s a -> s{_piwsvtipUploadProtocol = a})

-- | OAuth access token.
piwsvtipAccessToken :: Lens' ProjectsIapWebServicesVersionsTestIAMPermissions (Maybe Text)
piwsvtipAccessToken
  = lens _piwsvtipAccessToken
      (\ s a -> s{_piwsvtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwsvtipUploadType :: Lens' ProjectsIapWebServicesVersionsTestIAMPermissions (Maybe Text)
piwsvtipUploadType
  = lens _piwsvtipUploadType
      (\ s a -> s{_piwsvtipUploadType = a})

-- | Multipart request metadata.
piwsvtipPayload :: Lens' ProjectsIapWebServicesVersionsTestIAMPermissions TestIAMPermissionsRequest
piwsvtipPayload
  = lens _piwsvtipPayload
      (\ s a -> s{_piwsvtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
piwsvtipResource :: Lens' ProjectsIapWebServicesVersionsTestIAMPermissions Text
piwsvtipResource
  = lens _piwsvtipResource
      (\ s a -> s{_piwsvtipResource = a})

-- | JSONP
piwsvtipCallback :: Lens' ProjectsIapWebServicesVersionsTestIAMPermissions (Maybe Text)
piwsvtipCallback
  = lens _piwsvtipCallback
      (\ s a -> s{_piwsvtipCallback = a})

instance GoogleRequest
         ProjectsIapWebServicesVersionsTestIAMPermissions
         where
        type Rs
               ProjectsIapWebServicesVersionsTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsIapWebServicesVersionsTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapWebServicesVersionsTestIAMPermissions'{..}
          = go _piwsvtipResource _piwsvtipXgafv
              _piwsvtipUploadProtocol
              _piwsvtipAccessToken
              _piwsvtipUploadType
              _piwsvtipCallback
              (Just AltJSON)
              _piwsvtipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsIapWebServicesVersionsTestIAMPermissionsResource)
                      mempty
