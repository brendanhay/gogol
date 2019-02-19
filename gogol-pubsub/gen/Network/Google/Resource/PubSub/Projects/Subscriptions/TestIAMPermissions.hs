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
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.testIamPermissions@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsSubscriptionsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsSubscriptionsTestIAMPermissions
    , ProjectsSubscriptionsTestIAMPermissions

    -- * Request Lenses
    , pstiampXgafv
    , pstiampUploadProtocol
    , pstiampAccessToken
    , pstiampUploadType
    , pstiampPayload
    , pstiampResource
    , pstiampCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.testIamPermissions@ method which the
-- 'ProjectsSubscriptionsTestIAMPermissions' request conforms to.
type ProjectsSubscriptionsTestIAMPermissionsResource
     =
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
-- /See:/ 'projectsSubscriptionsTestIAMPermissions' smart constructor.
data ProjectsSubscriptionsTestIAMPermissions =
  ProjectsSubscriptionsTestIAMPermissions'
    { _pstiampXgafv          :: !(Maybe Xgafv)
    , _pstiampUploadProtocol :: !(Maybe Text)
    , _pstiampAccessToken    :: !(Maybe Text)
    , _pstiampUploadType     :: !(Maybe Text)
    , _pstiampPayload        :: !TestIAMPermissionsRequest
    , _pstiampResource       :: !Text
    , _pstiampCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstiampXgafv'
--
-- * 'pstiampUploadProtocol'
--
-- * 'pstiampAccessToken'
--
-- * 'pstiampUploadType'
--
-- * 'pstiampPayload'
--
-- * 'pstiampResource'
--
-- * 'pstiampCallback'
projectsSubscriptionsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pstiampPayload'
    -> Text -- ^ 'pstiampResource'
    -> ProjectsSubscriptionsTestIAMPermissions
projectsSubscriptionsTestIAMPermissions pPstiampPayload_ pPstiampResource_ =
  ProjectsSubscriptionsTestIAMPermissions'
    { _pstiampXgafv = Nothing
    , _pstiampUploadProtocol = Nothing
    , _pstiampAccessToken = Nothing
    , _pstiampUploadType = Nothing
    , _pstiampPayload = pPstiampPayload_
    , _pstiampResource = pPstiampResource_
    , _pstiampCallback = Nothing
    }


-- | V1 error format.
pstiampXgafv :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Xgafv)
pstiampXgafv
  = lens _pstiampXgafv (\ s a -> s{_pstiampXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pstiampUploadProtocol :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstiampUploadProtocol
  = lens _pstiampUploadProtocol
      (\ s a -> s{_pstiampUploadProtocol = a})

-- | OAuth access token.
pstiampAccessToken :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstiampAccessToken
  = lens _pstiampAccessToken
      (\ s a -> s{_pstiampAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pstiampUploadType :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstiampUploadType
  = lens _pstiampUploadType
      (\ s a -> s{_pstiampUploadType = a})

-- | Multipart request metadata.
pstiampPayload :: Lens' ProjectsSubscriptionsTestIAMPermissions TestIAMPermissionsRequest
pstiampPayload
  = lens _pstiampPayload
      (\ s a -> s{_pstiampPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pstiampResource :: Lens' ProjectsSubscriptionsTestIAMPermissions Text
pstiampResource
  = lens _pstiampResource
      (\ s a -> s{_pstiampResource = a})

-- | JSONP
pstiampCallback :: Lens' ProjectsSubscriptionsTestIAMPermissions (Maybe Text)
pstiampCallback
  = lens _pstiampCallback
      (\ s a -> s{_pstiampCallback = a})

instance GoogleRequest
           ProjectsSubscriptionsTestIAMPermissions
         where
        type Rs ProjectsSubscriptionsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsSubscriptionsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient
          ProjectsSubscriptionsTestIAMPermissions'{..}
          = go _pstiampResource _pstiampXgafv
              _pstiampUploadProtocol
              _pstiampAccessToken
              _pstiampUploadType
              _pstiampCallback
              (Just AltJSON)
              _pstiampPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsSubscriptionsTestIAMPermissionsResource)
                      mempty
