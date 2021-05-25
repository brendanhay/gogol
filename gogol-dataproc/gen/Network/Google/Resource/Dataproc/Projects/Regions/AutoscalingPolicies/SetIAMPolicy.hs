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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
-- PERMISSION_DENIED errors.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.setIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsAutoscalingPoliciesSetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsAutoscalingPoliciesSetIAMPolicy
    , ProjectsRegionsAutoscalingPoliciesSetIAMPolicy

    -- * Request Lenses
    , prapsipXgafv
    , prapsipUploadProtocol
    , prapsipAccessToken
    , prapsipUploadType
    , prapsipPayload
    , prapsipResource
    , prapsipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.setIamPolicy@ method which the
-- 'ProjectsRegionsAutoscalingPoliciesSetIAMPolicy' request conforms to.
type ProjectsRegionsAutoscalingPoliciesSetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
-- PERMISSION_DENIED errors.
--
-- /See:/ 'projectsRegionsAutoscalingPoliciesSetIAMPolicy' smart constructor.
data ProjectsRegionsAutoscalingPoliciesSetIAMPolicy =
  ProjectsRegionsAutoscalingPoliciesSetIAMPolicy'
    { _prapsipXgafv :: !(Maybe Xgafv)
    , _prapsipUploadProtocol :: !(Maybe Text)
    , _prapsipAccessToken :: !(Maybe Text)
    , _prapsipUploadType :: !(Maybe Text)
    , _prapsipPayload :: !SetIAMPolicyRequest
    , _prapsipResource :: !Text
    , _prapsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsAutoscalingPoliciesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prapsipXgafv'
--
-- * 'prapsipUploadProtocol'
--
-- * 'prapsipAccessToken'
--
-- * 'prapsipUploadType'
--
-- * 'prapsipPayload'
--
-- * 'prapsipResource'
--
-- * 'prapsipCallback'
projectsRegionsAutoscalingPoliciesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'prapsipPayload'
    -> Text -- ^ 'prapsipResource'
    -> ProjectsRegionsAutoscalingPoliciesSetIAMPolicy
projectsRegionsAutoscalingPoliciesSetIAMPolicy pPrapsipPayload_ pPrapsipResource_ =
  ProjectsRegionsAutoscalingPoliciesSetIAMPolicy'
    { _prapsipXgafv = Nothing
    , _prapsipUploadProtocol = Nothing
    , _prapsipAccessToken = Nothing
    , _prapsipUploadType = Nothing
    , _prapsipPayload = pPrapsipPayload_
    , _prapsipResource = pPrapsipResource_
    , _prapsipCallback = Nothing
    }


-- | V1 error format.
prapsipXgafv :: Lens' ProjectsRegionsAutoscalingPoliciesSetIAMPolicy (Maybe Xgafv)
prapsipXgafv
  = lens _prapsipXgafv (\ s a -> s{_prapsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prapsipUploadProtocol :: Lens' ProjectsRegionsAutoscalingPoliciesSetIAMPolicy (Maybe Text)
prapsipUploadProtocol
  = lens _prapsipUploadProtocol
      (\ s a -> s{_prapsipUploadProtocol = a})

-- | OAuth access token.
prapsipAccessToken :: Lens' ProjectsRegionsAutoscalingPoliciesSetIAMPolicy (Maybe Text)
prapsipAccessToken
  = lens _prapsipAccessToken
      (\ s a -> s{_prapsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prapsipUploadType :: Lens' ProjectsRegionsAutoscalingPoliciesSetIAMPolicy (Maybe Text)
prapsipUploadType
  = lens _prapsipUploadType
      (\ s a -> s{_prapsipUploadType = a})

-- | Multipart request metadata.
prapsipPayload :: Lens' ProjectsRegionsAutoscalingPoliciesSetIAMPolicy SetIAMPolicyRequest
prapsipPayload
  = lens _prapsipPayload
      (\ s a -> s{_prapsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
prapsipResource :: Lens' ProjectsRegionsAutoscalingPoliciesSetIAMPolicy Text
prapsipResource
  = lens _prapsipResource
      (\ s a -> s{_prapsipResource = a})

-- | JSONP
prapsipCallback :: Lens' ProjectsRegionsAutoscalingPoliciesSetIAMPolicy (Maybe Text)
prapsipCallback
  = lens _prapsipCallback
      (\ s a -> s{_prapsipCallback = a})

instance GoogleRequest
           ProjectsRegionsAutoscalingPoliciesSetIAMPolicy
         where
        type Rs
               ProjectsRegionsAutoscalingPoliciesSetIAMPolicy
             = Policy
        type Scopes
               ProjectsRegionsAutoscalingPoliciesSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsAutoscalingPoliciesSetIAMPolicy'{..}
          = go _prapsipResource _prapsipXgafv
              _prapsipUploadProtocol
              _prapsipAccessToken
              _prapsipUploadType
              _prapsipCallback
              (Just AltJSON)
              _prapsipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsAutoscalingPoliciesSetIAMPolicyResource)
                      mempty
