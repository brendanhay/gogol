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
-- Module      : Network.Google.Resource.CloudResourceManager.TagValues.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all TagValues for a specific TagKey.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.list@.
module Network.Google.Resource.CloudResourceManager.TagValues.List
    (
    -- * REST Resource
      TagValuesListResource

    -- * Creating a Request
    , tagValuesList
    , TagValuesList

    -- * Request Lenses
    , tvlParent
    , tvlXgafv
    , tvlUploadProtocol
    , tvlAccessToken
    , tvlUploadType
    , tvlPageToken
    , tvlPageSize
    , tvlCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.list@ method which the
-- 'TagValuesList' request conforms to.
type TagValuesListResource =
     "v3" :>
       "tagValues" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTagValuesResponse

-- | Lists all TagValues for a specific TagKey.
--
-- /See:/ 'tagValuesList' smart constructor.
data TagValuesList =
  TagValuesList'
    { _tvlParent :: !(Maybe Text)
    , _tvlXgafv :: !(Maybe Xgafv)
    , _tvlUploadProtocol :: !(Maybe Text)
    , _tvlAccessToken :: !(Maybe Text)
    , _tvlUploadType :: !(Maybe Text)
    , _tvlPageToken :: !(Maybe Text)
    , _tvlPageSize :: !(Maybe (Textual Int32))
    , _tvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValuesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvlParent'
--
-- * 'tvlXgafv'
--
-- * 'tvlUploadProtocol'
--
-- * 'tvlAccessToken'
--
-- * 'tvlUploadType'
--
-- * 'tvlPageToken'
--
-- * 'tvlPageSize'
--
-- * 'tvlCallback'
tagValuesList
    :: TagValuesList
tagValuesList =
  TagValuesList'
    { _tvlParent = Nothing
    , _tvlXgafv = Nothing
    , _tvlUploadProtocol = Nothing
    , _tvlAccessToken = Nothing
    , _tvlUploadType = Nothing
    , _tvlPageToken = Nothing
    , _tvlPageSize = Nothing
    , _tvlCallback = Nothing
    }


-- | Required. Resource name for TagKey, parent of the TagValues to be
-- listed, in the format \`tagKeys\/123\`.
tvlParent :: Lens' TagValuesList (Maybe Text)
tvlParent
  = lens _tvlParent (\ s a -> s{_tvlParent = a})

-- | V1 error format.
tvlXgafv :: Lens' TagValuesList (Maybe Xgafv)
tvlXgafv = lens _tvlXgafv (\ s a -> s{_tvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tvlUploadProtocol :: Lens' TagValuesList (Maybe Text)
tvlUploadProtocol
  = lens _tvlUploadProtocol
      (\ s a -> s{_tvlUploadProtocol = a})

-- | OAuth access token.
tvlAccessToken :: Lens' TagValuesList (Maybe Text)
tvlAccessToken
  = lens _tvlAccessToken
      (\ s a -> s{_tvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tvlUploadType :: Lens' TagValuesList (Maybe Text)
tvlUploadType
  = lens _tvlUploadType
      (\ s a -> s{_tvlUploadType = a})

-- | Optional. A pagination token returned from a previous call to
-- \`ListTagValues\` that indicates where this listing should continue
-- from.
tvlPageToken :: Lens' TagValuesList (Maybe Text)
tvlPageToken
  = lens _tvlPageToken (\ s a -> s{_tvlPageToken = a})

-- | Optional. The maximum number of TagValues to return in the response. The
-- server allows a maximum of 300 TagValues to return. If unspecified, the
-- server will use 100 as the default.
tvlPageSize :: Lens' TagValuesList (Maybe Int32)
tvlPageSize
  = lens _tvlPageSize (\ s a -> s{_tvlPageSize = a}) .
      mapping _Coerce

-- | JSONP
tvlCallback :: Lens' TagValuesList (Maybe Text)
tvlCallback
  = lens _tvlCallback (\ s a -> s{_tvlCallback = a})

instance GoogleRequest TagValuesList where
        type Rs TagValuesList = ListTagValuesResponse
        type Scopes TagValuesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TagValuesList'{..}
          = go _tvlParent _tvlXgafv _tvlUploadProtocol
              _tvlAccessToken
              _tvlUploadType
              _tvlPageToken
              _tvlPageSize
              _tvlCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy TagValuesListResource)
                      mempty
