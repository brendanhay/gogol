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
-- Module      : Network.Google.Resource.Ml.Projects.Models.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.getIamPolicy@.
module Network.Google.Resource.Ml.Projects.Models.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsModelsGetIAMPolicyResource

    -- * Creating a Request
    , projectsModelsGetIAMPolicy
    , ProjectsModelsGetIAMPolicy

    -- * Request Lenses
    , pmgipOptionsRequestedPolicyVersion
    , pmgipXgafv
    , pmgipUploadProtocol
    , pmgipAccessToken
    , pmgipUploadType
    , pmgipResource
    , pmgipCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.models.getIamPolicy@ method which the
-- 'ProjectsModelsGetIAMPolicy' request conforms to.
type ProjectsModelsGetIAMPolicyResource =
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
-- /See:/ 'projectsModelsGetIAMPolicy' smart constructor.
data ProjectsModelsGetIAMPolicy =
  ProjectsModelsGetIAMPolicy'
    { _pmgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _pmgipXgafv :: !(Maybe Xgafv)
    , _pmgipUploadProtocol :: !(Maybe Text)
    , _pmgipAccessToken :: !(Maybe Text)
    , _pmgipUploadType :: !(Maybe Text)
    , _pmgipResource :: !Text
    , _pmgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsModelsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmgipOptionsRequestedPolicyVersion'
--
-- * 'pmgipXgafv'
--
-- * 'pmgipUploadProtocol'
--
-- * 'pmgipAccessToken'
--
-- * 'pmgipUploadType'
--
-- * 'pmgipResource'
--
-- * 'pmgipCallback'
projectsModelsGetIAMPolicy
    :: Text -- ^ 'pmgipResource'
    -> ProjectsModelsGetIAMPolicy
projectsModelsGetIAMPolicy pPmgipResource_ =
  ProjectsModelsGetIAMPolicy'
    { _pmgipOptionsRequestedPolicyVersion = Nothing
    , _pmgipXgafv = Nothing
    , _pmgipUploadProtocol = Nothing
    , _pmgipAccessToken = Nothing
    , _pmgipUploadType = Nothing
    , _pmgipResource = pPmgipResource_
    , _pmgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pmgipOptionsRequestedPolicyVersion :: Lens' ProjectsModelsGetIAMPolicy (Maybe Int32)
pmgipOptionsRequestedPolicyVersion
  = lens _pmgipOptionsRequestedPolicyVersion
      (\ s a -> s{_pmgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
pmgipXgafv :: Lens' ProjectsModelsGetIAMPolicy (Maybe Xgafv)
pmgipXgafv
  = lens _pmgipXgafv (\ s a -> s{_pmgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmgipUploadProtocol :: Lens' ProjectsModelsGetIAMPolicy (Maybe Text)
pmgipUploadProtocol
  = lens _pmgipUploadProtocol
      (\ s a -> s{_pmgipUploadProtocol = a})

-- | OAuth access token.
pmgipAccessToken :: Lens' ProjectsModelsGetIAMPolicy (Maybe Text)
pmgipAccessToken
  = lens _pmgipAccessToken
      (\ s a -> s{_pmgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmgipUploadType :: Lens' ProjectsModelsGetIAMPolicy (Maybe Text)
pmgipUploadType
  = lens _pmgipUploadType
      (\ s a -> s{_pmgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pmgipResource :: Lens' ProjectsModelsGetIAMPolicy Text
pmgipResource
  = lens _pmgipResource
      (\ s a -> s{_pmgipResource = a})

-- | JSONP
pmgipCallback :: Lens' ProjectsModelsGetIAMPolicy (Maybe Text)
pmgipCallback
  = lens _pmgipCallback
      (\ s a -> s{_pmgipCallback = a})

instance GoogleRequest ProjectsModelsGetIAMPolicy
         where
        type Rs ProjectsModelsGetIAMPolicy =
             GoogleIAMV1__Policy
        type Scopes ProjectsModelsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsGetIAMPolicy'{..}
          = go _pmgipResource
              _pmgipOptionsRequestedPolicyVersion
              _pmgipXgafv
              _pmgipUploadProtocol
              _pmgipAccessToken
              _pmgipUploadType
              _pmgipCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsGetIAMPolicyResource)
                      mempty
