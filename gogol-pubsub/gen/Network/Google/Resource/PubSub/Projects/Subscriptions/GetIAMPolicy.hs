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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , psgiampXgafv
    , psgiampUploadProtocol
    , psgiampAccessToken
    , psgiampUploadType
    , psgiampResource
    , psgiampCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.getIamPolicy@ method which the
-- 'ProjectsSubscriptionsGetIAMPolicy' request conforms to.
type ProjectsSubscriptionsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
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
data ProjectsSubscriptionsGetIAMPolicy = ProjectsSubscriptionsGetIAMPolicy'
    { _psgiampXgafv          :: !(Maybe Xgafv)
    , _psgiampUploadProtocol :: !(Maybe Text)
    , _psgiampAccessToken    :: !(Maybe Text)
    , _psgiampUploadType     :: !(Maybe Text)
    , _psgiampResource       :: !Text
    , _psgiampCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
projectsSubscriptionsGetIAMPolicy
    :: Text -- ^ 'psgiampResource'
    -> ProjectsSubscriptionsGetIAMPolicy
projectsSubscriptionsGetIAMPolicy pPsgiampResource_ =
    ProjectsSubscriptionsGetIAMPolicy'
    { _psgiampXgafv = Nothing
    , _psgiampUploadProtocol = Nothing
    , _psgiampAccessToken = Nothing
    , _psgiampUploadType = Nothing
    , _psgiampResource = pPsgiampResource_
    , _psgiampCallback = Nothing
    }

-- | V1 error format.
psgiampXgafv :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Xgafv)
psgiampXgafv
  = lens _psgiampXgafv (\ s a -> s{_psgiampXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgiampUploadProtocol :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Text)
psgiampUploadProtocol
  = lens _psgiampUploadProtocol
      (\ s a -> s{_psgiampUploadProtocol = a})

-- | OAuth access token.
psgiampAccessToken :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Text)
psgiampAccessToken
  = lens _psgiampAccessToken
      (\ s a -> s{_psgiampAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgiampUploadType :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Text)
psgiampUploadType
  = lens _psgiampUploadType
      (\ s a -> s{_psgiampUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
psgiampResource :: Lens' ProjectsSubscriptionsGetIAMPolicy Text
psgiampResource
  = lens _psgiampResource
      (\ s a -> s{_psgiampResource = a})

-- | JSONP
psgiampCallback :: Lens' ProjectsSubscriptionsGetIAMPolicy (Maybe Text)
psgiampCallback
  = lens _psgiampCallback
      (\ s a -> s{_psgiampCallback = a})

instance GoogleRequest
         ProjectsSubscriptionsGetIAMPolicy where
        type Rs ProjectsSubscriptionsGetIAMPolicy = Policy
        type Scopes ProjectsSubscriptionsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsGetIAMPolicy'{..}
          = go _psgiampResource _psgiampXgafv
              _psgiampUploadProtocol
              _psgiampAccessToken
              _psgiampUploadType
              _psgiampCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSubscriptionsGetIAMPolicyResource)
                      mempty
