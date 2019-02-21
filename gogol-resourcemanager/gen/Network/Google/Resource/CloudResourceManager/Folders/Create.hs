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
-- Creates a Folder in the resource hierarchy. Returns an Operation which
-- can be used to track the progress of the folder creation workflow. Upon
-- success the Operation.response field will be populated with the created
-- Folder. In order to succeed, the addition of this new Folder must not
-- violate the Folder naming, height or fanout constraints. + The Folder\'s
-- display_name must be distinct from all other Folder\'s that share its
-- parent. + The addition of the Folder must not cause the active Folder
-- hierarchy to exceed a height of 4. Note, the full active + deleted
-- Folder hierarchy is allowed to reach a height of 8; this provides
-- additional headroom when moving folders that contain deleted folders. +
-- The addition of the Folder must not cause the total number of Folders
-- under its parent to exceed 100. If the operation fails due to a folder
-- constraint violation, some errors may be returned by the CreateFolder
-- request, with status code FAILED_PRECONDITION and an error description.
-- Other folder constraint violations will be communicated in the
-- Operation, with the specific PreconditionFailure returned via the
-- details list in the Operation.error field. The caller must have
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
    , fcParent
    , fcXgafv
    , fcUploadProtocol
    , fcAccessToken
    , fcUploadType
    , fcPayload
    , fcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.create@ method which the
-- 'FoldersCreate' request conforms to.
type FoldersCreateResource =
     "v2" :>
       "folders" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Folder :> Post '[JSON] Operation

-- | Creates a Folder in the resource hierarchy. Returns an Operation which
-- can be used to track the progress of the folder creation workflow. Upon
-- success the Operation.response field will be populated with the created
-- Folder. In order to succeed, the addition of this new Folder must not
-- violate the Folder naming, height or fanout constraints. + The Folder\'s
-- display_name must be distinct from all other Folder\'s that share its
-- parent. + The addition of the Folder must not cause the active Folder
-- hierarchy to exceed a height of 4. Note, the full active + deleted
-- Folder hierarchy is allowed to reach a height of 8; this provides
-- additional headroom when moving folders that contain deleted folders. +
-- The addition of the Folder must not cause the total number of Folders
-- under its parent to exceed 100. If the operation fails due to a folder
-- constraint violation, some errors may be returned by the CreateFolder
-- request, with status code FAILED_PRECONDITION and an error description.
-- Other folder constraint violations will be communicated in the
-- Operation, with the specific PreconditionFailure returned via the
-- details list in the Operation.error field. The caller must have
-- \`resourcemanager.folders.create\` permission on the identified parent.
--
-- /See:/ 'foldersCreate' smart constructor.
data FoldersCreate =
  FoldersCreate'
    { _fcParent         :: !(Maybe Text)
    , _fcXgafv          :: !(Maybe Xgafv)
    , _fcUploadProtocol :: !(Maybe Text)
    , _fcAccessToken    :: !(Maybe Text)
    , _fcUploadType     :: !(Maybe Text)
    , _fcPayload        :: !Folder
    , _fcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcParent'
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
    { _fcParent = Nothing
    , _fcXgafv = Nothing
    , _fcUploadProtocol = Nothing
    , _fcAccessToken = Nothing
    , _fcUploadType = Nothing
    , _fcPayload = pFcPayload_
    , _fcCallback = Nothing
    }


-- | The resource name of the new Folder\'s parent. Must be of the form
-- \`folders\/{folder_id}\` or \`organizations\/{org_id}\`.
fcParent :: Lens' FoldersCreate (Maybe Text)
fcParent = lens _fcParent (\ s a -> s{_fcParent = a})

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
          = go _fcParent _fcXgafv _fcUploadProtocol
              _fcAccessToken
              _fcUploadType
              _fcCallback
              (Just AltJSON)
              _fcPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy FoldersCreateResource)
                      mempty
