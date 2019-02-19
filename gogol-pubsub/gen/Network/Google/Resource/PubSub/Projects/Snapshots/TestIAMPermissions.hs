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
-- Module      : Network.Google.Resource.PubSub.Projects.Snapshots.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.testIamPermissions@.
module Network.Google.Resource.PubSub.Projects.Snapshots.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsSnapshotsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsSnapshotsTestIAMPermissions
    , ProjectsSnapshotsTestIAMPermissions

    -- * Request Lenses
    , pstipXgafv
    , pstipUploadProtocol
    , pstipAccessToken
    , pstipUploadType
    , pstipPayload
    , pstipResource
    , pstipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.testIamPermissions@ method which the
-- 'ProjectsSnapshotsTestIAMPermissions' request conforms to.
type ProjectsSnapshotsTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsSnapshotsTestIAMPermissions' smart constructor.
data ProjectsSnapshotsTestIAMPermissions =
  ProjectsSnapshotsTestIAMPermissions'
    { _pstipXgafv          :: !(Maybe Xgafv)
    , _pstipUploadProtocol :: !(Maybe Text)
    , _pstipAccessToken    :: !(Maybe Text)
    , _pstipUploadType     :: !(Maybe Text)
    , _pstipPayload        :: !TestIAMPermissionsRequest
    , _pstipResource       :: !Text
    , _pstipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSnapshotsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstipXgafv'
--
-- * 'pstipUploadProtocol'
--
-- * 'pstipAccessToken'
--
-- * 'pstipUploadType'
--
-- * 'pstipPayload'
--
-- * 'pstipResource'
--
-- * 'pstipCallback'
projectsSnapshotsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pstipPayload'
    -> Text -- ^ 'pstipResource'
    -> ProjectsSnapshotsTestIAMPermissions
projectsSnapshotsTestIAMPermissions pPstipPayload_ pPstipResource_ =
  ProjectsSnapshotsTestIAMPermissions'
    { _pstipXgafv = Nothing
    , _pstipUploadProtocol = Nothing
    , _pstipAccessToken = Nothing
    , _pstipUploadType = Nothing
    , _pstipPayload = pPstipPayload_
    , _pstipResource = pPstipResource_
    , _pstipCallback = Nothing
    }


-- | V1 error format.
pstipXgafv :: Lens' ProjectsSnapshotsTestIAMPermissions (Maybe Xgafv)
pstipXgafv
  = lens _pstipXgafv (\ s a -> s{_pstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pstipUploadProtocol :: Lens' ProjectsSnapshotsTestIAMPermissions (Maybe Text)
pstipUploadProtocol
  = lens _pstipUploadProtocol
      (\ s a -> s{_pstipUploadProtocol = a})

-- | OAuth access token.
pstipAccessToken :: Lens' ProjectsSnapshotsTestIAMPermissions (Maybe Text)
pstipAccessToken
  = lens _pstipAccessToken
      (\ s a -> s{_pstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pstipUploadType :: Lens' ProjectsSnapshotsTestIAMPermissions (Maybe Text)
pstipUploadType
  = lens _pstipUploadType
      (\ s a -> s{_pstipUploadType = a})

-- | Multipart request metadata.
pstipPayload :: Lens' ProjectsSnapshotsTestIAMPermissions TestIAMPermissionsRequest
pstipPayload
  = lens _pstipPayload (\ s a -> s{_pstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pstipResource :: Lens' ProjectsSnapshotsTestIAMPermissions Text
pstipResource
  = lens _pstipResource
      (\ s a -> s{_pstipResource = a})

-- | JSONP
pstipCallback :: Lens' ProjectsSnapshotsTestIAMPermissions (Maybe Text)
pstipCallback
  = lens _pstipCallback
      (\ s a -> s{_pstipCallback = a})

instance GoogleRequest
           ProjectsSnapshotsTestIAMPermissions
         where
        type Rs ProjectsSnapshotsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsSnapshotsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient
          ProjectsSnapshotsTestIAMPermissions'{..}
          = go _pstipResource _pstipXgafv _pstipUploadProtocol
              _pstipAccessToken
              _pstipUploadType
              _pstipCallback
              (Just AltJSON)
              _pstipPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSnapshotsTestIAMPermissionsResource)
                      mempty
