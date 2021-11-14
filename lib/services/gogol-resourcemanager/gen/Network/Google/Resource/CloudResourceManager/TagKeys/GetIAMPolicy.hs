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
-- Module      : Network.Google.Resource.CloudResourceManager.TagKeys.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a TagKey. The returned policy may be
-- empty if no such policy or resource exists. The \`resource\` field
-- should be the TagKey\'s resource name. For example, \"tagKeys\/1234\".
-- The caller must have
-- \`cloudresourcemanager.googleapis.com\/tagKeys.getIamPolicy\` permission
-- on the specified TagKey.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.getIamPolicy@.
module Network.Google.Resource.CloudResourceManager.TagKeys.GetIAMPolicy
    (
    -- * REST Resource
      TagKeysGetIAMPolicyResource

    -- * Creating a Request
    , tagKeysGetIAMPolicy
    , TagKeysGetIAMPolicy

    -- * Request Lenses
    , tkgipXgafv
    , tkgipUploadProtocol
    , tkgipAccessToken
    , tkgipUploadType
    , tkgipPayload
    , tkgipResource
    , tkgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.getIamPolicy@ method which the
-- 'TagKeysGetIAMPolicy' request conforms to.
type TagKeysGetIAMPolicyResource =
     "v3" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a TagKey. The returned policy may be
-- empty if no such policy or resource exists. The \`resource\` field
-- should be the TagKey\'s resource name. For example, \"tagKeys\/1234\".
-- The caller must have
-- \`cloudresourcemanager.googleapis.com\/tagKeys.getIamPolicy\` permission
-- on the specified TagKey.
--
-- /See:/ 'tagKeysGetIAMPolicy' smart constructor.
data TagKeysGetIAMPolicy =
  TagKeysGetIAMPolicy'
    { _tkgipXgafv :: !(Maybe Xgafv)
    , _tkgipUploadProtocol :: !(Maybe Text)
    , _tkgipAccessToken :: !(Maybe Text)
    , _tkgipUploadType :: !(Maybe Text)
    , _tkgipPayload :: !GetIAMPolicyRequest
    , _tkgipResource :: !Text
    , _tkgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKeysGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tkgipXgafv'
--
-- * 'tkgipUploadProtocol'
--
-- * 'tkgipAccessToken'
--
-- * 'tkgipUploadType'
--
-- * 'tkgipPayload'
--
-- * 'tkgipResource'
--
-- * 'tkgipCallback'
tagKeysGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'tkgipPayload'
    -> Text -- ^ 'tkgipResource'
    -> TagKeysGetIAMPolicy
tagKeysGetIAMPolicy pTkgipPayload_ pTkgipResource_ =
  TagKeysGetIAMPolicy'
    { _tkgipXgafv = Nothing
    , _tkgipUploadProtocol = Nothing
    , _tkgipAccessToken = Nothing
    , _tkgipUploadType = Nothing
    , _tkgipPayload = pTkgipPayload_
    , _tkgipResource = pTkgipResource_
    , _tkgipCallback = Nothing
    }


-- | V1 error format.
tkgipXgafv :: Lens' TagKeysGetIAMPolicy (Maybe Xgafv)
tkgipXgafv
  = lens _tkgipXgafv (\ s a -> s{_tkgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tkgipUploadProtocol :: Lens' TagKeysGetIAMPolicy (Maybe Text)
tkgipUploadProtocol
  = lens _tkgipUploadProtocol
      (\ s a -> s{_tkgipUploadProtocol = a})

-- | OAuth access token.
tkgipAccessToken :: Lens' TagKeysGetIAMPolicy (Maybe Text)
tkgipAccessToken
  = lens _tkgipAccessToken
      (\ s a -> s{_tkgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tkgipUploadType :: Lens' TagKeysGetIAMPolicy (Maybe Text)
tkgipUploadType
  = lens _tkgipUploadType
      (\ s a -> s{_tkgipUploadType = a})

-- | Multipart request metadata.
tkgipPayload :: Lens' TagKeysGetIAMPolicy GetIAMPolicyRequest
tkgipPayload
  = lens _tkgipPayload (\ s a -> s{_tkgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
tkgipResource :: Lens' TagKeysGetIAMPolicy Text
tkgipResource
  = lens _tkgipResource
      (\ s a -> s{_tkgipResource = a})

-- | JSONP
tkgipCallback :: Lens' TagKeysGetIAMPolicy (Maybe Text)
tkgipCallback
  = lens _tkgipCallback
      (\ s a -> s{_tkgipCallback = a})

instance GoogleRequest TagKeysGetIAMPolicy where
        type Rs TagKeysGetIAMPolicy = Policy
        type Scopes TagKeysGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TagKeysGetIAMPolicy'{..}
          = go _tkgipResource _tkgipXgafv _tkgipUploadProtocol
              _tkgipAccessToken
              _tkgipUploadType
              _tkgipCallback
              (Just AltJSON)
              _tkgipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagKeysGetIAMPolicyResource)
                      mempty
