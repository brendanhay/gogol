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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for \`Group\` resources matching a specified query.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.search@.
module Network.Google.Resource.CloudIdentity.Groups.Search
    (
    -- * REST Resource
      GroupsSearchResource

    -- * Creating a Request
    , groupsSearch
    , GroupsSearch

    -- * Request Lenses
    , gsXgafv
    , gsUploadProtocol
    , gsAccessToken
    , gsUploadType
    , gsQuery
    , gsView
    , gsPageToken
    , gsPageSize
    , gsCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.search@ method which the
-- 'GroupsSearch' request conforms to.
type GroupsSearchResource =
     "v1" :>
       "groups:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "query" Text :>
                   QueryParam "view" GroupsSearchView :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] SearchGroupsResponse

-- | Searches for \`Group\` resources matching a specified query.
--
-- /See:/ 'groupsSearch' smart constructor.
data GroupsSearch =
  GroupsSearch'
    { _gsXgafv :: !(Maybe Xgafv)
    , _gsUploadProtocol :: !(Maybe Text)
    , _gsAccessToken :: !(Maybe Text)
    , _gsUploadType :: !(Maybe Text)
    , _gsQuery :: !(Maybe Text)
    , _gsView :: !(Maybe GroupsSearchView)
    , _gsPageToken :: !(Maybe Text)
    , _gsPageSize :: !(Maybe (Textual Int32))
    , _gsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsXgafv'
--
-- * 'gsUploadProtocol'
--
-- * 'gsAccessToken'
--
-- * 'gsUploadType'
--
-- * 'gsQuery'
--
-- * 'gsView'
--
-- * 'gsPageToken'
--
-- * 'gsPageSize'
--
-- * 'gsCallback'
groupsSearch
    :: GroupsSearch
groupsSearch =
  GroupsSearch'
    { _gsXgafv = Nothing
    , _gsUploadProtocol = Nothing
    , _gsAccessToken = Nothing
    , _gsUploadType = Nothing
    , _gsQuery = Nothing
    , _gsView = Nothing
    , _gsPageToken = Nothing
    , _gsPageSize = Nothing
    , _gsCallback = Nothing
    }


-- | V1 error format.
gsXgafv :: Lens' GroupsSearch (Maybe Xgafv)
gsXgafv = lens _gsXgafv (\ s a -> s{_gsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gsUploadProtocol :: Lens' GroupsSearch (Maybe Text)
gsUploadProtocol
  = lens _gsUploadProtocol
      (\ s a -> s{_gsUploadProtocol = a})

-- | OAuth access token.
gsAccessToken :: Lens' GroupsSearch (Maybe Text)
gsAccessToken
  = lens _gsAccessToken
      (\ s a -> s{_gsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gsUploadType :: Lens' GroupsSearch (Maybe Text)
gsUploadType
  = lens _gsUploadType (\ s a -> s{_gsUploadType = a})

-- | Required. The search query. Must be specified in [Common Expression
-- Language](https:\/\/opensource.google\/projects\/cel). May only contain
-- equality operators on the parent and inclusion operators on labels
-- (e.g., \`parent == \'customers\/{customer_id}\' &&
-- \'cloudidentity.googleapis.com\/groups.discussion_forum\' in labels\`).
-- The \`customer_id\` must begin with \"C\" (for example, \'C046psxkn\').
gsQuery :: Lens' GroupsSearch (Maybe Text)
gsQuery = lens _gsQuery (\ s a -> s{_gsQuery = a})

-- | The level of detail to be returned. If unspecified, defaults to
-- \`View.BASIC\`.
gsView :: Lens' GroupsSearch (Maybe GroupsSearchView)
gsView = lens _gsView (\ s a -> s{_gsView = a})

-- | The \`next_page_token\` value returned from a previous search request,
-- if any.
gsPageToken :: Lens' GroupsSearch (Maybe Text)
gsPageToken
  = lens _gsPageToken (\ s a -> s{_gsPageToken = a})

-- | The maximum number of results to return. Note that the number of results
-- returned may be less than this value even if there are more available
-- results. To fetch all results, clients must continue calling this method
-- repeatedly until the response no longer contains a \`next_page_token\`.
-- If unspecified, defaults to 200 for \`GroupView.BASIC\` and 50 for
-- \`GroupView.FULL\`. Must not be greater than 1000 for
-- \`GroupView.BASIC\` or 500 for \`GroupView.FULL\`.
gsPageSize :: Lens' GroupsSearch (Maybe Int32)
gsPageSize
  = lens _gsPageSize (\ s a -> s{_gsPageSize = a}) .
      mapping _Coerce

-- | JSONP
gsCallback :: Lens' GroupsSearch (Maybe Text)
gsCallback
  = lens _gsCallback (\ s a -> s{_gsCallback = a})

instance GoogleRequest GroupsSearch where
        type Rs GroupsSearch = SearchGroupsResponse
        type Scopes GroupsSearch =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient GroupsSearch'{..}
          = go _gsXgafv _gsUploadProtocol _gsAccessToken
              _gsUploadType
              _gsQuery
              _gsView
              _gsPageToken
              _gsPageSize
              _gsCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy GroupsSearchResource)
                      mempty
