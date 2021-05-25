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
-- Module      : Network.Google.Resource.CloudResourceManager.TagValues.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a TagValue, replacing any existing
-- policy. The \`resource\` field should be the TagValue\'s resource name.
-- For example: \`tagValues\/1234\`. The caller must have
-- \`resourcemanager.tagValues.setIamPolicy\` permission on the identified
-- tagValue.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.setIamPolicy@.
module Network.Google.Resource.CloudResourceManager.TagValues.SetIAMPolicy
    (
    -- * REST Resource
      TagValuesSetIAMPolicyResource

    -- * Creating a Request
    , tagValuesSetIAMPolicy
    , TagValuesSetIAMPolicy

    -- * Request Lenses
    , tvsipXgafv
    , tvsipUploadProtocol
    , tvsipAccessToken
    , tvsipUploadType
    , tvsipPayload
    , tvsipResource
    , tvsipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.setIamPolicy@ method which the
-- 'TagValuesSetIAMPolicy' request conforms to.
type TagValuesSetIAMPolicyResource =
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

-- | Sets the access control policy on a TagValue, replacing any existing
-- policy. The \`resource\` field should be the TagValue\'s resource name.
-- For example: \`tagValues\/1234\`. The caller must have
-- \`resourcemanager.tagValues.setIamPolicy\` permission on the identified
-- tagValue.
--
-- /See:/ 'tagValuesSetIAMPolicy' smart constructor.
data TagValuesSetIAMPolicy =
  TagValuesSetIAMPolicy'
    { _tvsipXgafv :: !(Maybe Xgafv)
    , _tvsipUploadProtocol :: !(Maybe Text)
    , _tvsipAccessToken :: !(Maybe Text)
    , _tvsipUploadType :: !(Maybe Text)
    , _tvsipPayload :: !SetIAMPolicyRequest
    , _tvsipResource :: !Text
    , _tvsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValuesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvsipXgafv'
--
-- * 'tvsipUploadProtocol'
--
-- * 'tvsipAccessToken'
--
-- * 'tvsipUploadType'
--
-- * 'tvsipPayload'
--
-- * 'tvsipResource'
--
-- * 'tvsipCallback'
tagValuesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'tvsipPayload'
    -> Text -- ^ 'tvsipResource'
    -> TagValuesSetIAMPolicy
tagValuesSetIAMPolicy pTvsipPayload_ pTvsipResource_ =
  TagValuesSetIAMPolicy'
    { _tvsipXgafv = Nothing
    , _tvsipUploadProtocol = Nothing
    , _tvsipAccessToken = Nothing
    , _tvsipUploadType = Nothing
    , _tvsipPayload = pTvsipPayload_
    , _tvsipResource = pTvsipResource_
    , _tvsipCallback = Nothing
    }


-- | V1 error format.
tvsipXgafv :: Lens' TagValuesSetIAMPolicy (Maybe Xgafv)
tvsipXgafv
  = lens _tvsipXgafv (\ s a -> s{_tvsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tvsipUploadProtocol :: Lens' TagValuesSetIAMPolicy (Maybe Text)
tvsipUploadProtocol
  = lens _tvsipUploadProtocol
      (\ s a -> s{_tvsipUploadProtocol = a})

-- | OAuth access token.
tvsipAccessToken :: Lens' TagValuesSetIAMPolicy (Maybe Text)
tvsipAccessToken
  = lens _tvsipAccessToken
      (\ s a -> s{_tvsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tvsipUploadType :: Lens' TagValuesSetIAMPolicy (Maybe Text)
tvsipUploadType
  = lens _tvsipUploadType
      (\ s a -> s{_tvsipUploadType = a})

-- | Multipart request metadata.
tvsipPayload :: Lens' TagValuesSetIAMPolicy SetIAMPolicyRequest
tvsipPayload
  = lens _tvsipPayload (\ s a -> s{_tvsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
tvsipResource :: Lens' TagValuesSetIAMPolicy Text
tvsipResource
  = lens _tvsipResource
      (\ s a -> s{_tvsipResource = a})

-- | JSONP
tvsipCallback :: Lens' TagValuesSetIAMPolicy (Maybe Text)
tvsipCallback
  = lens _tvsipCallback
      (\ s a -> s{_tvsipCallback = a})

instance GoogleRequest TagValuesSetIAMPolicy where
        type Rs TagValuesSetIAMPolicy = Policy
        type Scopes TagValuesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagValuesSetIAMPolicy'{..}
          = go _tvsipResource _tvsipXgafv _tvsipUploadProtocol
              _tvsipAccessToken
              _tvsipUploadType
              _tvsipCallback
              (Just AltJSON)
              _tvsipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagValuesSetIAMPolicyResource)
                      mempty
