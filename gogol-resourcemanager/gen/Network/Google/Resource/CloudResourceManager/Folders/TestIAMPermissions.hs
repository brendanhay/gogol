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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified Folder. The
-- \`resource\` field should be the Folder\'s resource name, e.g.
-- \"folders\/1234\". There are no permissions required for making this API
-- call.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.testIamPermissions@.
module Network.Google.Resource.CloudResourceManager.Folders.TestIAMPermissions
    (
    -- * REST Resource
      FoldersTestIAMPermissionsResource

    -- * Creating a Request
    , foldersTestIAMPermissions
    , FoldersTestIAMPermissions

    -- * Request Lenses
    , ftipXgafv
    , ftipUploadProtocol
    , ftipAccessToken
    , ftipUploadType
    , ftipPayload
    , ftipResource
    , ftipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.testIamPermissions@ method which the
-- 'FoldersTestIAMPermissions' request conforms to.
type FoldersTestIAMPermissionsResource =
     "v2" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified Folder. The
-- \`resource\` field should be the Folder\'s resource name, e.g.
-- \"folders\/1234\". There are no permissions required for making this API
-- call.
--
-- /See:/ 'foldersTestIAMPermissions' smart constructor.
data FoldersTestIAMPermissions = FoldersTestIAMPermissions'
    { _ftipXgafv          :: !(Maybe Xgafv)
    , _ftipUploadProtocol :: !(Maybe Text)
    , _ftipAccessToken    :: !(Maybe Text)
    , _ftipUploadType     :: !(Maybe Text)
    , _ftipPayload        :: !TestIAMPermissionsRequest
    , _ftipResource       :: !Text
    , _ftipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FoldersTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftipXgafv'
--
-- * 'ftipUploadProtocol'
--
-- * 'ftipAccessToken'
--
-- * 'ftipUploadType'
--
-- * 'ftipPayload'
--
-- * 'ftipResource'
--
-- * 'ftipCallback'
foldersTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'ftipPayload'
    -> Text -- ^ 'ftipResource'
    -> FoldersTestIAMPermissions
foldersTestIAMPermissions pFtipPayload_ pFtipResource_ =
    FoldersTestIAMPermissions'
    { _ftipXgafv = Nothing
    , _ftipUploadProtocol = Nothing
    , _ftipAccessToken = Nothing
    , _ftipUploadType = Nothing
    , _ftipPayload = pFtipPayload_
    , _ftipResource = pFtipResource_
    , _ftipCallback = Nothing
    }

-- | V1 error format.
ftipXgafv :: Lens' FoldersTestIAMPermissions (Maybe Xgafv)
ftipXgafv
  = lens _ftipXgafv (\ s a -> s{_ftipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ftipUploadProtocol :: Lens' FoldersTestIAMPermissions (Maybe Text)
ftipUploadProtocol
  = lens _ftipUploadProtocol
      (\ s a -> s{_ftipUploadProtocol = a})

-- | OAuth access token.
ftipAccessToken :: Lens' FoldersTestIAMPermissions (Maybe Text)
ftipAccessToken
  = lens _ftipAccessToken
      (\ s a -> s{_ftipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ftipUploadType :: Lens' FoldersTestIAMPermissions (Maybe Text)
ftipUploadType
  = lens _ftipUploadType
      (\ s a -> s{_ftipUploadType = a})

-- | Multipart request metadata.
ftipPayload :: Lens' FoldersTestIAMPermissions TestIAMPermissionsRequest
ftipPayload
  = lens _ftipPayload (\ s a -> s{_ftipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
ftipResource :: Lens' FoldersTestIAMPermissions Text
ftipResource
  = lens _ftipResource (\ s a -> s{_ftipResource = a})

-- | JSONP
ftipCallback :: Lens' FoldersTestIAMPermissions (Maybe Text)
ftipCallback
  = lens _ftipCallback (\ s a -> s{_ftipCallback = a})

instance GoogleRequest FoldersTestIAMPermissions
         where
        type Rs FoldersTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes FoldersTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersTestIAMPermissions'{..}
          = go _ftipResource _ftipXgafv _ftipUploadProtocol
              _ftipAccessToken
              _ftipUploadType
              _ftipCallback
              (Just AltJSON)
              _ftipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersTestIAMPermissionsResource)
                      mempty
