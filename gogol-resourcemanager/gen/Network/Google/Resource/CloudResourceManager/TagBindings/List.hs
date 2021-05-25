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
-- Module      : Network.Google.Resource.CloudResourceManager.TagBindings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the TagBindings for the given cloud resource, as specified with
-- \`parent\`. NOTE: The \`parent\` field is expected to be a full resource
-- name:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagBindings.list@.
module Network.Google.Resource.CloudResourceManager.TagBindings.List
    (
    -- * REST Resource
      TagBindingsListResource

    -- * Creating a Request
    , tagBindingsList
    , TagBindingsList

    -- * Request Lenses
    , tblParent
    , tblXgafv
    , tblUploadProtocol
    , tblAccessToken
    , tblUploadType
    , tblPageToken
    , tblPageSize
    , tblCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagBindings.list@ method which the
-- 'TagBindingsList' request conforms to.
type TagBindingsListResource =
     "v3" :>
       "tagBindings" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTagBindingsResponse

-- | Lists the TagBindings for the given cloud resource, as specified with
-- \`parent\`. NOTE: The \`parent\` field is expected to be a full resource
-- name:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name
--
-- /See:/ 'tagBindingsList' smart constructor.
data TagBindingsList =
  TagBindingsList'
    { _tblParent :: !(Maybe Text)
    , _tblXgafv :: !(Maybe Xgafv)
    , _tblUploadProtocol :: !(Maybe Text)
    , _tblAccessToken :: !(Maybe Text)
    , _tblUploadType :: !(Maybe Text)
    , _tblPageToken :: !(Maybe Text)
    , _tblPageSize :: !(Maybe (Textual Int32))
    , _tblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagBindingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tblParent'
--
-- * 'tblXgafv'
--
-- * 'tblUploadProtocol'
--
-- * 'tblAccessToken'
--
-- * 'tblUploadType'
--
-- * 'tblPageToken'
--
-- * 'tblPageSize'
--
-- * 'tblCallback'
tagBindingsList
    :: TagBindingsList
tagBindingsList =
  TagBindingsList'
    { _tblParent = Nothing
    , _tblXgafv = Nothing
    , _tblUploadProtocol = Nothing
    , _tblAccessToken = Nothing
    , _tblUploadType = Nothing
    , _tblPageToken = Nothing
    , _tblPageSize = Nothing
    , _tblCallback = Nothing
    }


-- | Required. The full resource name of a resource for which you want to
-- list existing TagBindings. E.g.
-- \"\/\/cloudresourcemanager.googleapis.com\/projects\/123\"
tblParent :: Lens' TagBindingsList (Maybe Text)
tblParent
  = lens _tblParent (\ s a -> s{_tblParent = a})

-- | V1 error format.
tblXgafv :: Lens' TagBindingsList (Maybe Xgafv)
tblXgafv = lens _tblXgafv (\ s a -> s{_tblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tblUploadProtocol :: Lens' TagBindingsList (Maybe Text)
tblUploadProtocol
  = lens _tblUploadProtocol
      (\ s a -> s{_tblUploadProtocol = a})

-- | OAuth access token.
tblAccessToken :: Lens' TagBindingsList (Maybe Text)
tblAccessToken
  = lens _tblAccessToken
      (\ s a -> s{_tblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tblUploadType :: Lens' TagBindingsList (Maybe Text)
tblUploadType
  = lens _tblUploadType
      (\ s a -> s{_tblUploadType = a})

-- | Optional. A pagination token returned from a previous call to
-- \`ListTagBindings\` that indicates where this listing should continue
-- from.
tblPageToken :: Lens' TagBindingsList (Maybe Text)
tblPageToken
  = lens _tblPageToken (\ s a -> s{_tblPageToken = a})

-- | Optional. The maximum number of TagBindings to return in the response.
-- The server allows a maximum of 300 TagBindings to return. If
-- unspecified, the server will use 100 as the default.
tblPageSize :: Lens' TagBindingsList (Maybe Int32)
tblPageSize
  = lens _tblPageSize (\ s a -> s{_tblPageSize = a}) .
      mapping _Coerce

-- | JSONP
tblCallback :: Lens' TagBindingsList (Maybe Text)
tblCallback
  = lens _tblCallback (\ s a -> s{_tblCallback = a})

instance GoogleRequest TagBindingsList where
        type Rs TagBindingsList = ListTagBindingsResponse
        type Scopes TagBindingsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TagBindingsList'{..}
          = go _tblParent _tblXgafv _tblUploadProtocol
              _tblAccessToken
              _tblUploadType
              _tblPageToken
              _tblPageSize
              _tblCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagBindingsListResource)
                      mempty
