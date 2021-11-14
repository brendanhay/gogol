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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.getIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsAutoscalingPoliciesGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsAutoscalingPoliciesGetIAMPolicy
    , ProjectsLocationsAutoscalingPoliciesGetIAMPolicy

    -- * Request Lenses
    , plapgipXgafv
    , plapgipUploadProtocol
    , plapgipAccessToken
    , plapgipUploadType
    , plapgipPayload
    , plapgipResource
    , plapgipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.getIamPolicy@ method which the
-- 'ProjectsLocationsAutoscalingPoliciesGetIAMPolicy' request conforms to.
type ProjectsLocationsAutoscalingPoliciesGetIAMPolicyResource
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
-- /See:/ 'projectsLocationsAutoscalingPoliciesGetIAMPolicy' smart constructor.
data ProjectsLocationsAutoscalingPoliciesGetIAMPolicy =
  ProjectsLocationsAutoscalingPoliciesGetIAMPolicy'
    { _plapgipXgafv :: !(Maybe Xgafv)
    , _plapgipUploadProtocol :: !(Maybe Text)
    , _plapgipAccessToken :: !(Maybe Text)
    , _plapgipUploadType :: !(Maybe Text)
    , _plapgipPayload :: !GetIAMPolicyRequest
    , _plapgipResource :: !Text
    , _plapgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAutoscalingPoliciesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plapgipXgafv'
--
-- * 'plapgipUploadProtocol'
--
-- * 'plapgipAccessToken'
--
-- * 'plapgipUploadType'
--
-- * 'plapgipPayload'
--
-- * 'plapgipResource'
--
-- * 'plapgipCallback'
projectsLocationsAutoscalingPoliciesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'plapgipPayload'
    -> Text -- ^ 'plapgipResource'
    -> ProjectsLocationsAutoscalingPoliciesGetIAMPolicy
projectsLocationsAutoscalingPoliciesGetIAMPolicy pPlapgipPayload_ pPlapgipResource_ =
  ProjectsLocationsAutoscalingPoliciesGetIAMPolicy'
    { _plapgipXgafv = Nothing
    , _plapgipUploadProtocol = Nothing
    , _plapgipAccessToken = Nothing
    , _plapgipUploadType = Nothing
    , _plapgipPayload = pPlapgipPayload_
    , _plapgipResource = pPlapgipResource_
    , _plapgipCallback = Nothing
    }


-- | V1 error format.
plapgipXgafv :: Lens' ProjectsLocationsAutoscalingPoliciesGetIAMPolicy (Maybe Xgafv)
plapgipXgafv
  = lens _plapgipXgafv (\ s a -> s{_plapgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plapgipUploadProtocol :: Lens' ProjectsLocationsAutoscalingPoliciesGetIAMPolicy (Maybe Text)
plapgipUploadProtocol
  = lens _plapgipUploadProtocol
      (\ s a -> s{_plapgipUploadProtocol = a})

-- | OAuth access token.
plapgipAccessToken :: Lens' ProjectsLocationsAutoscalingPoliciesGetIAMPolicy (Maybe Text)
plapgipAccessToken
  = lens _plapgipAccessToken
      (\ s a -> s{_plapgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plapgipUploadType :: Lens' ProjectsLocationsAutoscalingPoliciesGetIAMPolicy (Maybe Text)
plapgipUploadType
  = lens _plapgipUploadType
      (\ s a -> s{_plapgipUploadType = a})

-- | Multipart request metadata.
plapgipPayload :: Lens' ProjectsLocationsAutoscalingPoliciesGetIAMPolicy GetIAMPolicyRequest
plapgipPayload
  = lens _plapgipPayload
      (\ s a -> s{_plapgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plapgipResource :: Lens' ProjectsLocationsAutoscalingPoliciesGetIAMPolicy Text
plapgipResource
  = lens _plapgipResource
      (\ s a -> s{_plapgipResource = a})

-- | JSONP
plapgipCallback :: Lens' ProjectsLocationsAutoscalingPoliciesGetIAMPolicy (Maybe Text)
plapgipCallback
  = lens _plapgipCallback
      (\ s a -> s{_plapgipCallback = a})

instance GoogleRequest
           ProjectsLocationsAutoscalingPoliciesGetIAMPolicy
         where
        type Rs
               ProjectsLocationsAutoscalingPoliciesGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsAutoscalingPoliciesGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAutoscalingPoliciesGetIAMPolicy'{..}
          = go _plapgipResource _plapgipXgafv
              _plapgipUploadProtocol
              _plapgipAccessToken
              _plapgipUploadType
              _plapgipCallback
              (Just AltJSON)
              _plapgipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAutoscalingPoliciesGetIAMPolicyResource)
                      mempty
