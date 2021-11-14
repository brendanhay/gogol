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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.getIamPolicy@.
module Network.Google.Resource.DeploymentManager.Deployments.GetIAMPolicy
    (
    -- * REST Resource
      DeploymentsGetIAMPolicyResource

    -- * Creating a Request
    , deploymentsGetIAMPolicy
    , DeploymentsGetIAMPolicy

    -- * Request Lenses
    , dgipXgafv
    , dgipUploadProtocol
    , dgipProject
    , dgipAccessToken
    , dgipUploadType
    , dgipResource
    , dgipOptionsRequestedPolicyVersion
    , dgipCallback
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.getIamPolicy@ method which the
-- 'DeploymentsGetIAMPolicy' request conforms to.
type DeploymentsGetIAMPolicyResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "resource" Text :>
                   "getIamPolicy" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "optionsRequestedPolicyVersion"
                               (Textual Int32)
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'deploymentsGetIAMPolicy' smart constructor.
data DeploymentsGetIAMPolicy =
  DeploymentsGetIAMPolicy'
    { _dgipXgafv :: !(Maybe Xgafv)
    , _dgipUploadProtocol :: !(Maybe Text)
    , _dgipProject :: !Text
    , _dgipAccessToken :: !(Maybe Text)
    , _dgipUploadType :: !(Maybe Text)
    , _dgipResource :: !Text
    , _dgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _dgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgipXgafv'
--
-- * 'dgipUploadProtocol'
--
-- * 'dgipProject'
--
-- * 'dgipAccessToken'
--
-- * 'dgipUploadType'
--
-- * 'dgipResource'
--
-- * 'dgipOptionsRequestedPolicyVersion'
--
-- * 'dgipCallback'
deploymentsGetIAMPolicy
    :: Text -- ^ 'dgipProject'
    -> Text -- ^ 'dgipResource'
    -> DeploymentsGetIAMPolicy
deploymentsGetIAMPolicy pDgipProject_ pDgipResource_ =
  DeploymentsGetIAMPolicy'
    { _dgipXgafv = Nothing
    , _dgipUploadProtocol = Nothing
    , _dgipProject = pDgipProject_
    , _dgipAccessToken = Nothing
    , _dgipUploadType = Nothing
    , _dgipResource = pDgipResource_
    , _dgipOptionsRequestedPolicyVersion = Nothing
    , _dgipCallback = Nothing
    }


-- | V1 error format.
dgipXgafv :: Lens' DeploymentsGetIAMPolicy (Maybe Xgafv)
dgipXgafv
  = lens _dgipXgafv (\ s a -> s{_dgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgipUploadProtocol :: Lens' DeploymentsGetIAMPolicy (Maybe Text)
dgipUploadProtocol
  = lens _dgipUploadProtocol
      (\ s a -> s{_dgipUploadProtocol = a})

-- | Project ID for this request.
dgipProject :: Lens' DeploymentsGetIAMPolicy Text
dgipProject
  = lens _dgipProject (\ s a -> s{_dgipProject = a})

-- | OAuth access token.
dgipAccessToken :: Lens' DeploymentsGetIAMPolicy (Maybe Text)
dgipAccessToken
  = lens _dgipAccessToken
      (\ s a -> s{_dgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgipUploadType :: Lens' DeploymentsGetIAMPolicy (Maybe Text)
dgipUploadType
  = lens _dgipUploadType
      (\ s a -> s{_dgipUploadType = a})

-- | Name or id of the resource for this request.
dgipResource :: Lens' DeploymentsGetIAMPolicy Text
dgipResource
  = lens _dgipResource (\ s a -> s{_dgipResource = a})

-- | Requested IAM Policy version.
dgipOptionsRequestedPolicyVersion :: Lens' DeploymentsGetIAMPolicy (Maybe Int32)
dgipOptionsRequestedPolicyVersion
  = lens _dgipOptionsRequestedPolicyVersion
      (\ s a -> s{_dgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | JSONP
dgipCallback :: Lens' DeploymentsGetIAMPolicy (Maybe Text)
dgipCallback
  = lens _dgipCallback (\ s a -> s{_dgipCallback = a})

instance GoogleRequest DeploymentsGetIAMPolicy where
        type Rs DeploymentsGetIAMPolicy = Policy
        type Scopes DeploymentsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsGetIAMPolicy'{..}
          = go _dgipProject _dgipResource _dgipXgafv
              _dgipUploadProtocol
              _dgipAccessToken
              _dgipUploadType
              _dgipOptionsRequestedPolicyVersion
              _dgipCallback
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsGetIAMPolicyResource)
                      mempty
