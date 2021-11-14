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
-- Module      : Network.Google.Resource.Directory.Users.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of either deleted users or all users in a
-- domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.list@.
module Network.Google.Resource.Directory.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulEvent
    , ulXgafv
    , ulUploadProtocol
    , ulOrderBy
    , ulViewType
    , ulCustomFieldMask
    , ulAccessToken
    , ulDomain
    , ulUploadType
    , ulShowDeleted
    , ulSortOrder
    , ulCustomer
    , ulQuery
    , ulProjection
    , ulPageToken
    , ulMaxResults
    , ulCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.list@ method which the
-- 'UsersList' request conforms to.
type UsersListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             QueryParam "event" UsersListEvent :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "orderBy" UsersListOrderBy :>
                     QueryParam "viewType" UsersListViewType :>
                       QueryParam "customFieldMask" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "domain" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "showDeleted" Text :>
                                 QueryParam "sortOrder" UsersListSortOrder :>
                                   QueryParam "customer" Text :>
                                     QueryParam "query" Text :>
                                       QueryParam "projection"
                                         UsersListProjection
                                         :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "maxResults"
                                             (Textual Int32)
                                             :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON] Users

-- | Retrieves a paginated list of either deleted users or all users in a
-- domain.
--
-- /See:/ 'usersList' smart constructor.
data UsersList =
  UsersList'
    { _ulEvent :: !(Maybe UsersListEvent)
    , _ulXgafv :: !(Maybe Xgafv)
    , _ulUploadProtocol :: !(Maybe Text)
    , _ulOrderBy :: !(Maybe UsersListOrderBy)
    , _ulViewType :: !UsersListViewType
    , _ulCustomFieldMask :: !(Maybe Text)
    , _ulAccessToken :: !(Maybe Text)
    , _ulDomain :: !(Maybe Text)
    , _ulUploadType :: !(Maybe Text)
    , _ulShowDeleted :: !(Maybe Text)
    , _ulSortOrder :: !(Maybe UsersListSortOrder)
    , _ulCustomer :: !(Maybe Text)
    , _ulQuery :: !(Maybe Text)
    , _ulProjection :: !UsersListProjection
    , _ulPageToken :: !(Maybe Text)
    , _ulMaxResults :: !(Textual Int32)
    , _ulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulEvent'
--
-- * 'ulXgafv'
--
-- * 'ulUploadProtocol'
--
-- * 'ulOrderBy'
--
-- * 'ulViewType'
--
-- * 'ulCustomFieldMask'
--
-- * 'ulAccessToken'
--
-- * 'ulDomain'
--
-- * 'ulUploadType'
--
-- * 'ulShowDeleted'
--
-- * 'ulSortOrder'
--
-- * 'ulCustomer'
--
-- * 'ulQuery'
--
-- * 'ulProjection'
--
-- * 'ulPageToken'
--
-- * 'ulMaxResults'
--
-- * 'ulCallback'
usersList
    :: UsersList
usersList =
  UsersList'
    { _ulEvent = Nothing
    , _ulXgafv = Nothing
    , _ulUploadProtocol = Nothing
    , _ulOrderBy = Nothing
    , _ulViewType = AdminView
    , _ulCustomFieldMask = Nothing
    , _ulAccessToken = Nothing
    , _ulDomain = Nothing
    , _ulUploadType = Nothing
    , _ulShowDeleted = Nothing
    , _ulSortOrder = Nothing
    , _ulCustomer = Nothing
    , _ulQuery = Nothing
    , _ulProjection = ULPBasic
    , _ulPageToken = Nothing
    , _ulMaxResults = 100
    , _ulCallback = Nothing
    }


-- | Event on which subscription is intended (if subscribing)
ulEvent :: Lens' UsersList (Maybe UsersListEvent)
ulEvent = lens _ulEvent (\ s a -> s{_ulEvent = a})

-- | V1 error format.
ulXgafv :: Lens' UsersList (Maybe Xgafv)
ulXgafv = lens _ulXgafv (\ s a -> s{_ulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ulUploadProtocol :: Lens' UsersList (Maybe Text)
ulUploadProtocol
  = lens _ulUploadProtocol
      (\ s a -> s{_ulUploadProtocol = a})

-- | Property to use for sorting results.
ulOrderBy :: Lens' UsersList (Maybe UsersListOrderBy)
ulOrderBy
  = lens _ulOrderBy (\ s a -> s{_ulOrderBy = a})

-- | Whether to fetch the administrator-only or domain-wide public view of
-- the user. For more information, see [Retrieve a user as a
-- non-administrator](\/admin-sdk\/directory\/v1\/guides\/manage-users#retrieve_users_non_admin).
ulViewType :: Lens' UsersList UsersListViewType
ulViewType
  = lens _ulViewType (\ s a -> s{_ulViewType = a})

-- | A comma-separated list of schema names. All fields from these schemas
-- are fetched. This should only be set when \`projection=custom\`.
ulCustomFieldMask :: Lens' UsersList (Maybe Text)
ulCustomFieldMask
  = lens _ulCustomFieldMask
      (\ s a -> s{_ulCustomFieldMask = a})

-- | OAuth access token.
ulAccessToken :: Lens' UsersList (Maybe Text)
ulAccessToken
  = lens _ulAccessToken
      (\ s a -> s{_ulAccessToken = a})

-- | The domain name. Use this field to get fields from only one domain. To
-- return all domains for a customer account, use the \`customer\` query
-- parameter instead. Either the \`customer\` or the \`domain\` parameter
-- must be provided.
ulDomain :: Lens' UsersList (Maybe Text)
ulDomain = lens _ulDomain (\ s a -> s{_ulDomain = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ulUploadType :: Lens' UsersList (Maybe Text)
ulUploadType
  = lens _ulUploadType (\ s a -> s{_ulUploadType = a})

-- | If set to \`true\`, retrieves the list of deleted users. (Default:
-- \`false\`)
ulShowDeleted :: Lens' UsersList (Maybe Text)
ulShowDeleted
  = lens _ulShowDeleted
      (\ s a -> s{_ulShowDeleted = a})

-- | Whether to return results in ascending or descending order.
ulSortOrder :: Lens' UsersList (Maybe UsersListSortOrder)
ulSortOrder
  = lens _ulSortOrder (\ s a -> s{_ulSortOrder = a})

-- | The unique ID for the customer\'s Google Workspace account. In case of a
-- multi-domain account, to fetch all groups for a customer, fill this
-- field instead of domain. You can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users). Either the
-- \`customer\` or the \`domain\` parameter must be provided.
ulCustomer :: Lens' UsersList (Maybe Text)
ulCustomer
  = lens _ulCustomer (\ s a -> s{_ulCustomer = a})

-- | Query string for searching user fields. For more information on
-- constructing user queries, see [Search for
-- Users](\/admin-sdk\/directory\/v1\/guides\/search-users).
ulQuery :: Lens' UsersList (Maybe Text)
ulQuery = lens _ulQuery (\ s a -> s{_ulQuery = a})

-- | What subset of fields to fetch for this user.
ulProjection :: Lens' UsersList UsersListProjection
ulProjection
  = lens _ulProjection (\ s a -> s{_ulProjection = a})

-- | Token to specify next page in the list
ulPageToken :: Lens' UsersList (Maybe Text)
ulPageToken
  = lens _ulPageToken (\ s a -> s{_ulPageToken = a})

-- | Maximum number of results to return.
ulMaxResults :: Lens' UsersList Int32
ulMaxResults
  = lens _ulMaxResults (\ s a -> s{_ulMaxResults = a})
      . _Coerce

-- | JSONP
ulCallback :: Lens' UsersList (Maybe Text)
ulCallback
  = lens _ulCallback (\ s a -> s{_ulCallback = a})

instance GoogleRequest UsersList where
        type Rs UsersList = Users
        type Scopes UsersList =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient UsersList'{..}
          = go _ulEvent _ulXgafv _ulUploadProtocol _ulOrderBy
              (Just _ulViewType)
              _ulCustomFieldMask
              _ulAccessToken
              _ulDomain
              _ulUploadType
              _ulShowDeleted
              _ulSortOrder
              _ulCustomer
              _ulQuery
              (Just _ulProjection)
              _ulPageToken
              (Just _ulMaxResults)
              _ulCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersListResource)
                      mempty
