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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a Queue. Returns an empty policy if
-- the resource exists and does not have a policy set. Authorization
-- requires the following [Google IAM](https:\/\/cloud.google.com\/iam)
-- permission on the specified resource parent: *
-- \`cloudtasks.queues.getIamPolicy\`
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.getIamPolicy@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsQueuesGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsQueuesGetIAMPolicy
    , ProjectsLocationsQueuesGetIAMPolicy

    -- * Request Lenses
    , plqgipXgafv
    , plqgipUploadProtocol
    , plqgipAccessToken
    , plqgipUploadType
    , plqgipPayload
    , plqgipResource
    , plqgipCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.getIamPolicy@ method which the
-- 'ProjectsLocationsQueuesGetIAMPolicy' request conforms to.
type ProjectsLocationsQueuesGetIAMPolicyResource =
     "v2" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a Queue. Returns an empty policy if
-- the resource exists and does not have a policy set. Authorization
-- requires the following [Google IAM](https:\/\/cloud.google.com\/iam)
-- permission on the specified resource parent: *
-- \`cloudtasks.queues.getIamPolicy\`
--
-- /See:/ 'projectsLocationsQueuesGetIAMPolicy' smart constructor.
data ProjectsLocationsQueuesGetIAMPolicy =
  ProjectsLocationsQueuesGetIAMPolicy'
    { _plqgipXgafv :: !(Maybe Xgafv)
    , _plqgipUploadProtocol :: !(Maybe Text)
    , _plqgipAccessToken :: !(Maybe Text)
    , _plqgipUploadType :: !(Maybe Text)
    , _plqgipPayload :: !GetIAMPolicyRequest
    , _plqgipResource :: !Text
    , _plqgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqgipXgafv'
--
-- * 'plqgipUploadProtocol'
--
-- * 'plqgipAccessToken'
--
-- * 'plqgipUploadType'
--
-- * 'plqgipPayload'
--
-- * 'plqgipResource'
--
-- * 'plqgipCallback'
projectsLocationsQueuesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'plqgipPayload'
    -> Text -- ^ 'plqgipResource'
    -> ProjectsLocationsQueuesGetIAMPolicy
projectsLocationsQueuesGetIAMPolicy pPlqgipPayload_ pPlqgipResource_ =
  ProjectsLocationsQueuesGetIAMPolicy'
    { _plqgipXgafv = Nothing
    , _plqgipUploadProtocol = Nothing
    , _plqgipAccessToken = Nothing
    , _plqgipUploadType = Nothing
    , _plqgipPayload = pPlqgipPayload_
    , _plqgipResource = pPlqgipResource_
    , _plqgipCallback = Nothing
    }


-- | V1 error format.
plqgipXgafv :: Lens' ProjectsLocationsQueuesGetIAMPolicy (Maybe Xgafv)
plqgipXgafv
  = lens _plqgipXgafv (\ s a -> s{_plqgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqgipUploadProtocol :: Lens' ProjectsLocationsQueuesGetIAMPolicy (Maybe Text)
plqgipUploadProtocol
  = lens _plqgipUploadProtocol
      (\ s a -> s{_plqgipUploadProtocol = a})

-- | OAuth access token.
plqgipAccessToken :: Lens' ProjectsLocationsQueuesGetIAMPolicy (Maybe Text)
plqgipAccessToken
  = lens _plqgipAccessToken
      (\ s a -> s{_plqgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqgipUploadType :: Lens' ProjectsLocationsQueuesGetIAMPolicy (Maybe Text)
plqgipUploadType
  = lens _plqgipUploadType
      (\ s a -> s{_plqgipUploadType = a})

-- | Multipart request metadata.
plqgipPayload :: Lens' ProjectsLocationsQueuesGetIAMPolicy GetIAMPolicyRequest
plqgipPayload
  = lens _plqgipPayload
      (\ s a -> s{_plqgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plqgipResource :: Lens' ProjectsLocationsQueuesGetIAMPolicy Text
plqgipResource
  = lens _plqgipResource
      (\ s a -> s{_plqgipResource = a})

-- | JSONP
plqgipCallback :: Lens' ProjectsLocationsQueuesGetIAMPolicy (Maybe Text)
plqgipCallback
  = lens _plqgipCallback
      (\ s a -> s{_plqgipCallback = a})

instance GoogleRequest
           ProjectsLocationsQueuesGetIAMPolicy
         where
        type Rs ProjectsLocationsQueuesGetIAMPolicy = Policy
        type Scopes ProjectsLocationsQueuesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsQueuesGetIAMPolicy'{..}
          = go _plqgipResource _plqgipXgafv
              _plqgipUploadProtocol
              _plqgipAccessToken
              _plqgipUploadType
              _plqgipCallback
              (Just AltJSON)
              _plqgipPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesGetIAMPolicyResource)
                      mempty
