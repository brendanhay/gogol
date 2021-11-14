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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.testIamPermissions@.
module Network.Google.Resource.PubSub.Projects.Schemas.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsSchemasTestIAMPermissionsResource

    -- * Creating a Request
    , projectsSchemasTestIAMPermissions
    , ProjectsSchemasTestIAMPermissions

    -- * Request Lenses
    , pstipsXgafv
    , pstipsUploadProtocol
    , pstipsAccessToken
    , pstipsUploadType
    , pstipsPayload
    , pstipsResource
    , pstipsCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.testIamPermissions@ method which the
-- 'ProjectsSchemasTestIAMPermissions' request conforms to.
type ProjectsSchemasTestIAMPermissionsResource =
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
-- /See:/ 'projectsSchemasTestIAMPermissions' smart constructor.
data ProjectsSchemasTestIAMPermissions =
  ProjectsSchemasTestIAMPermissions'
    { _pstipsXgafv :: !(Maybe Xgafv)
    , _pstipsUploadProtocol :: !(Maybe Text)
    , _pstipsAccessToken :: !(Maybe Text)
    , _pstipsUploadType :: !(Maybe Text)
    , _pstipsPayload :: !TestIAMPermissionsRequest
    , _pstipsResource :: !Text
    , _pstipsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstipsXgafv'
--
-- * 'pstipsUploadProtocol'
--
-- * 'pstipsAccessToken'
--
-- * 'pstipsUploadType'
--
-- * 'pstipsPayload'
--
-- * 'pstipsResource'
--
-- * 'pstipsCallback'
projectsSchemasTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pstipsPayload'
    -> Text -- ^ 'pstipsResource'
    -> ProjectsSchemasTestIAMPermissions
projectsSchemasTestIAMPermissions pPstipsPayload_ pPstipsResource_ =
  ProjectsSchemasTestIAMPermissions'
    { _pstipsXgafv = Nothing
    , _pstipsUploadProtocol = Nothing
    , _pstipsAccessToken = Nothing
    , _pstipsUploadType = Nothing
    , _pstipsPayload = pPstipsPayload_
    , _pstipsResource = pPstipsResource_
    , _pstipsCallback = Nothing
    }


-- | V1 error format.
pstipsXgafv :: Lens' ProjectsSchemasTestIAMPermissions (Maybe Xgafv)
pstipsXgafv
  = lens _pstipsXgafv (\ s a -> s{_pstipsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pstipsUploadProtocol :: Lens' ProjectsSchemasTestIAMPermissions (Maybe Text)
pstipsUploadProtocol
  = lens _pstipsUploadProtocol
      (\ s a -> s{_pstipsUploadProtocol = a})

-- | OAuth access token.
pstipsAccessToken :: Lens' ProjectsSchemasTestIAMPermissions (Maybe Text)
pstipsAccessToken
  = lens _pstipsAccessToken
      (\ s a -> s{_pstipsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pstipsUploadType :: Lens' ProjectsSchemasTestIAMPermissions (Maybe Text)
pstipsUploadType
  = lens _pstipsUploadType
      (\ s a -> s{_pstipsUploadType = a})

-- | Multipart request metadata.
pstipsPayload :: Lens' ProjectsSchemasTestIAMPermissions TestIAMPermissionsRequest
pstipsPayload
  = lens _pstipsPayload
      (\ s a -> s{_pstipsPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pstipsResource :: Lens' ProjectsSchemasTestIAMPermissions Text
pstipsResource
  = lens _pstipsResource
      (\ s a -> s{_pstipsResource = a})

-- | JSONP
pstipsCallback :: Lens' ProjectsSchemasTestIAMPermissions (Maybe Text)
pstipsCallback
  = lens _pstipsCallback
      (\ s a -> s{_pstipsCallback = a})

instance GoogleRequest
           ProjectsSchemasTestIAMPermissions
         where
        type Rs ProjectsSchemasTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsSchemasTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasTestIAMPermissions'{..}
          = go _pstipsResource _pstipsXgafv
              _pstipsUploadProtocol
              _pstipsAccessToken
              _pstipsUploadType
              _pstipsCallback
              (Just AltJSON)
              _pstipsPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSchemasTestIAMPermissionsResource)
                      mempty
