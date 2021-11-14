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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
-- PERMISSION_DENIED errors.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.setIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsAutoscalingPoliciesSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsAutoscalingPoliciesSetIAMPolicy
    , ProjectsLocationsAutoscalingPoliciesSetIAMPolicy

    -- * Request Lenses
    , plapsipXgafv
    , plapsipUploadProtocol
    , plapsipAccessToken
    , plapsipUploadType
    , plapsipPayload
    , plapsipResource
    , plapsipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.setIamPolicy@ method which the
-- 'ProjectsLocationsAutoscalingPoliciesSetIAMPolicy' request conforms to.
type ProjectsLocationsAutoscalingPoliciesSetIAMPolicyResource
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
-- /See:/ 'projectsLocationsAutoscalingPoliciesSetIAMPolicy' smart constructor.
data ProjectsLocationsAutoscalingPoliciesSetIAMPolicy =
  ProjectsLocationsAutoscalingPoliciesSetIAMPolicy'
    { _plapsipXgafv :: !(Maybe Xgafv)
    , _plapsipUploadProtocol :: !(Maybe Text)
    , _plapsipAccessToken :: !(Maybe Text)
    , _plapsipUploadType :: !(Maybe Text)
    , _plapsipPayload :: !SetIAMPolicyRequest
    , _plapsipResource :: !Text
    , _plapsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAutoscalingPoliciesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plapsipXgafv'
--
-- * 'plapsipUploadProtocol'
--
-- * 'plapsipAccessToken'
--
-- * 'plapsipUploadType'
--
-- * 'plapsipPayload'
--
-- * 'plapsipResource'
--
-- * 'plapsipCallback'
projectsLocationsAutoscalingPoliciesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plapsipPayload'
    -> Text -- ^ 'plapsipResource'
    -> ProjectsLocationsAutoscalingPoliciesSetIAMPolicy
projectsLocationsAutoscalingPoliciesSetIAMPolicy pPlapsipPayload_ pPlapsipResource_ =
  ProjectsLocationsAutoscalingPoliciesSetIAMPolicy'
    { _plapsipXgafv = Nothing
    , _plapsipUploadProtocol = Nothing
    , _plapsipAccessToken = Nothing
    , _plapsipUploadType = Nothing
    , _plapsipPayload = pPlapsipPayload_
    , _plapsipResource = pPlapsipResource_
    , _plapsipCallback = Nothing
    }


-- | V1 error format.
plapsipXgafv :: Lens' ProjectsLocationsAutoscalingPoliciesSetIAMPolicy (Maybe Xgafv)
plapsipXgafv
  = lens _plapsipXgafv (\ s a -> s{_plapsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plapsipUploadProtocol :: Lens' ProjectsLocationsAutoscalingPoliciesSetIAMPolicy (Maybe Text)
plapsipUploadProtocol
  = lens _plapsipUploadProtocol
      (\ s a -> s{_plapsipUploadProtocol = a})

-- | OAuth access token.
plapsipAccessToken :: Lens' ProjectsLocationsAutoscalingPoliciesSetIAMPolicy (Maybe Text)
plapsipAccessToken
  = lens _plapsipAccessToken
      (\ s a -> s{_plapsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plapsipUploadType :: Lens' ProjectsLocationsAutoscalingPoliciesSetIAMPolicy (Maybe Text)
plapsipUploadType
  = lens _plapsipUploadType
      (\ s a -> s{_plapsipUploadType = a})

-- | Multipart request metadata.
plapsipPayload :: Lens' ProjectsLocationsAutoscalingPoliciesSetIAMPolicy SetIAMPolicyRequest
plapsipPayload
  = lens _plapsipPayload
      (\ s a -> s{_plapsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plapsipResource :: Lens' ProjectsLocationsAutoscalingPoliciesSetIAMPolicy Text
plapsipResource
  = lens _plapsipResource
      (\ s a -> s{_plapsipResource = a})

-- | JSONP
plapsipCallback :: Lens' ProjectsLocationsAutoscalingPoliciesSetIAMPolicy (Maybe Text)
plapsipCallback
  = lens _plapsipCallback
      (\ s a -> s{_plapsipCallback = a})

instance GoogleRequest
           ProjectsLocationsAutoscalingPoliciesSetIAMPolicy
         where
        type Rs
               ProjectsLocationsAutoscalingPoliciesSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsAutoscalingPoliciesSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAutoscalingPoliciesSetIAMPolicy'{..}
          = go _plapsipResource _plapsipXgafv
              _plapsipUploadProtocol
              _plapsipAccessToken
              _plapsipUploadType
              _plapsipCallback
              (Just AltJSON)
              _plapsipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAutoscalingPoliciesSetIAMPolicyResource)
                      mempty
