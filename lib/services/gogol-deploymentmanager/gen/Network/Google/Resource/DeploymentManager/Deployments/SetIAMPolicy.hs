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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.setIamPolicy@.
module Network.Google.Resource.DeploymentManager.Deployments.SetIAMPolicy
    (
    -- * REST Resource
      DeploymentsSetIAMPolicyResource

    -- * Creating a Request
    , deploymentsSetIAMPolicy
    , DeploymentsSetIAMPolicy

    -- * Request Lenses
    , dsipXgafv
    , dsipUploadProtocol
    , dsipProject
    , dsipAccessToken
    , dsipUploadType
    , dsipPayload
    , dsipResource
    , dsipCallback
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.setIamPolicy@ method which the
-- 'DeploymentsSetIAMPolicy' request conforms to.
type DeploymentsSetIAMPolicyResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "resource" Text :>
                   "setIamPolicy" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] GlobalSetPolicyRequest :>
                                   Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'deploymentsSetIAMPolicy' smart constructor.
data DeploymentsSetIAMPolicy =
  DeploymentsSetIAMPolicy'
    { _dsipXgafv :: !(Maybe Xgafv)
    , _dsipUploadProtocol :: !(Maybe Text)
    , _dsipProject :: !Text
    , _dsipAccessToken :: !(Maybe Text)
    , _dsipUploadType :: !(Maybe Text)
    , _dsipPayload :: !GlobalSetPolicyRequest
    , _dsipResource :: !Text
    , _dsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsipXgafv'
--
-- * 'dsipUploadProtocol'
--
-- * 'dsipProject'
--
-- * 'dsipAccessToken'
--
-- * 'dsipUploadType'
--
-- * 'dsipPayload'
--
-- * 'dsipResource'
--
-- * 'dsipCallback'
deploymentsSetIAMPolicy
    :: Text -- ^ 'dsipProject'
    -> GlobalSetPolicyRequest -- ^ 'dsipPayload'
    -> Text -- ^ 'dsipResource'
    -> DeploymentsSetIAMPolicy
deploymentsSetIAMPolicy pDsipProject_ pDsipPayload_ pDsipResource_ =
  DeploymentsSetIAMPolicy'
    { _dsipXgafv = Nothing
    , _dsipUploadProtocol = Nothing
    , _dsipProject = pDsipProject_
    , _dsipAccessToken = Nothing
    , _dsipUploadType = Nothing
    , _dsipPayload = pDsipPayload_
    , _dsipResource = pDsipResource_
    , _dsipCallback = Nothing
    }


-- | V1 error format.
dsipXgafv :: Lens' DeploymentsSetIAMPolicy (Maybe Xgafv)
dsipXgafv
  = lens _dsipXgafv (\ s a -> s{_dsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsipUploadProtocol :: Lens' DeploymentsSetIAMPolicy (Maybe Text)
dsipUploadProtocol
  = lens _dsipUploadProtocol
      (\ s a -> s{_dsipUploadProtocol = a})

-- | Project ID for this request.
dsipProject :: Lens' DeploymentsSetIAMPolicy Text
dsipProject
  = lens _dsipProject (\ s a -> s{_dsipProject = a})

-- | OAuth access token.
dsipAccessToken :: Lens' DeploymentsSetIAMPolicy (Maybe Text)
dsipAccessToken
  = lens _dsipAccessToken
      (\ s a -> s{_dsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsipUploadType :: Lens' DeploymentsSetIAMPolicy (Maybe Text)
dsipUploadType
  = lens _dsipUploadType
      (\ s a -> s{_dsipUploadType = a})

-- | Multipart request metadata.
dsipPayload :: Lens' DeploymentsSetIAMPolicy GlobalSetPolicyRequest
dsipPayload
  = lens _dsipPayload (\ s a -> s{_dsipPayload = a})

-- | Name or id of the resource for this request.
dsipResource :: Lens' DeploymentsSetIAMPolicy Text
dsipResource
  = lens _dsipResource (\ s a -> s{_dsipResource = a})

-- | JSONP
dsipCallback :: Lens' DeploymentsSetIAMPolicy (Maybe Text)
dsipCallback
  = lens _dsipCallback (\ s a -> s{_dsipCallback = a})

instance GoogleRequest DeploymentsSetIAMPolicy where
        type Rs DeploymentsSetIAMPolicy = Policy
        type Scopes DeploymentsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsSetIAMPolicy'{..}
          = go _dsipProject _dsipResource _dsipXgafv
              _dsipUploadProtocol
              _dsipAccessToken
              _dsipUploadType
              _dsipCallback
              (Just AltJSON)
              _dsipPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsSetIAMPolicyResource)
                      mempty
