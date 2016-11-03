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
-- Module      : Network.Google.Resource.PubSub.Projects.Snapshots.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.setIamPolicy@.
module Network.Google.Resource.PubSub.Projects.Snapshots.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsSnapshotsSetIAMPolicyResource

    -- * Creating a Request
    , projectsSnapshotsSetIAMPolicy
    , ProjectsSnapshotsSetIAMPolicy

    -- * Request Lenses
    , pssiampXgafv
    , pssiampUploadProtocol
    , pssiampPp
    , pssiampAccessToken
    , pssiampUploadType
    , pssiampPayload
    , pssiampBearerToken
    , pssiampResource
    , pssiampCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.setIamPolicy@ method which the
-- 'ProjectsSnapshotsSetIAMPolicy' request conforms to.
type ProjectsSnapshotsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SetIAMPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsSnapshotsSetIAMPolicy' smart constructor.
data ProjectsSnapshotsSetIAMPolicy = ProjectsSnapshotsSetIAMPolicy'
    { _pssiampXgafv          :: !(Maybe Text)
    , _pssiampUploadProtocol :: !(Maybe Text)
    , _pssiampPp             :: !Bool
    , _pssiampAccessToken    :: !(Maybe Text)
    , _pssiampUploadType     :: !(Maybe Text)
    , _pssiampPayload        :: !SetIAMPolicyRequest
    , _pssiampBearerToken    :: !(Maybe Text)
    , _pssiampResource       :: !Text
    , _pssiampCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSnapshotsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssiampXgafv'
--
-- * 'pssiampUploadProtocol'
--
-- * 'pssiampPp'
--
-- * 'pssiampAccessToken'
--
-- * 'pssiampUploadType'
--
-- * 'pssiampPayload'
--
-- * 'pssiampBearerToken'
--
-- * 'pssiampResource'
--
-- * 'pssiampCallback'
projectsSnapshotsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pssiampPayload'
    -> Text -- ^ 'pssiampResource'
    -> ProjectsSnapshotsSetIAMPolicy
projectsSnapshotsSetIAMPolicy pPssiampPayload_ pPssiampResource_ =
    ProjectsSnapshotsSetIAMPolicy'
    { _pssiampXgafv = Nothing
    , _pssiampUploadProtocol = Nothing
    , _pssiampPp = True
    , _pssiampAccessToken = Nothing
    , _pssiampUploadType = Nothing
    , _pssiampPayload = pPssiampPayload_
    , _pssiampBearerToken = Nothing
    , _pssiampResource = pPssiampResource_
    , _pssiampCallback = Nothing
    }

-- | V1 error format.
pssiampXgafv :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssiampXgafv
  = lens _pssiampXgafv (\ s a -> s{_pssiampXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pssiampUploadProtocol :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssiampUploadProtocol
  = lens _pssiampUploadProtocol
      (\ s a -> s{_pssiampUploadProtocol = a})

-- | Pretty-print response.
pssiampPp :: Lens' ProjectsSnapshotsSetIAMPolicy Bool
pssiampPp
  = lens _pssiampPp (\ s a -> s{_pssiampPp = a})

-- | OAuth access token.
pssiampAccessToken :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssiampAccessToken
  = lens _pssiampAccessToken
      (\ s a -> s{_pssiampAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pssiampUploadType :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssiampUploadType
  = lens _pssiampUploadType
      (\ s a -> s{_pssiampUploadType = a})

-- | Multipart request metadata.
pssiampPayload :: Lens' ProjectsSnapshotsSetIAMPolicy SetIAMPolicyRequest
pssiampPayload
  = lens _pssiampPayload
      (\ s a -> s{_pssiampPayload = a})

-- | OAuth bearer token.
pssiampBearerToken :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssiampBearerToken
  = lens _pssiampBearerToken
      (\ s a -> s{_pssiampBearerToken = a})

-- | REQUIRED: The resource for which the policy is being specified.
-- \`resource\` is usually specified as a path. For example, a Project
-- resource is specified as \`projects\/{project}\`.
pssiampResource :: Lens' ProjectsSnapshotsSetIAMPolicy Text
pssiampResource
  = lens _pssiampResource
      (\ s a -> s{_pssiampResource = a})

-- | JSONP
pssiampCallback :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssiampCallback
  = lens _pssiampCallback
      (\ s a -> s{_pssiampCallback = a})

instance GoogleRequest ProjectsSnapshotsSetIAMPolicy
         where
        type Rs ProjectsSnapshotsSetIAMPolicy = Policy
        type Scopes ProjectsSnapshotsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSnapshotsSetIAMPolicy'{..}
          = go _pssiampResource _pssiampXgafv
              _pssiampUploadProtocol
              (Just _pssiampPp)
              _pssiampAccessToken
              _pssiampUploadType
              _pssiampBearerToken
              _pssiampCallback
              (Just AltJSON)
              _pssiampPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSnapshotsSetIAMPolicyResource)
                      mempty
