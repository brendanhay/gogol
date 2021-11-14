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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.getIamPolicy@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsSubscriptionsGetIAMPolicyResource

    -- * Creating a Request
    , projectsSubscriptionsGetIAMPolicy
    , ProjectsSubscriptionsGetIAMPolicy

    -- * Request Lenses
    , psgipsOptionsRequestedPolicyVersion
    , psgipsXgafv
    , psgipsUploadProtocol
    , psgipsAccessToken
    , psgipsUploadType
    , psgipsResource
    , psgipsCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.getIamPolicy@ method which the
-- 'ProjectsSubscriptionsGetIAMPolicy' request conforms to.
type ProjectsSubscriptionsGetIAMPolicyResource =
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
-- /See:/ 'projectsSubscriptionsGetIAMPolicy' smart constructor.
data ProjectsSubscriptionsGetIAMPolicy =
  ProjectsSubscriptionsGetIAMPolicy'
    { _psgipsOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _psgipsXgafv :: !(Maybe Xgafv)
    , _psgipsUploadProtocol :: !(Maybe Text)
    , _psgipsAccessToken :: !(Maybe Text)
    , _psgipsUploadType :: !(Maybe Text)
    , _psgipsResource :: !Text
    , _psgipsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgipsOptionsRequestedPolicyVersion'
--
-- * 'psgipsXgafv'
--
-- * 'psgipsUploadProtocol'
--
-- * 'psgipsAccessToken'
--
-- * 'psgipsUploadType'
--
-- * 'psgipsResource'
--
-- * 'psgipsCallback'
projectsSubscriptionsGetIAMPolicy
    :: Text -- ^ 'psgipsResource'
    -> ProjectsSubscriptionsGetIAMPolicy
projectsSubscriptionsGetIAMPolicy pPsgipsResource_ =
  ProjectsSubscriptionsGetIAMPolicy'
    { _psgipsOptionsRequestedPolicyVersion = Nothing
    , _psgipsXgafv = Nothing
    , _psgipsUploadProtocol = Nothing
    , _psgipsAccessToken = Nothing
    , _psgipsUploadType = Nothing
    , _psgipsResource = pPsgipsResource_
    , _psgipsCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
psgipsOptionsRequestedPolicyVersion :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Int32)
psgipsOptionsRequestedPolicyVersion
  = lens _psgipsOptionsRequestedPolicyVersion
      (\ s a ->
         s{_psgipsOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
psgipsXgafv :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Xgafv)
psgipsXgafv
  = lens _psgipsXgafv (\ s a -> s{_psgipsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgipsUploadProtocol :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Text)
psgipsUploadProtocol
  = lens _psgipsUploadProtocol
      (\ s a -> s{_psgipsUploadProtocol = a})

-- | OAuth access token.
psgipsAccessToken :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Text)
psgipsAccessToken
  = lens _psgipsAccessToken
      (\ s a -> s{_psgipsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgipsUploadType :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Text)
psgipsUploadType
  = lens _psgipsUploadType
      (\ s a -> s{_psgipsUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
psgipsResource :: Lens' ProjectsSubscriptionsGetIAMPolicy Text
psgipsResource
  = lens _psgipsResource
      (\ s a -> s{_psgipsResource = a})

-- | JSONP
psgipsCallback :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Text)
psgipsCallback
  = lens _psgipsCallback
      (\ s a -> s{_psgipsCallback = a})

instance GoogleRequest
           ProjectsSubscriptionsGetIAMPolicy
         where
        type Rs ProjectsSubscriptionsGetIAMPolicy = Policy
        type Scopes ProjectsSubscriptionsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsGetIAMPolicy'{..}
          = go _psgipsResource
              _psgipsOptionsRequestedPolicyVersion
              _psgipsXgafv
              _psgipsUploadProtocol
              _psgipsAccessToken
              _psgipsUploadType
              _psgipsCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSubscriptionsGetIAMPolicyResource)
                      mempty
