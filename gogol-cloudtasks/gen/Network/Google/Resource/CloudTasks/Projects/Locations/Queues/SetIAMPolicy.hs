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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy for a Queue. Replaces any existing
-- policy. Note: The Cloud Console does not check queue-level IAM
-- permissions yet. Project-level permissions are required to use the Cloud
-- Console. Authorization requires the following [Google
-- IAM](https:\/\/cloud.google.com\/iam) permission on the specified
-- resource parent: * \`cloudtasks.queues.setIamPolicy\`
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.setIamPolicy@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsQueuesSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsQueuesSetIAMPolicy
    , ProjectsLocationsQueuesSetIAMPolicy

    -- * Request Lenses
    , plqsipXgafv
    , plqsipUploadProtocol
    , plqsipAccessToken
    , plqsipUploadType
    , plqsipPayload
    , plqsipResource
    , plqsipCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.setIamPolicy@ method which the
-- 'ProjectsLocationsQueuesSetIAMPolicy' request conforms to.
type ProjectsLocationsQueuesSetIAMPolicyResource =
     "v2" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy for a Queue. Replaces any existing
-- policy. Note: The Cloud Console does not check queue-level IAM
-- permissions yet. Project-level permissions are required to use the Cloud
-- Console. Authorization requires the following [Google
-- IAM](https:\/\/cloud.google.com\/iam) permission on the specified
-- resource parent: * \`cloudtasks.queues.setIamPolicy\`
--
-- /See:/ 'projectsLocationsQueuesSetIAMPolicy' smart constructor.
data ProjectsLocationsQueuesSetIAMPolicy =
  ProjectsLocationsQueuesSetIAMPolicy'
    { _plqsipXgafv :: !(Maybe Xgafv)
    , _plqsipUploadProtocol :: !(Maybe Text)
    , _plqsipAccessToken :: !(Maybe Text)
    , _plqsipUploadType :: !(Maybe Text)
    , _plqsipPayload :: !SetIAMPolicyRequest
    , _plqsipResource :: !Text
    , _plqsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqsipXgafv'
--
-- * 'plqsipUploadProtocol'
--
-- * 'plqsipAccessToken'
--
-- * 'plqsipUploadType'
--
-- * 'plqsipPayload'
--
-- * 'plqsipResource'
--
-- * 'plqsipCallback'
projectsLocationsQueuesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plqsipPayload'
    -> Text -- ^ 'plqsipResource'
    -> ProjectsLocationsQueuesSetIAMPolicy
projectsLocationsQueuesSetIAMPolicy pPlqsipPayload_ pPlqsipResource_ =
  ProjectsLocationsQueuesSetIAMPolicy'
    { _plqsipXgafv = Nothing
    , _plqsipUploadProtocol = Nothing
    , _plqsipAccessToken = Nothing
    , _plqsipUploadType = Nothing
    , _plqsipPayload = pPlqsipPayload_
    , _plqsipResource = pPlqsipResource_
    , _plqsipCallback = Nothing
    }


-- | V1 error format.
plqsipXgafv :: Lens' ProjectsLocationsQueuesSetIAMPolicy (Maybe Xgafv)
plqsipXgafv
  = lens _plqsipXgafv (\ s a -> s{_plqsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqsipUploadProtocol :: Lens' ProjectsLocationsQueuesSetIAMPolicy (Maybe Text)
plqsipUploadProtocol
  = lens _plqsipUploadProtocol
      (\ s a -> s{_plqsipUploadProtocol = a})

-- | OAuth access token.
plqsipAccessToken :: Lens' ProjectsLocationsQueuesSetIAMPolicy (Maybe Text)
plqsipAccessToken
  = lens _plqsipAccessToken
      (\ s a -> s{_plqsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqsipUploadType :: Lens' ProjectsLocationsQueuesSetIAMPolicy (Maybe Text)
plqsipUploadType
  = lens _plqsipUploadType
      (\ s a -> s{_plqsipUploadType = a})

-- | Multipart request metadata.
plqsipPayload :: Lens' ProjectsLocationsQueuesSetIAMPolicy SetIAMPolicyRequest
plqsipPayload
  = lens _plqsipPayload
      (\ s a -> s{_plqsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plqsipResource :: Lens' ProjectsLocationsQueuesSetIAMPolicy Text
plqsipResource
  = lens _plqsipResource
      (\ s a -> s{_plqsipResource = a})

-- | JSONP
plqsipCallback :: Lens' ProjectsLocationsQueuesSetIAMPolicy (Maybe Text)
plqsipCallback
  = lens _plqsipCallback
      (\ s a -> s{_plqsipCallback = a})

instance GoogleRequest
           ProjectsLocationsQueuesSetIAMPolicy
         where
        type Rs ProjectsLocationsQueuesSetIAMPolicy = Policy
        type Scopes ProjectsLocationsQueuesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsQueuesSetIAMPolicy'{..}
          = go _plqsipResource _plqsipXgafv
              _plqsipUploadProtocol
              _plqsipAccessToken
              _plqsipUploadType
              _plqsipCallback
              (Just AltJSON)
              _plqsipPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesSetIAMPolicyResource)
                      mempty
