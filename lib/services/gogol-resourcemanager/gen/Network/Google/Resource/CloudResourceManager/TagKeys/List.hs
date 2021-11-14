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
-- Module      : Network.Google.Resource.CloudResourceManager.TagKeys.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all TagKeys for a parent resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.list@.
module Network.Google.Resource.CloudResourceManager.TagKeys.List
    (
    -- * REST Resource
      TagKeysListResource

    -- * Creating a Request
    , tagKeysList
    , TagKeysList

    -- * Request Lenses
    , tklParent
    , tklXgafv
    , tklUploadProtocol
    , tklAccessToken
    , tklUploadType
    , tklPageToken
    , tklPageSize
    , tklCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.list@ method which the
-- 'TagKeysList' request conforms to.
type TagKeysListResource =
     "v3" :>
       "tagKeys" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTagKeysResponse

-- | Lists all TagKeys for a parent resource.
--
-- /See:/ 'tagKeysList' smart constructor.
data TagKeysList =
  TagKeysList'
    { _tklParent :: !(Maybe Text)
    , _tklXgafv :: !(Maybe Xgafv)
    , _tklUploadProtocol :: !(Maybe Text)
    , _tklAccessToken :: !(Maybe Text)
    , _tklUploadType :: !(Maybe Text)
    , _tklPageToken :: !(Maybe Text)
    , _tklPageSize :: !(Maybe (Textual Int32))
    , _tklCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tklParent'
--
-- * 'tklXgafv'
--
-- * 'tklUploadProtocol'
--
-- * 'tklAccessToken'
--
-- * 'tklUploadType'
--
-- * 'tklPageToken'
--
-- * 'tklPageSize'
--
-- * 'tklCallback'
tagKeysList
    :: TagKeysList
tagKeysList =
  TagKeysList'
    { _tklParent = Nothing
    , _tklXgafv = Nothing
    , _tklUploadProtocol = Nothing
    , _tklAccessToken = Nothing
    , _tklUploadType = Nothing
    , _tklPageToken = Nothing
    , _tklPageSize = Nothing
    , _tklCallback = Nothing
    }


-- | Required. The resource name of the new TagKey\'s parent. Must be of the
-- form \`folders\/{folder_id}\` or \`organizations\/{org_id}\`.
tklParent :: Lens' TagKeysList (Maybe Text)
tklParent
  = lens _tklParent (\ s a -> s{_tklParent = a})

-- | V1 error format.
tklXgafv :: Lens' TagKeysList (Maybe Xgafv)
tklXgafv = lens _tklXgafv (\ s a -> s{_tklXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tklUploadProtocol :: Lens' TagKeysList (Maybe Text)
tklUploadProtocol
  = lens _tklUploadProtocol
      (\ s a -> s{_tklUploadProtocol = a})

-- | OAuth access token.
tklAccessToken :: Lens' TagKeysList (Maybe Text)
tklAccessToken
  = lens _tklAccessToken
      (\ s a -> s{_tklAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tklUploadType :: Lens' TagKeysList (Maybe Text)
tklUploadType
  = lens _tklUploadType
      (\ s a -> s{_tklUploadType = a})

-- | Optional. A pagination token returned from a previous call to
-- \`ListTagKey\` that indicates where this listing should continue from.
tklPageToken :: Lens' TagKeysList (Maybe Text)
tklPageToken
  = lens _tklPageToken (\ s a -> s{_tklPageToken = a})

-- | Optional. The maximum number of TagKeys to return in the response. The
-- server allows a maximum of 300 TagKeys to return. If unspecified, the
-- server will use 100 as the default.
tklPageSize :: Lens' TagKeysList (Maybe Int32)
tklPageSize
  = lens _tklPageSize (\ s a -> s{_tklPageSize = a}) .
      mapping _Coerce

-- | JSONP
tklCallback :: Lens' TagKeysList (Maybe Text)
tklCallback
  = lens _tklCallback (\ s a -> s{_tklCallback = a})

instance GoogleRequest TagKeysList where
        type Rs TagKeysList = ListTagKeysResponse
        type Scopes TagKeysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TagKeysList'{..}
          = go _tklParent _tklXgafv _tklUploadProtocol
              _tklAccessToken
              _tklUploadType
              _tklPageToken
              _tklPageSize
              _tklCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy TagKeysListResource)
                      mempty
