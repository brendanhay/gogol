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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.testIamPermissions@.
module Network.Google.Resource.DeploymentManager.Deployments.TestIAMPermissions
    (
    -- * REST Resource
      DeploymentsTestIAMPermissionsResource

    -- * Creating a Request
    , deploymentsTestIAMPermissions
    , DeploymentsTestIAMPermissions

    -- * Request Lenses
    , dtipXgafv
    , dtipUploadProtocol
    , dtipProject
    , dtipAccessToken
    , dtipUploadType
    , dtipPayload
    , dtipResource
    , dtipCallback
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.testIamPermissions@ method which the
-- 'DeploymentsTestIAMPermissions' request conforms to.
type DeploymentsTestIAMPermissionsResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "resource" Text :>
                   "testIamPermissions" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] TestPermissionsRequest :>
                                   Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'deploymentsTestIAMPermissions' smart constructor.
data DeploymentsTestIAMPermissions =
  DeploymentsTestIAMPermissions'
    { _dtipXgafv :: !(Maybe Xgafv)
    , _dtipUploadProtocol :: !(Maybe Text)
    , _dtipProject :: !Text
    , _dtipAccessToken :: !(Maybe Text)
    , _dtipUploadType :: !(Maybe Text)
    , _dtipPayload :: !TestPermissionsRequest
    , _dtipResource :: !Text
    , _dtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtipXgafv'
--
-- * 'dtipUploadProtocol'
--
-- * 'dtipProject'
--
-- * 'dtipAccessToken'
--
-- * 'dtipUploadType'
--
-- * 'dtipPayload'
--
-- * 'dtipResource'
--
-- * 'dtipCallback'
deploymentsTestIAMPermissions
    :: Text -- ^ 'dtipProject'
    -> TestPermissionsRequest -- ^ 'dtipPayload'
    -> Text -- ^ 'dtipResource'
    -> DeploymentsTestIAMPermissions
deploymentsTestIAMPermissions pDtipProject_ pDtipPayload_ pDtipResource_ =
  DeploymentsTestIAMPermissions'
    { _dtipXgafv = Nothing
    , _dtipUploadProtocol = Nothing
    , _dtipProject = pDtipProject_
    , _dtipAccessToken = Nothing
    , _dtipUploadType = Nothing
    , _dtipPayload = pDtipPayload_
    , _dtipResource = pDtipResource_
    , _dtipCallback = Nothing
    }


-- | V1 error format.
dtipXgafv :: Lens' DeploymentsTestIAMPermissions (Maybe Xgafv)
dtipXgafv
  = lens _dtipXgafv (\ s a -> s{_dtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dtipUploadProtocol :: Lens' DeploymentsTestIAMPermissions (Maybe Text)
dtipUploadProtocol
  = lens _dtipUploadProtocol
      (\ s a -> s{_dtipUploadProtocol = a})

-- | Project ID for this request.
dtipProject :: Lens' DeploymentsTestIAMPermissions Text
dtipProject
  = lens _dtipProject (\ s a -> s{_dtipProject = a})

-- | OAuth access token.
dtipAccessToken :: Lens' DeploymentsTestIAMPermissions (Maybe Text)
dtipAccessToken
  = lens _dtipAccessToken
      (\ s a -> s{_dtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dtipUploadType :: Lens' DeploymentsTestIAMPermissions (Maybe Text)
dtipUploadType
  = lens _dtipUploadType
      (\ s a -> s{_dtipUploadType = a})

-- | Multipart request metadata.
dtipPayload :: Lens' DeploymentsTestIAMPermissions TestPermissionsRequest
dtipPayload
  = lens _dtipPayload (\ s a -> s{_dtipPayload = a})

-- | Name or id of the resource for this request.
dtipResource :: Lens' DeploymentsTestIAMPermissions Text
dtipResource
  = lens _dtipResource (\ s a -> s{_dtipResource = a})

-- | JSONP
dtipCallback :: Lens' DeploymentsTestIAMPermissions (Maybe Text)
dtipCallback
  = lens _dtipCallback (\ s a -> s{_dtipCallback = a})

instance GoogleRequest DeploymentsTestIAMPermissions
         where
        type Rs DeploymentsTestIAMPermissions =
             TestPermissionsResponse
        type Scopes DeploymentsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsTestIAMPermissions'{..}
          = go _dtipProject _dtipResource _dtipXgafv
              _dtipUploadProtocol
              _dtipAccessToken
              _dtipUploadType
              _dtipCallback
              (Just AltJSON)
              _dtipPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DeploymentsTestIAMPermissionsResource)
                      mempty
