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
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.setIamPolicy@.
module Network.Google.Resource.PubSub.Projects.Snapshots.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsSnapshotsSetIAMPolicyResource

    -- * Creating a Request
    , projectsSnapshotsSetIAMPolicy
    , ProjectsSnapshotsSetIAMPolicy

    -- * Request Lenses
    , pssipsXgafv
    , pssipsUploadProtocol
    , pssipsAccessToken
    , pssipsUploadType
    , pssipsPayload
    , pssipsResource
    , pssipsCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.setIamPolicy@ method which the
-- 'ProjectsSnapshotsSetIAMPolicy' request conforms to.
type ProjectsSnapshotsSetIAMPolicyResource =
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
-- /See:/ 'projectsSnapshotsSetIAMPolicy' smart constructor.
data ProjectsSnapshotsSetIAMPolicy =
  ProjectsSnapshotsSetIAMPolicy'
    { _pssipsXgafv :: !(Maybe Xgafv)
    , _pssipsUploadProtocol :: !(Maybe Text)
    , _pssipsAccessToken :: !(Maybe Text)
    , _pssipsUploadType :: !(Maybe Text)
    , _pssipsPayload :: !SetIAMPolicyRequest
    , _pssipsResource :: !Text
    , _pssipsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSnapshotsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssipsXgafv'
--
-- * 'pssipsUploadProtocol'
--
-- * 'pssipsAccessToken'
--
-- * 'pssipsUploadType'
--
-- * 'pssipsPayload'
--
-- * 'pssipsResource'
--
-- * 'pssipsCallback'
projectsSnapshotsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pssipsPayload'
    -> Text -- ^ 'pssipsResource'
    -> ProjectsSnapshotsSetIAMPolicy
projectsSnapshotsSetIAMPolicy pPssipsPayload_ pPssipsResource_ =
  ProjectsSnapshotsSetIAMPolicy'
    { _pssipsXgafv = Nothing
    , _pssipsUploadProtocol = Nothing
    , _pssipsAccessToken = Nothing
    , _pssipsUploadType = Nothing
    , _pssipsPayload = pPssipsPayload_
    , _pssipsResource = pPssipsResource_
    , _pssipsCallback = Nothing
    }


-- | V1 error format.
pssipsXgafv :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Xgafv)
pssipsXgafv
  = lens _pssipsXgafv (\ s a -> s{_pssipsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pssipsUploadProtocol :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssipsUploadProtocol
  = lens _pssipsUploadProtocol
      (\ s a -> s{_pssipsUploadProtocol = a})

-- | OAuth access token.
pssipsAccessToken :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssipsAccessToken
  = lens _pssipsAccessToken
      (\ s a -> s{_pssipsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pssipsUploadType :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssipsUploadType
  = lens _pssipsUploadType
      (\ s a -> s{_pssipsUploadType = a})

-- | Multipart request metadata.
pssipsPayload :: Lens' ProjectsSnapshotsSetIAMPolicy SetIAMPolicyRequest
pssipsPayload
  = lens _pssipsPayload
      (\ s a -> s{_pssipsPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pssipsResource :: Lens' ProjectsSnapshotsSetIAMPolicy Text
pssipsResource
  = lens _pssipsResource
      (\ s a -> s{_pssipsResource = a})

-- | JSONP
pssipsCallback :: Lens' ProjectsSnapshotsSetIAMPolicy (Maybe Text)
pssipsCallback
  = lens _pssipsCallback
      (\ s a -> s{_pssipsCallback = a})

instance GoogleRequest ProjectsSnapshotsSetIAMPolicy
         where
        type Rs ProjectsSnapshotsSetIAMPolicy = Policy
        type Scopes ProjectsSnapshotsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSnapshotsSetIAMPolicy'{..}
          = go _pssipsResource _pssipsXgafv
              _pssipsUploadProtocol
              _pssipsAccessToken
              _pssipsUploadType
              _pssipsCallback
              (Just AltJSON)
              _pssipsPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSnapshotsSetIAMPolicyResource)
                      mempty
