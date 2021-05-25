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
-- Module      : Network.Google.Resource.CloudResourceManager.TagKeys.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified TagKey. The
-- \`resource\` field should be the TagKey\'s resource name. For example,
-- \"tagKeys\/1234\". There are no permissions required for making this API
-- call.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.testIamPermissions@.
module Network.Google.Resource.CloudResourceManager.TagKeys.TestIAMPermissions
    (
    -- * REST Resource
      TagKeysTestIAMPermissionsResource

    -- * Creating a Request
    , tagKeysTestIAMPermissions
    , TagKeysTestIAMPermissions

    -- * Request Lenses
    , tktipXgafv
    , tktipUploadProtocol
    , tktipAccessToken
    , tktipUploadType
    , tktipPayload
    , tktipResource
    , tktipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.testIamPermissions@ method which the
-- 'TagKeysTestIAMPermissions' request conforms to.
type TagKeysTestIAMPermissionsResource =
     "v3" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified TagKey. The
-- \`resource\` field should be the TagKey\'s resource name. For example,
-- \"tagKeys\/1234\". There are no permissions required for making this API
-- call.
--
-- /See:/ 'tagKeysTestIAMPermissions' smart constructor.
data TagKeysTestIAMPermissions =
  TagKeysTestIAMPermissions'
    { _tktipXgafv :: !(Maybe Xgafv)
    , _tktipUploadProtocol :: !(Maybe Text)
    , _tktipAccessToken :: !(Maybe Text)
    , _tktipUploadType :: !(Maybe Text)
    , _tktipPayload :: !TestIAMPermissionsRequest
    , _tktipResource :: !Text
    , _tktipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKeysTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tktipXgafv'
--
-- * 'tktipUploadProtocol'
--
-- * 'tktipAccessToken'
--
-- * 'tktipUploadType'
--
-- * 'tktipPayload'
--
-- * 'tktipResource'
--
-- * 'tktipCallback'
tagKeysTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'tktipPayload'
    -> Text -- ^ 'tktipResource'
    -> TagKeysTestIAMPermissions
tagKeysTestIAMPermissions pTktipPayload_ pTktipResource_ =
  TagKeysTestIAMPermissions'
    { _tktipXgafv = Nothing
    , _tktipUploadProtocol = Nothing
    , _tktipAccessToken = Nothing
    , _tktipUploadType = Nothing
    , _tktipPayload = pTktipPayload_
    , _tktipResource = pTktipResource_
    , _tktipCallback = Nothing
    }


-- | V1 error format.
tktipXgafv :: Lens' TagKeysTestIAMPermissions (Maybe Xgafv)
tktipXgafv
  = lens _tktipXgafv (\ s a -> s{_tktipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tktipUploadProtocol :: Lens' TagKeysTestIAMPermissions (Maybe Text)
tktipUploadProtocol
  = lens _tktipUploadProtocol
      (\ s a -> s{_tktipUploadProtocol = a})

-- | OAuth access token.
tktipAccessToken :: Lens' TagKeysTestIAMPermissions (Maybe Text)
tktipAccessToken
  = lens _tktipAccessToken
      (\ s a -> s{_tktipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tktipUploadType :: Lens' TagKeysTestIAMPermissions (Maybe Text)
tktipUploadType
  = lens _tktipUploadType
      (\ s a -> s{_tktipUploadType = a})

-- | Multipart request metadata.
tktipPayload :: Lens' TagKeysTestIAMPermissions TestIAMPermissionsRequest
tktipPayload
  = lens _tktipPayload (\ s a -> s{_tktipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
tktipResource :: Lens' TagKeysTestIAMPermissions Text
tktipResource
  = lens _tktipResource
      (\ s a -> s{_tktipResource = a})

-- | JSONP
tktipCallback :: Lens' TagKeysTestIAMPermissions (Maybe Text)
tktipCallback
  = lens _tktipCallback
      (\ s a -> s{_tktipCallback = a})

instance GoogleRequest TagKeysTestIAMPermissions
         where
        type Rs TagKeysTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes TagKeysTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagKeysTestIAMPermissions'{..}
          = go _tktipResource _tktipXgafv _tktipUploadProtocol
              _tktipAccessToken
              _tktipUploadType
              _tktipCallback
              (Just AltJSON)
              _tktipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagKeysTestIAMPermissionsResource)
                      mempty
