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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.getIamPolicy@.
module Network.Google.Resource.PubSub.Projects.Topics.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsTopicsGetIAMPolicyResource

    -- * Creating a Request
    , projectsTopicsGetIAMPolicy
    , ProjectsTopicsGetIAMPolicy

    -- * Request Lenses
    , ptgipOptionsRequestedPolicyVersion
    , ptgipXgafv
    , ptgipUploadProtocol
    , ptgipAccessToken
    , ptgipUploadType
    , ptgipResource
    , ptgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.getIamPolicy@ method which the
-- 'ProjectsTopicsGetIAMPolicy' request conforms to.
type ProjectsTopicsGetIAMPolicyResource =
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
                     QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsTopicsGetIAMPolicy' smart constructor.
data ProjectsTopicsGetIAMPolicy =
  ProjectsTopicsGetIAMPolicy'
    { _ptgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _ptgipXgafv :: !(Maybe Xgafv)
    , _ptgipUploadProtocol :: !(Maybe Text)
    , _ptgipAccessToken :: !(Maybe Text)
    , _ptgipUploadType :: !(Maybe Text)
    , _ptgipResource :: !Text
    , _ptgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTopicsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgipOptionsRequestedPolicyVersion'
--
-- * 'ptgipXgafv'
--
-- * 'ptgipUploadProtocol'
--
-- * 'ptgipAccessToken'
--
-- * 'ptgipUploadType'
--
-- * 'ptgipResource'
--
-- * 'ptgipCallback'
projectsTopicsGetIAMPolicy
    :: Text -- ^ 'ptgipResource'
    -> ProjectsTopicsGetIAMPolicy
projectsTopicsGetIAMPolicy pPtgipResource_ =
  ProjectsTopicsGetIAMPolicy'
    { _ptgipOptionsRequestedPolicyVersion = Nothing
    , _ptgipXgafv = Nothing
    , _ptgipUploadProtocol = Nothing
    , _ptgipAccessToken = Nothing
    , _ptgipUploadType = Nothing
    , _ptgipResource = pPtgipResource_
    , _ptgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
ptgipOptionsRequestedPolicyVersion :: Lens' ProjectsTopicsGetIAMPolicy (Maybe Int32)
ptgipOptionsRequestedPolicyVersion
  = lens _ptgipOptionsRequestedPolicyVersion
      (\ s a -> s{_ptgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
ptgipXgafv :: Lens' ProjectsTopicsGetIAMPolicy (Maybe Xgafv)
ptgipXgafv
  = lens _ptgipXgafv (\ s a -> s{_ptgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgipUploadProtocol :: Lens' ProjectsTopicsGetIAMPolicy (Maybe Text)
ptgipUploadProtocol
  = lens _ptgipUploadProtocol
      (\ s a -> s{_ptgipUploadProtocol = a})

-- | OAuth access token.
ptgipAccessToken :: Lens' ProjectsTopicsGetIAMPolicy (Maybe Text)
ptgipAccessToken
  = lens _ptgipAccessToken
      (\ s a -> s{_ptgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgipUploadType :: Lens' ProjectsTopicsGetIAMPolicy (Maybe Text)
ptgipUploadType
  = lens _ptgipUploadType
      (\ s a -> s{_ptgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
ptgipResource :: Lens' ProjectsTopicsGetIAMPolicy Text
ptgipResource
  = lens _ptgipResource
      (\ s a -> s{_ptgipResource = a})

-- | JSONP
ptgipCallback :: Lens' ProjectsTopicsGetIAMPolicy (Maybe Text)
ptgipCallback
  = lens _ptgipCallback
      (\ s a -> s{_ptgipCallback = a})

instance GoogleRequest ProjectsTopicsGetIAMPolicy
         where
        type Rs ProjectsTopicsGetIAMPolicy = Policy
        type Scopes ProjectsTopicsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsGetIAMPolicy'{..}
          = go _ptgipResource
              _ptgipOptionsRequestedPolicyVersion
              _ptgipXgafv
              _ptgipUploadProtocol
              _ptgipAccessToken
              _ptgipUploadType
              _ptgipCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsGetIAMPolicyResource)
                      mempty
