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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.topics.testIamPermissions@.
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
    , pttipPp
    , pttipAccessToken
    , pttipUploadType
    , pttipPayload
    , pttipBearerToken
    , pttipResource
    , pttipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.testIamPermissions@ method which the
-- 'ProjectsTopicsTestIAMPermissions' request conforms to.
type ProjectsTopicsTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestIAMPermissionsRequest :>
                           Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'projectsTopicsTestIAMPermissions' smart constructor.
data ProjectsTopicsTestIAMPermissions = ProjectsTopicsTestIAMPermissions'
    { _pttipXgafv          :: !(Maybe Text)
    , _pttipUploadProtocol :: !(Maybe Text)
    , _pttipPp             :: !Bool
    , _pttipAccessToken    :: !(Maybe Text)
    , _pttipUploadType     :: !(Maybe Text)
    , _pttipPayload        :: !TestIAMPermissionsRequest
    , _pttipBearerToken    :: !(Maybe Text)
    , _pttipResource       :: !Text
    , _pttipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pttipXgafv'
--
-- * 'pttipUploadProtocol'
--
-- * 'pttipPp'
--
-- * 'pttipAccessToken'
--
-- * 'pttipUploadType'
--
-- * 'pttipPayload'
--
-- * 'pttipBearerToken'
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
    , _pttipPp = True
    , _pttipAccessToken = Nothing
    , _pttipUploadType = Nothing
    , _pttipPayload = pPttipPayload_
    , _pttipBearerToken = Nothing
    , _pttipResource = pPttipResource_
    , _pttipCallback = Nothing
    }

-- | V1 error format.
pttipXgafv :: Lens' ProjectsTopicsTestIAMPermissions (Maybe Text)
pttipXgafv
  = lens _pttipXgafv (\ s a -> s{_pttipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pttipUploadProtocol :: Lens' ProjectsTopicsTestIAMPermissions (Maybe Text)
pttipUploadProtocol
  = lens _pttipUploadProtocol
      (\ s a -> s{_pttipUploadProtocol = a})

-- | Pretty-print response.
pttipPp :: Lens' ProjectsTopicsTestIAMPermissions Bool
pttipPp = lens _pttipPp (\ s a -> s{_pttipPp = a})

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

-- | OAuth bearer token.
pttipBearerToken :: Lens' ProjectsTopicsTestIAMPermissions (Maybe Text)
pttipBearerToken
  = lens _pttipBearerToken
      (\ s a -> s{_pttipBearerToken = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- \`resource\` is usually specified as a path, such as
-- \`projects\/*project*\/zones\/*zone*\/disks\/*disk*\`. The format for
-- the path specified in this value is resource specific and is specified
-- in the \`testIamPermissions\` documentation.
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
         ProjectsTopicsTestIAMPermissions where
        type Rs ProjectsTopicsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsTopicsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsTestIAMPermissions'{..}
          = go _pttipResource _pttipXgafv _pttipUploadProtocol
              (Just _pttipPp)
              _pttipAccessToken
              _pttipUploadType
              _pttipBearerToken
              _pttipCallback
              (Just AltJSON)
              _pttipPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTopicsTestIAMPermissionsResource)
                      mempty
