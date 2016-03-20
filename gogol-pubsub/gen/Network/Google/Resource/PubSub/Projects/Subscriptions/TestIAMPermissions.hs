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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.testIamPermissions@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsSubscriptionsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsSubscriptionsTestIAMPermissions
    , ProjectsSubscriptionsTestIAMPermissions

    -- * Request Lenses
    , pstipXgafv
    , pstipUploadProtocol
    , pstipPp
    , pstipAccessToken
    , pstipUploadType
    , pstipPayload
    , pstipBearerToken
    , pstipResource
    , pstipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.testIamPermissions@ method which the
-- 'ProjectsSubscriptionsTestIAMPermissions' request conforms to.
type ProjectsSubscriptionsTestIAMPermissionsResource
     =
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
-- /See:/ 'projectsSubscriptionsTestIAMPermissions' smart constructor.
data ProjectsSubscriptionsTestIAMPermissions = ProjectsSubscriptionsTestIAMPermissions
    { _pstipXgafv          :: !(Maybe Text)
    , _pstipUploadProtocol :: !(Maybe Text)
    , _pstipPp             :: !Bool
    , _pstipAccessToken    :: !(Maybe Text)
    , _pstipUploadType     :: !(Maybe Text)
    , _pstipPayload        :: !TestIAMPermissionsRequest
    , _pstipBearerToken    :: !(Maybe Text)
    , _pstipResource       :: !Text
    , _pstipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstipXgafv'
--
-- * 'pstipUploadProtocol'
--
-- * 'pstipPp'
--
-- * 'pstipAccessToken'
--
-- * 'pstipUploadType'
--
-- * 'pstipPayload'
--
-- * 'pstipBearerToken'
--
-- * 'pstipResource'
--
-- * 'pstipCallback'
projectsSubscriptionsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pstipPayload'
    -> Text -- ^ 'pstipResource'
    -> ProjectsSubscriptionsTestIAMPermissions
projectsSubscriptionsTestIAMPermissions pPstipPayload_ pPstipResource_ =
    ProjectsSubscriptionsTestIAMPermissions
    { _pstipXgafv = Nothing
    , _pstipUploadProtocol = Nothing
    , _pstipPp = True
    , _pstipAccessToken = Nothing
    , _pstipUploadType = Nothing
    , _pstipPayload = pPstipPayload_
    , _pstipBearerToken = Nothing
    , _pstipResource = pPstipResource_
    , _pstipCallback = Nothing
    }

-- | V1 error format.
pstipXgafv :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstipXgafv
  = lens _pstipXgafv (\ s a -> s{_pstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pstipUploadProtocol :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstipUploadProtocol
  = lens _pstipUploadProtocol
      (\ s a -> s{_pstipUploadProtocol = a})

-- | Pretty-print response.
pstipPp :: Lens' ProjectsSubscriptionsTestIAMPermissions Bool
pstipPp = lens _pstipPp (\ s a -> s{_pstipPp = a})

-- | OAuth access token.
pstipAccessToken :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstipAccessToken
  = lens _pstipAccessToken
      (\ s a -> s{_pstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pstipUploadType :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstipUploadType
  = lens _pstipUploadType
      (\ s a -> s{_pstipUploadType = a})

-- | Multipart request metadata.
pstipPayload :: Lens' ProjectsSubscriptionsTestIAMPermissions TestIAMPermissionsRequest
pstipPayload
  = lens _pstipPayload (\ s a -> s{_pstipPayload = a})

-- | OAuth bearer token.
pstipBearerToken :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstipBearerToken
  = lens _pstipBearerToken
      (\ s a -> s{_pstipBearerToken = a})

-- | REQUIRED: The resource for which policy detail is being requested.
-- \`resource\` is usually specified as a path, such as,
-- \`projects\/{project}\/zones\/{zone}\/disks\/{disk}\`. The format for
-- the path specified in this value is resource specific and is specified
-- in the documentation for the respective TestIamPermissions rpc.
pstipResource :: Lens' ProjectsSubscriptionsTestIAMPermissions Text
pstipResource
  = lens _pstipResource
      (\ s a -> s{_pstipResource = a})

-- | JSONP
pstipCallback :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstipCallback
  = lens _pstipCallback
      (\ s a -> s{_pstipCallback = a})

instance GoogleRequest
         ProjectsSubscriptionsTestIAMPermissions where
        type Rs ProjectsSubscriptionsTestIAMPermissions =
             TestIAMPermissionsResponse
        requestClient
          ProjectsSubscriptionsTestIAMPermissions{..}
          = go _pstipResource _pstipXgafv _pstipUploadProtocol
              (Just _pstipPp)
              _pstipAccessToken
              _pstipUploadType
              _pstipBearerToken
              _pstipCallback
              (Just AltJSON)
              _pstipPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsSubscriptionsTestIAMPermissionsResource)
                      mempty
