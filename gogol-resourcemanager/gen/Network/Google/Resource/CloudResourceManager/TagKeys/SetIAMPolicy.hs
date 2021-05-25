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
-- Module      : Network.Google.Resource.CloudResourceManager.TagKeys.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a TagKey, replacing any existing
-- policy. The \`resource\` field should be the TagKey\'s resource name.
-- For example, \"tagKeys\/1234\". The caller must have
-- \`resourcemanager.tagKeys.setIamPolicy\` permission on the identified
-- tagValue.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.setIamPolicy@.
module Network.Google.Resource.CloudResourceManager.TagKeys.SetIAMPolicy
    (
    -- * REST Resource
      TagKeysSetIAMPolicyResource

    -- * Creating a Request
    , tagKeysSetIAMPolicy
    , TagKeysSetIAMPolicy

    -- * Request Lenses
    , tksipXgafv
    , tksipUploadProtocol
    , tksipAccessToken
    , tksipUploadType
    , tksipPayload
    , tksipResource
    , tksipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.setIamPolicy@ method which the
-- 'TagKeysSetIAMPolicy' request conforms to.
type TagKeysSetIAMPolicyResource =
     "v3" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on a TagKey, replacing any existing
-- policy. The \`resource\` field should be the TagKey\'s resource name.
-- For example, \"tagKeys\/1234\". The caller must have
-- \`resourcemanager.tagKeys.setIamPolicy\` permission on the identified
-- tagValue.
--
-- /See:/ 'tagKeysSetIAMPolicy' smart constructor.
data TagKeysSetIAMPolicy =
  TagKeysSetIAMPolicy'
    { _tksipXgafv :: !(Maybe Xgafv)
    , _tksipUploadProtocol :: !(Maybe Text)
    , _tksipAccessToken :: !(Maybe Text)
    , _tksipUploadType :: !(Maybe Text)
    , _tksipPayload :: !SetIAMPolicyRequest
    , _tksipResource :: !Text
    , _tksipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKeysSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tksipXgafv'
--
-- * 'tksipUploadProtocol'
--
-- * 'tksipAccessToken'
--
-- * 'tksipUploadType'
--
-- * 'tksipPayload'
--
-- * 'tksipResource'
--
-- * 'tksipCallback'
tagKeysSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'tksipPayload'
    -> Text -- ^ 'tksipResource'
    -> TagKeysSetIAMPolicy
tagKeysSetIAMPolicy pTksipPayload_ pTksipResource_ =
  TagKeysSetIAMPolicy'
    { _tksipXgafv = Nothing
    , _tksipUploadProtocol = Nothing
    , _tksipAccessToken = Nothing
    , _tksipUploadType = Nothing
    , _tksipPayload = pTksipPayload_
    , _tksipResource = pTksipResource_
    , _tksipCallback = Nothing
    }


-- | V1 error format.
tksipXgafv :: Lens' TagKeysSetIAMPolicy (Maybe Xgafv)
tksipXgafv
  = lens _tksipXgafv (\ s a -> s{_tksipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tksipUploadProtocol :: Lens' TagKeysSetIAMPolicy (Maybe Text)
tksipUploadProtocol
  = lens _tksipUploadProtocol
      (\ s a -> s{_tksipUploadProtocol = a})

-- | OAuth access token.
tksipAccessToken :: Lens' TagKeysSetIAMPolicy (Maybe Text)
tksipAccessToken
  = lens _tksipAccessToken
      (\ s a -> s{_tksipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tksipUploadType :: Lens' TagKeysSetIAMPolicy (Maybe Text)
tksipUploadType
  = lens _tksipUploadType
      (\ s a -> s{_tksipUploadType = a})

-- | Multipart request metadata.
tksipPayload :: Lens' TagKeysSetIAMPolicy SetIAMPolicyRequest
tksipPayload
  = lens _tksipPayload (\ s a -> s{_tksipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
tksipResource :: Lens' TagKeysSetIAMPolicy Text
tksipResource
  = lens _tksipResource
      (\ s a -> s{_tksipResource = a})

-- | JSONP
tksipCallback :: Lens' TagKeysSetIAMPolicy (Maybe Text)
tksipCallback
  = lens _tksipCallback
      (\ s a -> s{_tksipCallback = a})

instance GoogleRequest TagKeysSetIAMPolicy where
        type Rs TagKeysSetIAMPolicy = Policy
        type Scopes TagKeysSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagKeysSetIAMPolicy'{..}
          = go _tksipResource _tksipXgafv _tksipUploadProtocol
              _tksipAccessToken
              _tksipUploadType
              _tksipCallback
              (Just AltJSON)
              _tksipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagKeysSetIAMPolicyResource)
                      mempty
