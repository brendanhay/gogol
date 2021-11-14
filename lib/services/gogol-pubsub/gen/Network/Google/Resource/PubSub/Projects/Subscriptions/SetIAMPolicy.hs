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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.setIamPolicy@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsSubscriptionsSetIAMPolicyResource

    -- * Creating a Request
    , projectsSubscriptionsSetIAMPolicy
    , ProjectsSubscriptionsSetIAMPolicy

    -- * Request Lenses
    , pssipXgafv
    , pssipUploadProtocol
    , pssipAccessToken
    , pssipUploadType
    , pssipPayload
    , pssipResource
    , pssipCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.setIamPolicy@ method which the
-- 'ProjectsSubscriptionsSetIAMPolicy' request conforms to.
type ProjectsSubscriptionsSetIAMPolicyResource =
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
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ 'projectsSubscriptionsSetIAMPolicy' smart constructor.
data ProjectsSubscriptionsSetIAMPolicy =
  ProjectsSubscriptionsSetIAMPolicy'
    { _pssipXgafv :: !(Maybe Xgafv)
    , _pssipUploadProtocol :: !(Maybe Text)
    , _pssipAccessToken :: !(Maybe Text)
    , _pssipUploadType :: !(Maybe Text)
    , _pssipPayload :: !SetIAMPolicyRequest
    , _pssipResource :: !Text
    , _pssipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssipXgafv'
--
-- * 'pssipUploadProtocol'
--
-- * 'pssipAccessToken'
--
-- * 'pssipUploadType'
--
-- * 'pssipPayload'
--
-- * 'pssipResource'
--
-- * 'pssipCallback'
projectsSubscriptionsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pssipPayload'
    -> Text -- ^ 'pssipResource'
    -> ProjectsSubscriptionsSetIAMPolicy
projectsSubscriptionsSetIAMPolicy pPssipPayload_ pPssipResource_ =
  ProjectsSubscriptionsSetIAMPolicy'
    { _pssipXgafv = Nothing
    , _pssipUploadProtocol = Nothing
    , _pssipAccessToken = Nothing
    , _pssipUploadType = Nothing
    , _pssipPayload = pPssipPayload_
    , _pssipResource = pPssipResource_
    , _pssipCallback = Nothing
    }


-- | V1 error format.
pssipXgafv :: Lens' ProjectsSubscriptionsSetIAMPolicy (Maybe Xgafv)
pssipXgafv
  = lens _pssipXgafv (\ s a -> s{_pssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pssipUploadProtocol :: Lens' ProjectsSubscriptionsSetIAMPolicy (Maybe Text)
pssipUploadProtocol
  = lens _pssipUploadProtocol
      (\ s a -> s{_pssipUploadProtocol = a})

-- | OAuth access token.
pssipAccessToken :: Lens' ProjectsSubscriptionsSetIAMPolicy (Maybe Text)
pssipAccessToken
  = lens _pssipAccessToken
      (\ s a -> s{_pssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pssipUploadType :: Lens' ProjectsSubscriptionsSetIAMPolicy (Maybe Text)
pssipUploadType
  = lens _pssipUploadType
      (\ s a -> s{_pssipUploadType = a})

-- | Multipart request metadata.
pssipPayload :: Lens' ProjectsSubscriptionsSetIAMPolicy SetIAMPolicyRequest
pssipPayload
  = lens _pssipPayload (\ s a -> s{_pssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pssipResource :: Lens' ProjectsSubscriptionsSetIAMPolicy Text
pssipResource
  = lens _pssipResource
      (\ s a -> s{_pssipResource = a})

-- | JSONP
pssipCallback :: Lens' ProjectsSubscriptionsSetIAMPolicy (Maybe Text)
pssipCallback
  = lens _pssipCallback
      (\ s a -> s{_pssipCallback = a})

instance GoogleRequest
           ProjectsSubscriptionsSetIAMPolicy
         where
        type Rs ProjectsSubscriptionsSetIAMPolicy = Policy
        type Scopes ProjectsSubscriptionsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsSetIAMPolicy'{..}
          = go _pssipResource _pssipXgafv _pssipUploadProtocol
              _pssipAccessToken
              _pssipUploadType
              _pssipCallback
              (Just AltJSON)
              _pssipPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSubscriptionsSetIAMPolicyResource)
                      mempty
