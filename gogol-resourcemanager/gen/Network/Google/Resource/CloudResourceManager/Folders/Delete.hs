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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests deletion of a Folder. The Folder is moved into the
-- DELETE_REQUESTED state immediately, and is deleted approximately 30 days
-- later. This method may only be called on an empty Folder in the ACTIVE
-- state, where a Folder is empty if it doesn\'t contain any Folders or
-- Projects in the ACTIVE state. The caller must have
-- \`resourcemanager.folders.delete\` permission on the identified folder.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.delete@.
module Network.Google.Resource.CloudResourceManager.Folders.Delete
    (
    -- * REST Resource
      FoldersDeleteResource

    -- * Creating a Request
    , foldersDelete
    , FoldersDelete

    -- * Request Lenses
    , fdXgafv
    , fdUploadProtocol
    , fdAccessToken
    , fdUploadType
    , fdName
    , fdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.delete@ method which the
-- 'FoldersDelete' request conforms to.
type FoldersDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Folder

-- | Requests deletion of a Folder. The Folder is moved into the
-- DELETE_REQUESTED state immediately, and is deleted approximately 30 days
-- later. This method may only be called on an empty Folder in the ACTIVE
-- state, where a Folder is empty if it doesn\'t contain any Folders or
-- Projects in the ACTIVE state. The caller must have
-- \`resourcemanager.folders.delete\` permission on the identified folder.
--
-- /See:/ 'foldersDelete' smart constructor.
data FoldersDelete = FoldersDelete'
    { _fdXgafv          :: !(Maybe Xgafv)
    , _fdUploadProtocol :: !(Maybe Text)
    , _fdAccessToken    :: !(Maybe Text)
    , _fdUploadType     :: !(Maybe Text)
    , _fdName           :: !Text
    , _fdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FoldersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdXgafv'
--
-- * 'fdUploadProtocol'
--
-- * 'fdAccessToken'
--
-- * 'fdUploadType'
--
-- * 'fdName'
--
-- * 'fdCallback'
foldersDelete
    :: Text -- ^ 'fdName'
    -> FoldersDelete
foldersDelete pFdName_ =
    FoldersDelete'
    { _fdXgafv = Nothing
    , _fdUploadProtocol = Nothing
    , _fdAccessToken = Nothing
    , _fdUploadType = Nothing
    , _fdName = pFdName_
    , _fdCallback = Nothing
    }

-- | V1 error format.
fdXgafv :: Lens' FoldersDelete (Maybe Xgafv)
fdXgafv = lens _fdXgafv (\ s a -> s{_fdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fdUploadProtocol :: Lens' FoldersDelete (Maybe Text)
fdUploadProtocol
  = lens _fdUploadProtocol
      (\ s a -> s{_fdUploadProtocol = a})

-- | OAuth access token.
fdAccessToken :: Lens' FoldersDelete (Maybe Text)
fdAccessToken
  = lens _fdAccessToken
      (\ s a -> s{_fdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fdUploadType :: Lens' FoldersDelete (Maybe Text)
fdUploadType
  = lens _fdUploadType (\ s a -> s{_fdUploadType = a})

-- | the resource name of the Folder to be deleted. Must be of the form
-- \`folders\/{folder_id}\`.
fdName :: Lens' FoldersDelete Text
fdName = lens _fdName (\ s a -> s{_fdName = a})

-- | JSONP
fdCallback :: Lens' FoldersDelete (Maybe Text)
fdCallback
  = lens _fdCallback (\ s a -> s{_fdCallback = a})

instance GoogleRequest FoldersDelete where
        type Rs FoldersDelete = Folder
        type Scopes FoldersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersDelete'{..}
          = go _fdName _fdXgafv _fdUploadProtocol
              _fdAccessToken
              _fdUploadType
              _fdCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy FoldersDeleteResource)
                      mempty
