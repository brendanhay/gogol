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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , psgipXgafv
    , psgipUploadProtocol
    , psgipAccessToken
    , psgipUploadType
    , psgipResource
    , psgipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.getIamPolicy@ method which the
-- 'ProjectsSnapshotsGetIAMPolicy' request conforms to.
type ProjectsSnapshotsGetIAMPolicyResource =
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
-- /See:/ 'projectsSnapshotsGetIAMPolicy' smart constructor.
data ProjectsSnapshotsGetIAMPolicy =
  ProjectsSnapshotsGetIAMPolicy'
    { _psgipXgafv          :: !(Maybe Xgafv)
    , _psgipUploadProtocol :: !(Maybe Text)
    , _psgipAccessToken    :: !(Maybe Text)
    , _psgipUploadType     :: !(Maybe Text)
    , _psgipResource       :: !Text
    , _psgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsSnapshotsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgipXgafv'
--
-- * 'psgipUploadProtocol'
--
-- * 'psgipAccessToken'
--
-- * 'psgipUploadType'
--
-- * 'psgipResource'
--
-- * 'psgipCallback'
projectsSnapshotsGetIAMPolicy
    :: Text -- ^ 'psgipResource'
    -> ProjectsSnapshotsGetIAMPolicy
projectsSnapshotsGetIAMPolicy pPsgipResource_ =
  ProjectsSnapshotsGetIAMPolicy'
    { _psgipXgafv = Nothing
    , _psgipUploadProtocol = Nothing
    , _psgipAccessToken = Nothing
    , _psgipUploadType = Nothing
    , _psgipResource = pPsgipResource_
    , _psgipCallback = Nothing
    }

-- | V1 error format.
psgipXgafv :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Xgafv)
psgipXgafv
  = lens _psgipXgafv (\ s a -> s{_psgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgipUploadProtocol :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Text)
psgipUploadProtocol
  = lens _psgipUploadProtocol
      (\ s a -> s{_psgipUploadProtocol = a})

-- | OAuth access token.
psgipAccessToken :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Text)
psgipAccessToken
  = lens _psgipAccessToken
      (\ s a -> s{_psgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgipUploadType :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Text)
psgipUploadType
  = lens _psgipUploadType
      (\ s a -> s{_psgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
psgipResource :: Lens' ProjectsSnapshotsGetIAMPolicy Text
psgipResource
  = lens _psgipResource
      (\ s a -> s{_psgipResource = a})

-- | JSONP
psgipCallback :: Lens' ProjectsSnapshotsGetIAMPolicy (Maybe Text)
psgipCallback
  = lens _psgipCallback
      (\ s a -> s{_psgipCallback = a})

instance GoogleRequest ProjectsSnapshotsGetIAMPolicy
         where
        type Rs ProjectsSnapshotsGetIAMPolicy = Policy
        type Scopes ProjectsSnapshotsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSnapshotsGetIAMPolicy'{..}
          = go _psgipResource _psgipXgafv _psgipUploadProtocol
              _psgipAccessToken
              _psgipUploadType
              _psgipCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSnapshotsGetIAMPolicyResource)
                      mempty
