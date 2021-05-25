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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a folder, changing its \`display_name\`. Changes to the folder
-- \`display_name\` will be rejected if they violate either the
-- \`display_name\` formatting rules or the naming constraints described in
-- the CreateFolder documentation. The folder\'s \`display_name\` must
-- start and end with a letter or digit, may contain letters, digits,
-- spaces, hyphens and underscores and can be between 3 and 30 characters.
-- This is captured by the regular expression:
-- \`\\p{L}\\p{N}{1,28}[\\p{L}\\p{N}]\`. The caller must have
-- \`resourcemanager.folders.update\` permission on the identified folder.
-- If the update fails due to the unique name constraint then a
-- \`PreconditionFailure\` explaining this violation will be returned in
-- the Status.details field.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.patch@.
module Network.Google.Resource.CloudResourceManager.Folders.Patch
    (
    -- * REST Resource
      FoldersPatchResource

    -- * Creating a Request
    , foldersPatch
    , FoldersPatch

    -- * Request Lenses
    , fpXgafv
    , fpUploadProtocol
    , fpUpdateMask
    , fpAccessToken
    , fpUploadType
    , fpPayload
    , fpName
    , fpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.patch@ method which the
-- 'FoldersPatch' request conforms to.
type FoldersPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Folder :> Patch '[JSON] Operation

-- | Updates a folder, changing its \`display_name\`. Changes to the folder
-- \`display_name\` will be rejected if they violate either the
-- \`display_name\` formatting rules or the naming constraints described in
-- the CreateFolder documentation. The folder\'s \`display_name\` must
-- start and end with a letter or digit, may contain letters, digits,
-- spaces, hyphens and underscores and can be between 3 and 30 characters.
-- This is captured by the regular expression:
-- \`\\p{L}\\p{N}{1,28}[\\p{L}\\p{N}]\`. The caller must have
-- \`resourcemanager.folders.update\` permission on the identified folder.
-- If the update fails due to the unique name constraint then a
-- \`PreconditionFailure\` explaining this violation will be returned in
-- the Status.details field.
--
-- /See:/ 'foldersPatch' smart constructor.
data FoldersPatch =
  FoldersPatch'
    { _fpXgafv :: !(Maybe Xgafv)
    , _fpUploadProtocol :: !(Maybe Text)
    , _fpUpdateMask :: !(Maybe GFieldMask)
    , _fpAccessToken :: !(Maybe Text)
    , _fpUploadType :: !(Maybe Text)
    , _fpPayload :: !Folder
    , _fpName :: !Text
    , _fpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpXgafv'
--
-- * 'fpUploadProtocol'
--
-- * 'fpUpdateMask'
--
-- * 'fpAccessToken'
--
-- * 'fpUploadType'
--
-- * 'fpPayload'
--
-- * 'fpName'
--
-- * 'fpCallback'
foldersPatch
    :: Folder -- ^ 'fpPayload'
    -> Text -- ^ 'fpName'
    -> FoldersPatch
foldersPatch pFpPayload_ pFpName_ =
  FoldersPatch'
    { _fpXgafv = Nothing
    , _fpUploadProtocol = Nothing
    , _fpUpdateMask = Nothing
    , _fpAccessToken = Nothing
    , _fpUploadType = Nothing
    , _fpPayload = pFpPayload_
    , _fpName = pFpName_
    , _fpCallback = Nothing
    }


-- | V1 error format.
fpXgafv :: Lens' FoldersPatch (Maybe Xgafv)
fpXgafv = lens _fpXgafv (\ s a -> s{_fpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fpUploadProtocol :: Lens' FoldersPatch (Maybe Text)
fpUploadProtocol
  = lens _fpUploadProtocol
      (\ s a -> s{_fpUploadProtocol = a})

-- | Required. Fields to be updated. Only the \`display_name\` can be
-- updated.
fpUpdateMask :: Lens' FoldersPatch (Maybe GFieldMask)
fpUpdateMask
  = lens _fpUpdateMask (\ s a -> s{_fpUpdateMask = a})

-- | OAuth access token.
fpAccessToken :: Lens' FoldersPatch (Maybe Text)
fpAccessToken
  = lens _fpAccessToken
      (\ s a -> s{_fpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fpUploadType :: Lens' FoldersPatch (Maybe Text)
fpUploadType
  = lens _fpUploadType (\ s a -> s{_fpUploadType = a})

-- | Multipart request metadata.
fpPayload :: Lens' FoldersPatch Folder
fpPayload
  = lens _fpPayload (\ s a -> s{_fpPayload = a})

-- | Output only. The resource name of the folder. Its format is
-- \`folders\/{folder_id}\`, for example: \"folders\/1234\".
fpName :: Lens' FoldersPatch Text
fpName = lens _fpName (\ s a -> s{_fpName = a})

-- | JSONP
fpCallback :: Lens' FoldersPatch (Maybe Text)
fpCallback
  = lens _fpCallback (\ s a -> s{_fpCallback = a})

instance GoogleRequest FoldersPatch where
        type Rs FoldersPatch = Operation
        type Scopes FoldersPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersPatch'{..}
          = go _fpName _fpXgafv _fpUploadProtocol _fpUpdateMask
              _fpAccessToken
              _fpUploadType
              _fpCallback
              (Just AltJSON)
              _fpPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy FoldersPatchResource)
                      mempty
