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
-- Module      : Network.Google.Resource.Directory.Groups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all groups of a domain or of a user given a userKey
-- (paginated).
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.list@.
module Network.Google.Resource.Directory.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList
    , GroupsList

    -- * Request Lenses
    , glXgafv
    , glUploadProtocol
    , glOrderBy
    , glAccessToken
    , glDomain
    , glUploadType
    , glSortOrder
    , glCustomer
    , glQuery
    , glPageToken
    , glUserKey
    , glMaxResults
    , glCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.list@ method which the
-- 'GroupsList' request conforms to.
type GroupsListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" GroupsListOrderBy :>
                   QueryParam "access_token" Text :>
                     QueryParam "domain" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "sortOrder" GroupsListSortOrder :>
                           QueryParam "customer" Text :>
                             QueryParam "query" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "userKey" Text :>
                                   QueryParam "maxResults" (Textual Int32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] Groups

-- | Retrieves all groups of a domain or of a user given a userKey
-- (paginated).
--
-- /See:/ 'groupsList' smart constructor.
data GroupsList =
  GroupsList'
    { _glXgafv :: !(Maybe Xgafv)
    , _glUploadProtocol :: !(Maybe Text)
    , _glOrderBy :: !(Maybe GroupsListOrderBy)
    , _glAccessToken :: !(Maybe Text)
    , _glDomain :: !(Maybe Text)
    , _glUploadType :: !(Maybe Text)
    , _glSortOrder :: !(Maybe GroupsListSortOrder)
    , _glCustomer :: !(Maybe Text)
    , _glQuery :: !(Maybe Text)
    , _glPageToken :: !(Maybe Text)
    , _glUserKey :: !(Maybe Text)
    , _glMaxResults :: !(Textual Int32)
    , _glCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glXgafv'
--
-- * 'glUploadProtocol'
--
-- * 'glOrderBy'
--
-- * 'glAccessToken'
--
-- * 'glDomain'
--
-- * 'glUploadType'
--
-- * 'glSortOrder'
--
-- * 'glCustomer'
--
-- * 'glQuery'
--
-- * 'glPageToken'
--
-- * 'glUserKey'
--
-- * 'glMaxResults'
--
-- * 'glCallback'
groupsList
    :: GroupsList
groupsList =
  GroupsList'
    { _glXgafv = Nothing
    , _glUploadProtocol = Nothing
    , _glOrderBy = Nothing
    , _glAccessToken = Nothing
    , _glDomain = Nothing
    , _glUploadType = Nothing
    , _glSortOrder = Nothing
    , _glCustomer = Nothing
    , _glQuery = Nothing
    , _glPageToken = Nothing
    , _glUserKey = Nothing
    , _glMaxResults = 200
    , _glCallback = Nothing
    }


-- | V1 error format.
glXgafv :: Lens' GroupsList (Maybe Xgafv)
glXgafv = lens _glXgafv (\ s a -> s{_glXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
glUploadProtocol :: Lens' GroupsList (Maybe Text)
glUploadProtocol
  = lens _glUploadProtocol
      (\ s a -> s{_glUploadProtocol = a})

-- | Column to use for sorting results
glOrderBy :: Lens' GroupsList (Maybe GroupsListOrderBy)
glOrderBy
  = lens _glOrderBy (\ s a -> s{_glOrderBy = a})

-- | OAuth access token.
glAccessToken :: Lens' GroupsList (Maybe Text)
glAccessToken
  = lens _glAccessToken
      (\ s a -> s{_glAccessToken = a})

-- | The domain name. Use this field to get fields from only one domain. To
-- return all domains for a customer account, use the \`customer\` query
-- parameter instead.
glDomain :: Lens' GroupsList (Maybe Text)
glDomain = lens _glDomain (\ s a -> s{_glDomain = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
glUploadType :: Lens' GroupsList (Maybe Text)
glUploadType
  = lens _glUploadType (\ s a -> s{_glUploadType = a})

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
glSortOrder :: Lens' GroupsList (Maybe GroupsListSortOrder)
glSortOrder
  = lens _glSortOrder (\ s a -> s{_glSortOrder = a})

-- | The unique ID for the customer\'s Google Workspace account. In case of a
-- multi-domain account, to fetch all groups for a customer, fill this
-- field instead of domain. As an account administrator, you can also use
-- the \`my_customer\` alias to represent your account\'s \`customerId\`.
-- The \`customerId\` is also returned as part of the
-- [Users](\/admin-sdk\/directory\/v1\/reference\/users)
glCustomer :: Lens' GroupsList (Maybe Text)
glCustomer
  = lens _glCustomer (\ s a -> s{_glCustomer = a})

-- | Query string search. Should be of the form \"\". Complete documentation
-- is at https:
-- \/\/developers.google.com\/admin-sdk\/directory\/v1\/guides\/search-groups
glQuery :: Lens' GroupsList (Maybe Text)
glQuery = lens _glQuery (\ s a -> s{_glQuery = a})

-- | Token to specify next page in the list
glPageToken :: Lens' GroupsList (Maybe Text)
glPageToken
  = lens _glPageToken (\ s a -> s{_glPageToken = a})

-- | Email or immutable ID of the user if only those groups are to be listed,
-- the given user is a member of. If it\'s an ID, it should match with the
-- ID of the user object.
glUserKey :: Lens' GroupsList (Maybe Text)
glUserKey
  = lens _glUserKey (\ s a -> s{_glUserKey = a})

-- | Maximum number of results to return. Max allowed value is 200.
glMaxResults :: Lens' GroupsList Int32
glMaxResults
  = lens _glMaxResults (\ s a -> s{_glMaxResults = a})
      . _Coerce

-- | JSONP
glCallback :: Lens' GroupsList (Maybe Text)
glCallback
  = lens _glCallback (\ s a -> s{_glCallback = a})

instance GoogleRequest GroupsList where
        type Rs GroupsList = Groups
        type Scopes GroupsList =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient GroupsList'{..}
          = go _glXgafv _glUploadProtocol _glOrderBy
              _glAccessToken
              _glDomain
              _glUploadType
              _glSortOrder
              _glCustomer
              _glQuery
              _glPageToken
              _glUserKey
              (Just _glMaxResults)
              _glCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsListResource)
                      mempty
