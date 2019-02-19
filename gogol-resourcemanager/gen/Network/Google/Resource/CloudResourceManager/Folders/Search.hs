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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for folders that match specific filter criteria. Search provides
-- an eventually consistent view of the folders a user has access to which
-- meet the specified filter criteria. This will only return folders on
-- which the caller has the permission \`resourcemanager.folders.get\`.
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
    , fsPayload
    , fsCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.search@ method which the
-- 'FoldersSearch' request conforms to.
type FoldersSearchResource =
     "v2" :>
       "folders:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SearchFoldersRequest :>
                       Post '[JSON] SearchFoldersResponse

-- | Search for folders that match specific filter criteria. Search provides
-- an eventually consistent view of the folders a user has access to which
-- meet the specified filter criteria. This will only return folders on
-- which the caller has the permission \`resourcemanager.folders.get\`.
--
-- /See:/ 'foldersSearch' smart constructor.
data FoldersSearch =
  FoldersSearch'
    { _fsXgafv          :: !(Maybe Xgafv)
    , _fsUploadProtocol :: !(Maybe Text)
    , _fsAccessToken    :: !(Maybe Text)
    , _fsUploadType     :: !(Maybe Text)
    , _fsPayload        :: !SearchFoldersRequest
    , _fsCallback       :: !(Maybe Text)
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
-- * 'fsPayload'
--
-- * 'fsCallback'
foldersSearch
    :: SearchFoldersRequest -- ^ 'fsPayload'
    -> FoldersSearch
foldersSearch pFsPayload_ =
  FoldersSearch'
    { _fsXgafv = Nothing
    , _fsUploadProtocol = Nothing
    , _fsAccessToken = Nothing
    , _fsUploadType = Nothing
    , _fsPayload = pFsPayload_
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

-- | Multipart request metadata.
fsPayload :: Lens' FoldersSearch SearchFoldersRequest
fsPayload
  = lens _fsPayload (\ s a -> s{_fsPayload = a})

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
              _fsCallback
              (Just AltJSON)
              _fsPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy FoldersSearchResource)
                      mempty
