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
-- Module      : Network.Google.Resource.CloudResourceManager.TagValues.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified TagValue. The
-- \`resource\` field should be the TagValue\'s resource name. For example:
-- \`tagValues\/1234\`. There are no permissions required for making this
-- API call.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.testIamPermissions@.
module Network.Google.Resource.CloudResourceManager.TagValues.TestIAMPermissions
    (
    -- * REST Resource
      TagValuesTestIAMPermissionsResource

    -- * Creating a Request
    , tagValuesTestIAMPermissions
    , TagValuesTestIAMPermissions

    -- * Request Lenses
    , tvtipXgafv
    , tvtipUploadProtocol
    , tvtipAccessToken
    , tvtipUploadType
    , tvtipPayload
    , tvtipResource
    , tvtipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.testIamPermissions@ method which the
-- 'TagValuesTestIAMPermissions' request conforms to.
type TagValuesTestIAMPermissionsResource =
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

-- | Returns permissions that a caller has on the specified TagValue. The
-- \`resource\` field should be the TagValue\'s resource name. For example:
-- \`tagValues\/1234\`. There are no permissions required for making this
-- API call.
--
-- /See:/ 'tagValuesTestIAMPermissions' smart constructor.
data TagValuesTestIAMPermissions =
  TagValuesTestIAMPermissions'
    { _tvtipXgafv :: !(Maybe Xgafv)
    , _tvtipUploadProtocol :: !(Maybe Text)
    , _tvtipAccessToken :: !(Maybe Text)
    , _tvtipUploadType :: !(Maybe Text)
    , _tvtipPayload :: !TestIAMPermissionsRequest
    , _tvtipResource :: !Text
    , _tvtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValuesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvtipXgafv'
--
-- * 'tvtipUploadProtocol'
--
-- * 'tvtipAccessToken'
--
-- * 'tvtipUploadType'
--
-- * 'tvtipPayload'
--
-- * 'tvtipResource'
--
-- * 'tvtipCallback'
tagValuesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'tvtipPayload'
    -> Text -- ^ 'tvtipResource'
    -> TagValuesTestIAMPermissions
tagValuesTestIAMPermissions pTvtipPayload_ pTvtipResource_ =
  TagValuesTestIAMPermissions'
    { _tvtipXgafv = Nothing
    , _tvtipUploadProtocol = Nothing
    , _tvtipAccessToken = Nothing
    , _tvtipUploadType = Nothing
    , _tvtipPayload = pTvtipPayload_
    , _tvtipResource = pTvtipResource_
    , _tvtipCallback = Nothing
    }


-- | V1 error format.
tvtipXgafv :: Lens' TagValuesTestIAMPermissions (Maybe Xgafv)
tvtipXgafv
  = lens _tvtipXgafv (\ s a -> s{_tvtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tvtipUploadProtocol :: Lens' TagValuesTestIAMPermissions (Maybe Text)
tvtipUploadProtocol
  = lens _tvtipUploadProtocol
      (\ s a -> s{_tvtipUploadProtocol = a})

-- | OAuth access token.
tvtipAccessToken :: Lens' TagValuesTestIAMPermissions (Maybe Text)
tvtipAccessToken
  = lens _tvtipAccessToken
      (\ s a -> s{_tvtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tvtipUploadType :: Lens' TagValuesTestIAMPermissions (Maybe Text)
tvtipUploadType
  = lens _tvtipUploadType
      (\ s a -> s{_tvtipUploadType = a})

-- | Multipart request metadata.
tvtipPayload :: Lens' TagValuesTestIAMPermissions TestIAMPermissionsRequest
tvtipPayload
  = lens _tvtipPayload (\ s a -> s{_tvtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
tvtipResource :: Lens' TagValuesTestIAMPermissions Text
tvtipResource
  = lens _tvtipResource
      (\ s a -> s{_tvtipResource = a})

-- | JSONP
tvtipCallback :: Lens' TagValuesTestIAMPermissions (Maybe Text)
tvtipCallback
  = lens _tvtipCallback
      (\ s a -> s{_tvtipCallback = a})

instance GoogleRequest TagValuesTestIAMPermissions
         where
        type Rs TagValuesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes TagValuesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagValuesTestIAMPermissions'{..}
          = go _tvtipResource _tvtipXgafv _tvtipUploadProtocol
              _tvtipAccessToken
              _tvtipUploadType
              _tvtipCallback
              (Just AltJSON)
              _tvtipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagValuesTestIAMPermissionsResource)
                      mempty
