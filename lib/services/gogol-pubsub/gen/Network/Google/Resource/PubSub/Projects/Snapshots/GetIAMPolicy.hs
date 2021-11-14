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
-- Module      : Network.Google.Resource.PubSub.Projects.Snapshots.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.getIamPolicy@.
module Network.Google.Resource.PubSub.Projects.Snapshots.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsSnapshotsGetIAMPolicyResource

    -- * Creating a Request
    , projectsSnapshotsGetIAMPolicy
    , ProjectsSnapshotsGetIAMPolicy

    -- * Request Lenses
    , psgiampOptionsRequestedPolicyVersion
    , psgiampXgafv
    , psgiampUploadProtocol
    , psgiampAccessToken
    , psgiampUploadType
    , psgiampResource
    , psgiampCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.getIamPolicy@ method which the
-- 'ProjectsSnapshotsGetIAMPolicy' request conforms to.
type ProjectsSnapshotsGetIAMPolicyResource =
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
-- /See:/ 'projectsSnapshotsGetIAMPolicy' smart constructor.
data ProjectsSnapshotsGetIAMPolicy =
  ProjectsSnapshotsGetIAMPolicy'
    { _psgiampOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _psgiampXgafv :: !(Maybe Xgafv)
    , _psgiampUploadProtocol :: !(Maybe Text)
    , _psgiampAccessToken :: !(Maybe Text)
    , _psgiampUploadType :: !(Maybe Text)
    , _psgiampResource :: !Text
    , _psgiampCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSnapshotsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgiampOptionsRequestedPolicyVersion'
--
-- * 'psgiampXgafv'
--
-- * 'psgiampUploadProtocol'
--
-- * 'psgiampAccessToken'
--
-- * 'psgiampUploadType'
--
-- * 'psgiampResource'
--
-- * 'psgiampCallback'
projectsSnapshotsGetIAMPolicy
    :: Text -- ^ 'psgiampResource'
    -> ProjectsSnapshotsGetIAMPolicy
projectsSnapshotsGetIAMPolicy pPsgiampResource_ =
  ProjectsSnapshotsGetIAMPolicy'
    { _psgiampOptionsRequestedPolicyVersion = Nothing
    , _psgiampXgafv = Nothing
    , _psgiampUploadProtocol = Nothing
    , _psgiampAccessToken = Nothing
    , _psgiampUploadType = Nothing
    , _psgiampResource = pPsgiampResource_
    , _psgiampCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
psgiampOptionsRequestedPolicyVersion :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Int32)
psgiampOptionsRequestedPolicyVersion
  = lens _psgiampOptionsRequestedPolicyVersion
      (\ s a ->
         s{_psgiampOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
psgiampXgafv :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Xgafv)
psgiampXgafv
  = lens _psgiampXgafv (\ s a -> s{_psgiampXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgiampUploadProtocol :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Text)
psgiampUploadProtocol
  = lens _psgiampUploadProtocol
      (\ s a -> s{_psgiampUploadProtocol = a})

-- | OAuth access token.
psgiampAccessToken :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Text)
psgiampAccessToken
  = lens _psgiampAccessToken
      (\ s a -> s{_psgiampAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgiampUploadType :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Text)
psgiampUploadType
  = lens _psgiampUploadType
      (\ s a -> s{_psgiampUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
psgiampResource :: Lens' ProjectsSnapshotsGetIAMPolicy Text
psgiampResource
  = lens _psgiampResource
      (\ s a -> s{_psgiampResource = a})

-- | JSONP
psgiampCallback :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Text)
psgiampCallback
  = lens _psgiampCallback
      (\ s a -> s{_psgiampCallback = a})

instance GoogleRequest ProjectsSnapshotsGetIAMPolicy
         where
        type Rs ProjectsSnapshotsGetIAMPolicy = Policy
        type Scopes ProjectsSnapshotsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSnapshotsGetIAMPolicy'{..}
          = go _psgiampResource
              _psgiampOptionsRequestedPolicyVersion
              _psgiampXgafv
              _psgiampUploadProtocol
              _psgiampAccessToken
              _psgiampUploadType
              _psgiampCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSnapshotsGetIAMPolicyResource)
                      mempty
