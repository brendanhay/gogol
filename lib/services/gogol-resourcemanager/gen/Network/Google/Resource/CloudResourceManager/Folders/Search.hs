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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for folders that match specific filter criteria. \`search()\`
-- provides an eventually consistent view of the folders a user has access
-- to which meet the specified filter criteria. This will only return
-- folders on which the caller has the permission
-- \`resourcemanager.folders.get\`.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.search@.
module Network.Google.Resource.CloudResourceManager.Folders.Search
    (
    -- * REST Resource
      FoldersSearchResource

    -- * Creating a Request
    , foldersSearch
    , FoldersSearch

    -- * Request Lenses
    , fsXgafv
    , fsUploadProtocol
    , fsAccessToken
    , fsUploadType
    , fsQuery
    , fsPageToken
    , fsPageSize
    , fsCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.search@ method which the
-- 'FoldersSearch' request conforms to.
type FoldersSearchResource =
     "v3" :>
       "folders:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "query" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SearchFoldersResponse

-- | Search for folders that match specific filter criteria. \`search()\`
-- provides an eventually consistent view of the folders a user has access
-- to which meet the specified filter criteria. This will only return
-- folders on which the caller has the permission
-- \`resourcemanager.folders.get\`.
--
-- /See:/ 'foldersSearch' smart constructor.
data FoldersSearch =
  FoldersSearch'
    { _fsXgafv :: !(Maybe Xgafv)
    , _fsUploadProtocol :: !(Maybe Text)
    , _fsAccessToken :: !(Maybe Text)
    , _fsUploadType :: !(Maybe Text)
    , _fsQuery :: !(Maybe Text)
    , _fsPageToken :: !(Maybe Text)
    , _fsPageSize :: !(Maybe (Textual Int32))
    , _fsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsXgafv'
--
-- * 'fsUploadProtocol'
--
-- * 'fsAccessToken'
--
-- * 'fsUploadType'
--
-- * 'fsQuery'
--
-- * 'fsPageToken'
--
-- * 'fsPageSize'
--
-- * 'fsCallback'
foldersSearch
    :: FoldersSearch
foldersSearch =
  FoldersSearch'
    { _fsXgafv = Nothing
    , _fsUploadProtocol = Nothing
    , _fsAccessToken = Nothing
    , _fsUploadType = Nothing
    , _fsQuery = Nothing
    , _fsPageToken = Nothing
    , _fsPageSize = Nothing
    , _fsCallback = Nothing
    }


-- | V1 error format.
fsXgafv :: Lens' FoldersSearch (Maybe Xgafv)
fsXgafv = lens _fsXgafv (\ s a -> s{_fsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fsUploadProtocol :: Lens' FoldersSearch (Maybe Text)
fsUploadProtocol
  = lens _fsUploadProtocol
      (\ s a -> s{_fsUploadProtocol = a})

-- | OAuth access token.
fsAccessToken :: Lens' FoldersSearch (Maybe Text)
fsAccessToken
  = lens _fsAccessToken
      (\ s a -> s{_fsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fsUploadType :: Lens' FoldersSearch (Maybe Text)
fsUploadType
  = lens _fsUploadType (\ s a -> s{_fsUploadType = a})

-- | Optional. Search criteria used to select the folders to return. If no
-- search criteria is specified then all accessible folders will be
-- returned. Query expressions can be used to restrict results based upon
-- displayName, state and parent, where the operators \`=\` (\`:\`)
-- \`NOT\`, \`AND\` and \`OR\` can be used along with the suffix wildcard
-- symbol \`*\`. The \`displayName\` field in a query expression should use
-- escaped quotes for values that include whitespace to prevent unexpected
-- behavior. | Field | Description |
-- |-------------------------|----------------------------------------| |
-- displayName | Filters by displayName. | | parent | Filters by parent
-- (for example: folders\/123). | | state, lifecycleState | Filters by
-- state. | Some example queries are: * Query \`displayName=Test*\` returns
-- Folder resources whose display name starts with \"Test\". * Query
-- \`state=ACTIVE\` returns Folder resources with \`state\` set to
-- \`ACTIVE\`. * Query \`parent=folders\/123\` returns Folder resources
-- that have \`folders\/123\` as a parent resource. * Query
-- \`parent=folders\/123 AND state=ACTIVE\` returns active Folder resources
-- that have \`folders\/123\` as a parent resource. * Query
-- \`displayName=\\\\\"Test String\\\\\"\` returns Folder resources with
-- display names that include both \"Test\" and \"String\".
fsQuery :: Lens' FoldersSearch (Maybe Text)
fsQuery = lens _fsQuery (\ s a -> s{_fsQuery = a})

-- | Optional. A pagination token returned from a previous call to
-- \`SearchFolders\` that indicates from where search should continue.
fsPageToken :: Lens' FoldersSearch (Maybe Text)
fsPageToken
  = lens _fsPageToken (\ s a -> s{_fsPageToken = a})

-- | Optional. The maximum number of folders to return in the response. If
-- unspecified, server picks an appropriate default.
fsPageSize :: Lens' FoldersSearch (Maybe Int32)
fsPageSize
  = lens _fsPageSize (\ s a -> s{_fsPageSize = a}) .
      mapping _Coerce

-- | JSONP
fsCallback :: Lens' FoldersSearch (Maybe Text)
fsCallback
  = lens _fsCallback (\ s a -> s{_fsCallback = a})

instance GoogleRequest FoldersSearch where
        type Rs FoldersSearch = SearchFoldersResponse
        type Scopes FoldersSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient FoldersSearch'{..}
          = go _fsXgafv _fsUploadProtocol _fsAccessToken
              _fsUploadType
              _fsQuery
              _fsPageToken
              _fsPageSize
              _fsCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy FoldersSearchResource)
                      mempty
