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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.testIamPermissions@.
module Network.Google.Resource.IAP.Projects.IapWeb.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsIapWebTestIAMPermissionsResource

    -- * Creating a Request
    , projectsIapWebTestIAMPermissions
    , ProjectsIapWebTestIAMPermissions

    -- * Request Lenses
    , piwtipXgafv
    , piwtipUploadProtocol
    , piwtipAccessToken
    , piwtipUploadType
    , piwtipPayload
    , piwtipResource
    , piwtipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.testIamPermissions@ method which the
-- 'ProjectsIapWebTestIAMPermissions' request conforms to.
type ProjectsIapWebTestIAMPermissionsResource =
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
-- /See:/ 'projectsIapWebTestIAMPermissions' smart constructor.
data ProjectsIapWebTestIAMPermissions = ProjectsIapWebTestIAMPermissions'
    { _piwtipXgafv          :: !(Maybe Xgafv)
    , _piwtipUploadProtocol :: !(Maybe Text)
    , _piwtipAccessToken    :: !(Maybe Text)
    , _piwtipUploadType     :: !(Maybe Text)
    , _piwtipPayload        :: !TestIAMPermissionsRequest
    , _piwtipResource       :: !Text
    , _piwtipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapWebTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwtipXgafv'
--
-- * 'piwtipUploadProtocol'
--
-- * 'piwtipAccessToken'
--
-- * 'piwtipUploadType'
--
-- * 'piwtipPayload'
--
-- * 'piwtipResource'
--
-- * 'piwtipCallback'
projectsIapWebTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'piwtipPayload'
    -> Text -- ^ 'piwtipResource'
    -> ProjectsIapWebTestIAMPermissions
projectsIapWebTestIAMPermissions pPiwtipPayload_ pPiwtipResource_ =
    ProjectsIapWebTestIAMPermissions'
    { _piwtipXgafv = Nothing
    , _piwtipUploadProtocol = Nothing
    , _piwtipAccessToken = Nothing
    , _piwtipUploadType = Nothing
    , _piwtipPayload = pPiwtipPayload_
    , _piwtipResource = pPiwtipResource_
    , _piwtipCallback = Nothing
    }

-- | V1 error format.
piwtipXgafv :: Lens' ProjectsIapWebTestIAMPermissions (Maybe Xgafv)
piwtipXgafv
  = lens _piwtipXgafv (\ s a -> s{_piwtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwtipUploadProtocol :: Lens' ProjectsIapWebTestIAMPermissions (Maybe Text)
piwtipUploadProtocol
  = lens _piwtipUploadProtocol
      (\ s a -> s{_piwtipUploadProtocol = a})

-- | OAuth access token.
piwtipAccessToken :: Lens' ProjectsIapWebTestIAMPermissions (Maybe Text)
piwtipAccessToken
  = lens _piwtipAccessToken
      (\ s a -> s{_piwtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwtipUploadType :: Lens' ProjectsIapWebTestIAMPermissions (Maybe Text)
piwtipUploadType
  = lens _piwtipUploadType
      (\ s a -> s{_piwtipUploadType = a})

-- | Multipart request metadata.
piwtipPayload :: Lens' ProjectsIapWebTestIAMPermissions TestIAMPermissionsRequest
piwtipPayload
  = lens _piwtipPayload
      (\ s a -> s{_piwtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
piwtipResource :: Lens' ProjectsIapWebTestIAMPermissions Text
piwtipResource
  = lens _piwtipResource
      (\ s a -> s{_piwtipResource = a})

-- | JSONP
piwtipCallback :: Lens' ProjectsIapWebTestIAMPermissions (Maybe Text)
piwtipCallback
  = lens _piwtipCallback
      (\ s a -> s{_piwtipCallback = a})

instance GoogleRequest
         ProjectsIapWebTestIAMPermissions where
        type Rs ProjectsIapWebTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsIapWebTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapWebTestIAMPermissions'{..}
          = go _piwtipResource _piwtipXgafv
              _piwtipUploadProtocol
              _piwtipAccessToken
              _piwtipUploadType
              _piwtipCallback
              (Just AltJSON)
              _piwtipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsIapWebTestIAMPermissionsResource)
                      mempty
