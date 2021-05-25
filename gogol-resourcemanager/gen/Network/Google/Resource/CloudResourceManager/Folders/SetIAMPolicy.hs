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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a folder, replacing any existing
-- policy. The \`resource\` field should be the folder\'s resource name,
-- for example: \"folders\/1234\". The caller must have
-- \`resourcemanager.folders.setIamPolicy\` permission on the identified
-- folder.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.setIamPolicy@.
module Network.Google.Resource.CloudResourceManager.Folders.SetIAMPolicy
    (
    -- * REST Resource
      FoldersSetIAMPolicyResource

    -- * Creating a Request
    , foldersSetIAMPolicy
    , FoldersSetIAMPolicy

    -- * Request Lenses
    , fsipXgafv
    , fsipUploadProtocol
    , fsipAccessToken
    , fsipUploadType
    , fsipPayload
    , fsipResource
    , fsipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.setIamPolicy@ method which the
-- 'FoldersSetIAMPolicy' request conforms to.
type FoldersSetIAMPolicyResource =
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

-- | Sets the access control policy on a folder, replacing any existing
-- policy. The \`resource\` field should be the folder\'s resource name,
-- for example: \"folders\/1234\". The caller must have
-- \`resourcemanager.folders.setIamPolicy\` permission on the identified
-- folder.
--
-- /See:/ 'foldersSetIAMPolicy' smart constructor.
data FoldersSetIAMPolicy =
  FoldersSetIAMPolicy'
    { _fsipXgafv :: !(Maybe Xgafv)
    , _fsipUploadProtocol :: !(Maybe Text)
    , _fsipAccessToken :: !(Maybe Text)
    , _fsipUploadType :: !(Maybe Text)
    , _fsipPayload :: !SetIAMPolicyRequest
    , _fsipResource :: !Text
    , _fsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsipXgafv'
--
-- * 'fsipUploadProtocol'
--
-- * 'fsipAccessToken'
--
-- * 'fsipUploadType'
--
-- * 'fsipPayload'
--
-- * 'fsipResource'
--
-- * 'fsipCallback'
foldersSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'fsipPayload'
    -> Text -- ^ 'fsipResource'
    -> FoldersSetIAMPolicy
foldersSetIAMPolicy pFsipPayload_ pFsipResource_ =
  FoldersSetIAMPolicy'
    { _fsipXgafv = Nothing
    , _fsipUploadProtocol = Nothing
    , _fsipAccessToken = Nothing
    , _fsipUploadType = Nothing
    , _fsipPayload = pFsipPayload_
    , _fsipResource = pFsipResource_
    , _fsipCallback = Nothing
    }


-- | V1 error format.
fsipXgafv :: Lens' FoldersSetIAMPolicy (Maybe Xgafv)
fsipXgafv
  = lens _fsipXgafv (\ s a -> s{_fsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fsipUploadProtocol :: Lens' FoldersSetIAMPolicy (Maybe Text)
fsipUploadProtocol
  = lens _fsipUploadProtocol
      (\ s a -> s{_fsipUploadProtocol = a})

-- | OAuth access token.
fsipAccessToken :: Lens' FoldersSetIAMPolicy (Maybe Text)
fsipAccessToken
  = lens _fsipAccessToken
      (\ s a -> s{_fsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fsipUploadType :: Lens' FoldersSetIAMPolicy (Maybe Text)
fsipUploadType
  = lens _fsipUploadType
      (\ s a -> s{_fsipUploadType = a})

-- | Multipart request metadata.
fsipPayload :: Lens' FoldersSetIAMPolicy SetIAMPolicyRequest
fsipPayload
  = lens _fsipPayload (\ s a -> s{_fsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
fsipResource :: Lens' FoldersSetIAMPolicy Text
fsipResource
  = lens _fsipResource (\ s a -> s{_fsipResource = a})

-- | JSONP
fsipCallback :: Lens' FoldersSetIAMPolicy (Maybe Text)
fsipCallback
  = lens _fsipCallback (\ s a -> s{_fsipCallback = a})

instance GoogleRequest FoldersSetIAMPolicy where
        type Rs FoldersSetIAMPolicy = Policy
        type Scopes FoldersSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersSetIAMPolicy'{..}
          = go _fsipResource _fsipXgafv _fsipUploadProtocol
              _fsipAccessToken
              _fsipUploadType
              _fsipCallback
              (Just AltJSON)
              _fsipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersSetIAMPolicyResource)
                      mempty
