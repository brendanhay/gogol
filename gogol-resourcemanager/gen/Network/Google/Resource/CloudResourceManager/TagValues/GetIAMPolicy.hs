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
-- Module      : Network.Google.Resource.CloudResourceManager.TagValues.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a TagValue. The returned policy may
-- be empty if no such policy or resource exists. The \`resource\` field
-- should be the TagValue\'s resource name. For example:
-- \`tagValues\/1234\`. The caller must have the
-- \`cloudresourcemanager.googleapis.com\/tagValues.getIamPolicy\`
-- permission on the identified TagValue to get the access control policy.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.getIamPolicy@.
module Network.Google.Resource.CloudResourceManager.TagValues.GetIAMPolicy
    (
    -- * REST Resource
      TagValuesGetIAMPolicyResource

    -- * Creating a Request
    , tagValuesGetIAMPolicy
    , TagValuesGetIAMPolicy

    -- * Request Lenses
    , tvgipXgafv
    , tvgipUploadProtocol
    , tvgipAccessToken
    , tvgipUploadType
    , tvgipPayload
    , tvgipResource
    , tvgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.getIamPolicy@ method which the
-- 'TagValuesGetIAMPolicy' request conforms to.
type TagValuesGetIAMPolicyResource =
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

-- | Gets the access control policy for a TagValue. The returned policy may
-- be empty if no such policy or resource exists. The \`resource\` field
-- should be the TagValue\'s resource name. For example:
-- \`tagValues\/1234\`. The caller must have the
-- \`cloudresourcemanager.googleapis.com\/tagValues.getIamPolicy\`
-- permission on the identified TagValue to get the access control policy.
--
-- /See:/ 'tagValuesGetIAMPolicy' smart constructor.
data TagValuesGetIAMPolicy =
  TagValuesGetIAMPolicy'
    { _tvgipXgafv :: !(Maybe Xgafv)
    , _tvgipUploadProtocol :: !(Maybe Text)
    , _tvgipAccessToken :: !(Maybe Text)
    , _tvgipUploadType :: !(Maybe Text)
    , _tvgipPayload :: !GetIAMPolicyRequest
    , _tvgipResource :: !Text
    , _tvgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValuesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgipXgafv'
--
-- * 'tvgipUploadProtocol'
--
-- * 'tvgipAccessToken'
--
-- * 'tvgipUploadType'
--
-- * 'tvgipPayload'
--
-- * 'tvgipResource'
--
-- * 'tvgipCallback'
tagValuesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'tvgipPayload'
    -> Text -- ^ 'tvgipResource'
    -> TagValuesGetIAMPolicy
tagValuesGetIAMPolicy pTvgipPayload_ pTvgipResource_ =
  TagValuesGetIAMPolicy'
    { _tvgipXgafv = Nothing
    , _tvgipUploadProtocol = Nothing
    , _tvgipAccessToken = Nothing
    , _tvgipUploadType = Nothing
    , _tvgipPayload = pTvgipPayload_
    , _tvgipResource = pTvgipResource_
    , _tvgipCallback = Nothing
    }


-- | V1 error format.
tvgipXgafv :: Lens' TagValuesGetIAMPolicy (Maybe Xgafv)
tvgipXgafv
  = lens _tvgipXgafv (\ s a -> s{_tvgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tvgipUploadProtocol :: Lens' TagValuesGetIAMPolicy (Maybe Text)
tvgipUploadProtocol
  = lens _tvgipUploadProtocol
      (\ s a -> s{_tvgipUploadProtocol = a})

-- | OAuth access token.
tvgipAccessToken :: Lens' TagValuesGetIAMPolicy (Maybe Text)
tvgipAccessToken
  = lens _tvgipAccessToken
      (\ s a -> s{_tvgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tvgipUploadType :: Lens' TagValuesGetIAMPolicy (Maybe Text)
tvgipUploadType
  = lens _tvgipUploadType
      (\ s a -> s{_tvgipUploadType = a})

-- | Multipart request metadata.
tvgipPayload :: Lens' TagValuesGetIAMPolicy GetIAMPolicyRequest
tvgipPayload
  = lens _tvgipPayload (\ s a -> s{_tvgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
tvgipResource :: Lens' TagValuesGetIAMPolicy Text
tvgipResource
  = lens _tvgipResource
      (\ s a -> s{_tvgipResource = a})

-- | JSONP
tvgipCallback :: Lens' TagValuesGetIAMPolicy (Maybe Text)
tvgipCallback
  = lens _tvgipCallback
      (\ s a -> s{_tvgipCallback = a})

instance GoogleRequest TagValuesGetIAMPolicy where
        type Rs TagValuesGetIAMPolicy = Policy
        type Scopes TagValuesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TagValuesGetIAMPolicy'{..}
          = go _tvgipResource _tvgipXgafv _tvgipUploadProtocol
              _tvgipAccessToken
              _tvgipUploadType
              _tvgipCallback
              (Just AltJSON)
              _tvgipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagValuesGetIAMPolicyResource)
                      mempty
