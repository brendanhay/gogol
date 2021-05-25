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
-- Module      : Network.Google.Resource.Ml.Projects.Jobs.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.jobs.getIamPolicy@.
module Network.Google.Resource.Ml.Projects.Jobs.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsJobsGetIAMPolicyResource

    -- * Creating a Request
    , projectsJobsGetIAMPolicy
    , ProjectsJobsGetIAMPolicy

    -- * Request Lenses
    , pjgipOptionsRequestedPolicyVersion
    , pjgipXgafv
    , pjgipUploadProtocol
    , pjgipAccessToken
    , pjgipUploadType
    , pjgipResource
    , pjgipCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.jobs.getIamPolicy@ method which the
-- 'ProjectsJobsGetIAMPolicy' request conforms to.
type ProjectsJobsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "options.requestedPolicyVersion"
           (Textual Int32)
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleIAMV1__Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsJobsGetIAMPolicy' smart constructor.
data ProjectsJobsGetIAMPolicy =
  ProjectsJobsGetIAMPolicy'
    { _pjgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _pjgipXgafv :: !(Maybe Xgafv)
    , _pjgipUploadProtocol :: !(Maybe Text)
    , _pjgipAccessToken :: !(Maybe Text)
    , _pjgipUploadType :: !(Maybe Text)
    , _pjgipResource :: !Text
    , _pjgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjgipOptionsRequestedPolicyVersion'
--
-- * 'pjgipXgafv'
--
-- * 'pjgipUploadProtocol'
--
-- * 'pjgipAccessToken'
--
-- * 'pjgipUploadType'
--
-- * 'pjgipResource'
--
-- * 'pjgipCallback'
projectsJobsGetIAMPolicy
    :: Text -- ^ 'pjgipResource'
    -> ProjectsJobsGetIAMPolicy
projectsJobsGetIAMPolicy pPjgipResource_ =
  ProjectsJobsGetIAMPolicy'
    { _pjgipOptionsRequestedPolicyVersion = Nothing
    , _pjgipXgafv = Nothing
    , _pjgipUploadProtocol = Nothing
    , _pjgipAccessToken = Nothing
    , _pjgipUploadType = Nothing
    , _pjgipResource = pPjgipResource_
    , _pjgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pjgipOptionsRequestedPolicyVersion :: Lens' ProjectsJobsGetIAMPolicy (Maybe Int32)
pjgipOptionsRequestedPolicyVersion
  = lens _pjgipOptionsRequestedPolicyVersion
      (\ s a -> s{_pjgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
pjgipXgafv :: Lens' ProjectsJobsGetIAMPolicy (Maybe Xgafv)
pjgipXgafv
  = lens _pjgipXgafv (\ s a -> s{_pjgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjgipUploadProtocol :: Lens' ProjectsJobsGetIAMPolicy (Maybe Text)
pjgipUploadProtocol
  = lens _pjgipUploadProtocol
      (\ s a -> s{_pjgipUploadProtocol = a})

-- | OAuth access token.
pjgipAccessToken :: Lens' ProjectsJobsGetIAMPolicy (Maybe Text)
pjgipAccessToken
  = lens _pjgipAccessToken
      (\ s a -> s{_pjgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjgipUploadType :: Lens' ProjectsJobsGetIAMPolicy (Maybe Text)
pjgipUploadType
  = lens _pjgipUploadType
      (\ s a -> s{_pjgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pjgipResource :: Lens' ProjectsJobsGetIAMPolicy Text
pjgipResource
  = lens _pjgipResource
      (\ s a -> s{_pjgipResource = a})

-- | JSONP
pjgipCallback :: Lens' ProjectsJobsGetIAMPolicy (Maybe Text)
pjgipCallback
  = lens _pjgipCallback
      (\ s a -> s{_pjgipCallback = a})

instance GoogleRequest ProjectsJobsGetIAMPolicy where
        type Rs ProjectsJobsGetIAMPolicy =
             GoogleIAMV1__Policy
        type Scopes ProjectsJobsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobsGetIAMPolicy'{..}
          = go _pjgipResource
              _pjgipOptionsRequestedPolicyVersion
              _pjgipXgafv
              _pjgipUploadProtocol
              _pjgipAccessToken
              _pjgipUploadType
              _pjgipCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsGetIAMPolicyResource)
                      mempty
