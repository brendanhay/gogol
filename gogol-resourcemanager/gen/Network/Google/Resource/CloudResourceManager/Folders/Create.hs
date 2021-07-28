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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a folder in the resource hierarchy. Returns an \`Operation\`
-- which can be used to track the progress of the folder creation workflow.
-- Upon success, the \`Operation.response\` field will be populated with
-- the created Folder. In order to succeed, the addition of this new folder
-- must not violate the folder naming, height, or fanout constraints. + The
-- folder\'s \`display_name\` must be distinct from all other folders that
-- share its parent. + The addition of the folder must not cause the active
-- folder hierarchy to exceed a height of 10. Note, the full active +
-- deleted folder hierarchy is allowed to reach a height of 20; this
-- provides additional headroom when moving folders that contain deleted
-- folders. + The addition of the folder must not cause the total number of
-- folders under its parent to exceed 300. If the operation fails due to a
-- folder constraint violation, some errors may be returned by the
-- \`CreateFolder\` request, with status code \`FAILED_PRECONDITION\` and
-- an error description. Other folder constraint violations will be
-- communicated in the \`Operation\`, with the specific
-- \`PreconditionFailure\` returned in the details list in the
-- \`Operation.error\` field. The caller must have
-- \`resourcemanager.folders.create\` permission on the identified parent.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.create@.
module Network.Google.Resource.CloudResourceManager.Folders.Create
    (
    -- * REST Resource
      FoldersCreateResource

    -- * Creating a Request
    , foldersCreate
    , FoldersCreate

    -- * Request Lenses
    , fcXgafv
    , fcUploadProtocol
    , fcAccessToken
    , fcUploadType
    , fcPayload
    , fcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.create@ method which the
-- 'FoldersCreate' request conforms to.
type FoldersCreateResource =
     "v3" :>
       "folders" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Folder :> Post '[JSON] Operation

-- | Creates a folder in the resource hierarchy. Returns an \`Operation\`
-- which can be used to track the progress of the folder creation workflow.
-- Upon success, the \`Operation.response\` field will be populated with
-- the created Folder. In order to succeed, the addition of this new folder
-- must not violate the folder naming, height, or fanout constraints. + The
-- folder\'s \`display_name\` must be distinct from all other folders that
-- share its parent. + The addition of the folder must not cause the active
-- folder hierarchy to exceed a height of 10. Note, the full active +
-- deleted folder hierarchy is allowed to reach a height of 20; this
-- provides additional headroom when moving folders that contain deleted
-- folders. + The addition of the folder must not cause the total number of
-- folders under its parent to exceed 300. If the operation fails due to a
-- folder constraint violation, some errors may be returned by the
-- \`CreateFolder\` request, with status code \`FAILED_PRECONDITION\` and
-- an error description. Other folder constraint violations will be
-- communicated in the \`Operation\`, with the specific
-- \`PreconditionFailure\` returned in the details list in the
-- \`Operation.error\` field. The caller must have
-- \`resourcemanager.folders.create\` permission on the identified parent.
--
-- /See:/ 'foldersCreate' smart constructor.
data FoldersCreate =
  FoldersCreate'
    { _fcXgafv :: !(Maybe Xgafv)
    , _fcUploadProtocol :: !(Maybe Text)
    , _fcAccessToken :: !(Maybe Text)
    , _fcUploadType :: !(Maybe Text)
    , _fcPayload :: !Folder
    , _fcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcXgafv'
--
-- * 'fcUploadProtocol'
--
-- * 'fcAccessToken'
--
-- * 'fcUploadType'
--
-- * 'fcPayload'
--
-- * 'fcCallback'
foldersCreate
    :: Folder -- ^ 'fcPayload'
    -> FoldersCreate
foldersCreate pFcPayload_ =
  FoldersCreate'
    { _fcXgafv = Nothing
    , _fcUploadProtocol = Nothing
    , _fcAccessToken = Nothing
    , _fcUploadType = Nothing
    , _fcPayload = pFcPayload_
    , _fcCallback = Nothing
    }


-- | V1 error format.
fcXgafv :: Lens' FoldersCreate (Maybe Xgafv)
fcXgafv = lens _fcXgafv (\ s a -> s{_fcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fcUploadProtocol :: Lens' FoldersCreate (Maybe Text)
fcUploadProtocol
  = lens _fcUploadProtocol
      (\ s a -> s{_fcUploadProtocol = a})

-- | OAuth access token.
fcAccessToken :: Lens' FoldersCreate (Maybe Text)
fcAccessToken
  = lens _fcAccessToken
      (\ s a -> s{_fcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fcUploadType :: Lens' FoldersCreate (Maybe Text)
fcUploadType
  = lens _fcUploadType (\ s a -> s{_fcUploadType = a})

-- | Multipart request metadata.
fcPayload :: Lens' FoldersCreate Folder
fcPayload
  = lens _fcPayload (\ s a -> s{_fcPayload = a})

-- | JSONP
fcCallback :: Lens' FoldersCreate (Maybe Text)
fcCallback
  = lens _fcCallback (\ s a -> s{_fcCallback = a})

instance GoogleRequest FoldersCreate where
        type Rs FoldersCreate = Operation
        type Scopes FoldersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersCreate'{..}
          = go _fcXgafv _fcUploadProtocol _fcAccessToken
              _fcUploadType
              _fcCallback
              (Just AltJSON)
              _fcPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy FoldersCreateResource)
                      mempty
