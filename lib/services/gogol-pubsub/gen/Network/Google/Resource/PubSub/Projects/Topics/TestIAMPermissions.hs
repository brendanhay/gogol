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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a \`NOT_FOUND\` error. Note: This operation is designed to be used
-- for building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.testIamPermissions@.
module Network.Google.Resource.PubSub.Projects.Topics.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsTopicsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsTopicsTestIAMPermissions
    , ProjectsTopicsTestIAMPermissions

    -- * Request Lenses
    , pttipXgafv
    , pttipUploadProtocol
    , pttipAccessToken
    , pttipUploadType
    , pttipPayload
    , pttipResource
    , pttipCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.testIamPermissions@ method which the
-- 'ProjectsTopicsTestIAMPermissions' request conforms to.
type ProjectsTopicsTestIAMPermissionsResource =
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
-- not a \`NOT_FOUND\` error. Note: This operation is designed to be used
-- for building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsTopicsTestIAMPermissions' smart constructor.
data ProjectsTopicsTestIAMPermissions =
  ProjectsTopicsTestIAMPermissions'
    { _pttipXgafv :: !(Maybe Xgafv)
    , _pttipUploadProtocol :: !(Maybe Text)
    , _pttipAccessToken :: !(Maybe Text)
    , _pttipUploadType :: !(Maybe Text)
    , _pttipPayload :: !TestIAMPermissionsRequest
    , _pttipResource :: !Text
    , _pttipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTopicsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pttipXgafv'
--
-- * 'pttipUploadProtocol'
--
-- * 'pttipAccessToken'
--
-- * 'pttipUploadType'
--
-- * 'pttipPayload'
--
-- * 'pttipResource'
--
-- * 'pttipCallback'
projectsTopicsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pttipPayload'
    -> Text -- ^ 'pttipResource'
    -> ProjectsTopicsTestIAMPermissions
projectsTopicsTestIAMPermissions pPttipPayload_ pPttipResource_ =
  ProjectsTopicsTestIAMPermissions'
    { _pttipXgafv = Nothing
    , _pttipUploadProtocol = Nothing
    , _pttipAccessToken = Nothing
    , _pttipUploadType = Nothing
    , _pttipPayload = pPttipPayload_
    , _pttipResource = pPttipResource_
    , _pttipCallback = Nothing
    }


-- | V1 error format.
pttipXgafv :: Lens' ProjectsTopicsTestIAMPermissions (Maybe Xgafv)
pttipXgafv
  = lens _pttipXgafv (\ s a -> s{_pttipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pttipUploadProtocol :: Lens' ProjectsTopicsTestIAMPermissions (Maybe Text)
pttipUploadProtocol
  = lens _pttipUploadProtocol
      (\ s a -> s{_pttipUploadProtocol = a})

-- | OAuth access token.
pttipAccessToken :: Lens' ProjectsTopicsTestIAMPermissions (Maybe Text)
pttipAccessToken
  = lens _pttipAccessToken
      (\ s a -> s{_pttipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pttipUploadType :: Lens' ProjectsTopicsTestIAMPermissions (Maybe Text)
pttipUploadType
  = lens _pttipUploadType
      (\ s a -> s{_pttipUploadType = a})

-- | Multipart request metadata.
pttipPayload :: Lens' ProjectsTopicsTestIAMPermissions TestIAMPermissionsRequest
pttipPayload
  = lens _pttipPayload (\ s a -> s{_pttipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pttipResource :: Lens' ProjectsTopicsTestIAMPermissions Text
pttipResource
  = lens _pttipResource
      (\ s a -> s{_pttipResource = a})

-- | JSONP
pttipCallback :: Lens' ProjectsTopicsTestIAMPermissions (Maybe Text)
pttipCallback
  = lens _pttipCallback
      (\ s a -> s{_pttipCallback = a})

instance GoogleRequest
           ProjectsTopicsTestIAMPermissions
         where
        type Rs ProjectsTopicsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsTopicsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsTestIAMPermissions'{..}
          = go _pttipResource _pttipXgafv _pttipUploadProtocol
              _pttipAccessToken
              _pttipUploadType
              _pttipCallback
              (Just AltJSON)
              _pttipPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTopicsTestIAMPermissionsResource)
                      mempty
