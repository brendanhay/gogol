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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a Folder. The returned policy may be
-- empty if no such policy or resource exists. The \`resource\` field
-- should be the Folder\'s resource name, e.g. \"folders\/1234\". The
-- caller must have \`resourcemanager.folders.getIamPolicy\` permission on
-- the identified folder.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.getIamPolicy@.
module Network.Google.Resource.CloudResourceManager.Folders.GetIAMPolicy
    (
    -- * REST Resource
      FoldersGetIAMPolicyResource

    -- * Creating a Request
    , foldersGetIAMPolicy
    , FoldersGetIAMPolicy

    -- * Request Lenses
    , fgipXgafv
    , fgipUploadProtocol
    , fgipAccessToken
    , fgipUploadType
    , fgipPayload
    , fgipResource
    , fgipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.getIamPolicy@ method which the
-- 'FoldersGetIAMPolicy' request conforms to.
type FoldersGetIAMPolicyResource =
     "v2" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a Folder. The returned policy may be
-- empty if no such policy or resource exists. The \`resource\` field
-- should be the Folder\'s resource name, e.g. \"folders\/1234\". The
-- caller must have \`resourcemanager.folders.getIamPolicy\` permission on
-- the identified folder.
--
-- /See:/ 'foldersGetIAMPolicy' smart constructor.
data FoldersGetIAMPolicy =
  FoldersGetIAMPolicy'
    { _fgipXgafv          :: !(Maybe Xgafv)
    , _fgipUploadProtocol :: !(Maybe Text)
    , _fgipAccessToken    :: !(Maybe Text)
    , _fgipUploadType     :: !(Maybe Text)
    , _fgipPayload        :: !GetIAMPolicyRequest
    , _fgipResource       :: !Text
    , _fgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FoldersGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgipXgafv'
--
-- * 'fgipUploadProtocol'
--
-- * 'fgipAccessToken'
--
-- * 'fgipUploadType'
--
-- * 'fgipPayload'
--
-- * 'fgipResource'
--
-- * 'fgipCallback'
foldersGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'fgipPayload'
    -> Text -- ^ 'fgipResource'
    -> FoldersGetIAMPolicy
foldersGetIAMPolicy pFgipPayload_ pFgipResource_ =
  FoldersGetIAMPolicy'
    { _fgipXgafv = Nothing
    , _fgipUploadProtocol = Nothing
    , _fgipAccessToken = Nothing
    , _fgipUploadType = Nothing
    , _fgipPayload = pFgipPayload_
    , _fgipResource = pFgipResource_
    , _fgipCallback = Nothing
    }

-- | V1 error format.
fgipXgafv :: Lens' FoldersGetIAMPolicy (Maybe Xgafv)
fgipXgafv
  = lens _fgipXgafv (\ s a -> s{_fgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fgipUploadProtocol :: Lens' FoldersGetIAMPolicy (Maybe Text)
fgipUploadProtocol
  = lens _fgipUploadProtocol
      (\ s a -> s{_fgipUploadProtocol = a})

-- | OAuth access token.
fgipAccessToken :: Lens' FoldersGetIAMPolicy (Maybe Text)
fgipAccessToken
  = lens _fgipAccessToken
      (\ s a -> s{_fgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fgipUploadType :: Lens' FoldersGetIAMPolicy (Maybe Text)
fgipUploadType
  = lens _fgipUploadType
      (\ s a -> s{_fgipUploadType = a})

-- | Multipart request metadata.
fgipPayload :: Lens' FoldersGetIAMPolicy GetIAMPolicyRequest
fgipPayload
  = lens _fgipPayload (\ s a -> s{_fgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
fgipResource :: Lens' FoldersGetIAMPolicy Text
fgipResource
  = lens _fgipResource (\ s a -> s{_fgipResource = a})

-- | JSONP
fgipCallback :: Lens' FoldersGetIAMPolicy (Maybe Text)
fgipCallback
  = lens _fgipCallback (\ s a -> s{_fgipCallback = a})

instance GoogleRequest FoldersGetIAMPolicy where
        type Rs FoldersGetIAMPolicy = Policy
        type Scopes FoldersGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient FoldersGetIAMPolicy'{..}
          = go _fgipResource _fgipXgafv _fgipUploadProtocol
              _fgipAccessToken
              _fgipUploadType
              _fgipCallback
              (Just AltJSON)
              _fgipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersGetIAMPolicyResource)
                      mempty
