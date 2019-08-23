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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Folders that are direct descendants of supplied parent
-- resource. List provides a strongly consistent view of the Folders
-- underneath the specified parent resource. List returns Folders sorted
-- based upon the (ascending) lexical ordering of their display_name. The
-- caller must have \`resourcemanager.folders.list\` permission on the
-- identified parent.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.list@.
module Network.Google.Resource.CloudResourceManager.Folders.List
    (
    -- * REST Resource
      FoldersListResource

    -- * Creating a Request
    , foldersList
    , FoldersList

    -- * Request Lenses
    , flParent
    , flXgafv
    , flUploadProtocol
    , flAccessToken
    , flUploadType
    , flShowDeleted
    , flPageToken
    , flPageSize
    , flCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.list@ method which the
-- 'FoldersList' request conforms to.
type FoldersListResource =
     "v2" :>
       "folders" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListFoldersResponse

-- | Lists the Folders that are direct descendants of supplied parent
-- resource. List provides a strongly consistent view of the Folders
-- underneath the specified parent resource. List returns Folders sorted
-- based upon the (ascending) lexical ordering of their display_name. The
-- caller must have \`resourcemanager.folders.list\` permission on the
-- identified parent.
--
-- /See:/ 'foldersList' smart constructor.
data FoldersList =
  FoldersList'
    { _flParent         :: !(Maybe Text)
    , _flXgafv          :: !(Maybe Xgafv)
    , _flUploadProtocol :: !(Maybe Text)
    , _flAccessToken    :: !(Maybe Text)
    , _flUploadType     :: !(Maybe Text)
    , _flShowDeleted    :: !(Maybe Bool)
    , _flPageToken      :: !(Maybe Text)
    , _flPageSize       :: !(Maybe (Textual Int32))
    , _flCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flParent'
--
-- * 'flXgafv'
--
-- * 'flUploadProtocol'
--
-- * 'flAccessToken'
--
-- * 'flUploadType'
--
-- * 'flShowDeleted'
--
-- * 'flPageToken'
--
-- * 'flPageSize'
--
-- * 'flCallback'
foldersList
    :: FoldersList
foldersList =
  FoldersList'
    { _flParent = Nothing
    , _flXgafv = Nothing
    , _flUploadProtocol = Nothing
    , _flAccessToken = Nothing
    , _flUploadType = Nothing
    , _flShowDeleted = Nothing
    , _flPageToken = Nothing
    , _flPageSize = Nothing
    , _flCallback = Nothing
    }


-- | The resource name of the Organization or Folder whose Folders are being
-- listed. Must be of the form \`folders\/{folder_id}\` or
-- \`organizations\/{org_id}\`. Access to this method is controlled by
-- checking the \`resourcemanager.folders.list\` permission on the
-- \`parent\`.
flParent :: Lens' FoldersList (Maybe Text)
flParent = lens _flParent (\ s a -> s{_flParent = a})

-- | V1 error format.
flXgafv :: Lens' FoldersList (Maybe Xgafv)
flXgafv = lens _flXgafv (\ s a -> s{_flXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flUploadProtocol :: Lens' FoldersList (Maybe Text)
flUploadProtocol
  = lens _flUploadProtocol
      (\ s a -> s{_flUploadProtocol = a})

-- | OAuth access token.
flAccessToken :: Lens' FoldersList (Maybe Text)
flAccessToken
  = lens _flAccessToken
      (\ s a -> s{_flAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flUploadType :: Lens' FoldersList (Maybe Text)
flUploadType
  = lens _flUploadType (\ s a -> s{_flUploadType = a})

-- | Controls whether Folders in the DELETE_REQUESTED state should be
-- returned. Defaults to false. This field is optional.
flShowDeleted :: Lens' FoldersList (Maybe Bool)
flShowDeleted
  = lens _flShowDeleted
      (\ s a -> s{_flShowDeleted = a})

-- | A pagination token returned from a previous call to \`ListFolders\` that
-- indicates where this listing should continue from. This field is
-- optional.
flPageToken :: Lens' FoldersList (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | The maximum number of Folders to return in the response. This field is
-- optional.
flPageSize :: Lens' FoldersList (Maybe Int32)
flPageSize
  = lens _flPageSize (\ s a -> s{_flPageSize = a}) .
      mapping _Coerce

-- | JSONP
flCallback :: Lens' FoldersList (Maybe Text)
flCallback
  = lens _flCallback (\ s a -> s{_flCallback = a})

instance GoogleRequest FoldersList where
        type Rs FoldersList = ListFoldersResponse
        type Scopes FoldersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient FoldersList'{..}
          = go _flParent _flXgafv _flUploadProtocol
              _flAccessToken
              _flUploadType
              _flShowDeleted
              _flPageToken
              _flPageSize
              _flCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy FoldersListResource)
                      mempty
