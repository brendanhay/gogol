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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.getIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsAutoscalingPoliciesGetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsAutoscalingPoliciesGetIAMPolicy
    , ProjectsRegionsAutoscalingPoliciesGetIAMPolicy

    -- * Request Lenses
    , prapgipXgafv
    , prapgipUploadProtocol
    , prapgipAccessToken
    , prapgipUploadType
    , prapgipPayload
    , prapgipResource
    , prapgipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.getIamPolicy@ method which the
-- 'ProjectsRegionsAutoscalingPoliciesGetIAMPolicy' request conforms to.
type ProjectsRegionsAutoscalingPoliciesGetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsRegionsAutoscalingPoliciesGetIAMPolicy' smart constructor.
data ProjectsRegionsAutoscalingPoliciesGetIAMPolicy =
  ProjectsRegionsAutoscalingPoliciesGetIAMPolicy'
    { _prapgipXgafv :: !(Maybe Xgafv)
    , _prapgipUploadProtocol :: !(Maybe Text)
    , _prapgipAccessToken :: !(Maybe Text)
    , _prapgipUploadType :: !(Maybe Text)
    , _prapgipPayload :: !GetIAMPolicyRequest
    , _prapgipResource :: !Text
    , _prapgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsAutoscalingPoliciesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prapgipXgafv'
--
-- * 'prapgipUploadProtocol'
--
-- * 'prapgipAccessToken'
--
-- * 'prapgipUploadType'
--
-- * 'prapgipPayload'
--
-- * 'prapgipResource'
--
-- * 'prapgipCallback'
projectsRegionsAutoscalingPoliciesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'prapgipPayload'
    -> Text -- ^ 'prapgipResource'
    -> ProjectsRegionsAutoscalingPoliciesGetIAMPolicy
projectsRegionsAutoscalingPoliciesGetIAMPolicy pPrapgipPayload_ pPrapgipResource_ =
  ProjectsRegionsAutoscalingPoliciesGetIAMPolicy'
    { _prapgipXgafv = Nothing
    , _prapgipUploadProtocol = Nothing
    , _prapgipAccessToken = Nothing
    , _prapgipUploadType = Nothing
    , _prapgipPayload = pPrapgipPayload_
    , _prapgipResource = pPrapgipResource_
    , _prapgipCallback = Nothing
    }


-- | V1 error format.
prapgipXgafv :: Lens' ProjectsRegionsAutoscalingPoliciesGetIAMPolicy (Maybe Xgafv)
prapgipXgafv
  = lens _prapgipXgafv (\ s a -> s{_prapgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prapgipUploadProtocol :: Lens' ProjectsRegionsAutoscalingPoliciesGetIAMPolicy (Maybe Text)
prapgipUploadProtocol
  = lens _prapgipUploadProtocol
      (\ s a -> s{_prapgipUploadProtocol = a})

-- | OAuth access token.
prapgipAccessToken :: Lens' ProjectsRegionsAutoscalingPoliciesGetIAMPolicy (Maybe Text)
prapgipAccessToken
  = lens _prapgipAccessToken
      (\ s a -> s{_prapgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prapgipUploadType :: Lens' ProjectsRegionsAutoscalingPoliciesGetIAMPolicy (Maybe Text)
prapgipUploadType
  = lens _prapgipUploadType
      (\ s a -> s{_prapgipUploadType = a})

-- | Multipart request metadata.
prapgipPayload :: Lens' ProjectsRegionsAutoscalingPoliciesGetIAMPolicy GetIAMPolicyRequest
prapgipPayload
  = lens _prapgipPayload
      (\ s a -> s{_prapgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
prapgipResource :: Lens' ProjectsRegionsAutoscalingPoliciesGetIAMPolicy Text
prapgipResource
  = lens _prapgipResource
      (\ s a -> s{_prapgipResource = a})

-- | JSONP
prapgipCallback :: Lens' ProjectsRegionsAutoscalingPoliciesGetIAMPolicy (Maybe Text)
prapgipCallback
  = lens _prapgipCallback
      (\ s a -> s{_prapgipCallback = a})

instance GoogleRequest
           ProjectsRegionsAutoscalingPoliciesGetIAMPolicy
         where
        type Rs
               ProjectsRegionsAutoscalingPoliciesGetIAMPolicy
             = Policy
        type Scopes
               ProjectsRegionsAutoscalingPoliciesGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsAutoscalingPoliciesGetIAMPolicy'{..}
          = go _prapgipResource _prapgipXgafv
              _prapgipUploadProtocol
              _prapgipAccessToken
              _prapgipUploadType
              _prapgipCallback
              (Just AltJSON)
              _prapgipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsAutoscalingPoliciesGetIAMPolicyResource)
                      mempty
