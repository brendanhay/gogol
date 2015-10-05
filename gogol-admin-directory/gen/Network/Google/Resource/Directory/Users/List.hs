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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve either deleted users or all users in a domain (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersList@.
module Network.Google.Resource.Directory.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList'
    , UsersList'

    -- * Request Lenses
    , ulEvent
    , ulQuotaUser
    , ulPrettyPrint
    , ulOrderBy
    , ulViewType
    , ulCustomFieldMask
    , ulUserIP
    , ulDomain
    , ulShowDeleted
    , ulSortOrder
    , ulCustomer
    , ulKey
    , ulQuery
    , ulProjection
    , ulPageToken
    , ulOAuthToken
    , ulMaxResults
    , ulFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersList@ which the
-- 'UsersList'' request conforms to.
type UsersListResource =
     "users" :>
       QueryParam "event" UsersListEvent :>
         QueryParam "orderBy" UsersListOrderBy :>
           QueryParam "viewType" UsersListViewType :>
             QueryParam "customFieldMask" Text :>
               QueryParam "domain" Text :>
                 QueryParam "showDeleted" Text :>
                   QueryParam "sortOrder" UsersListSortOrder :>
                     QueryParam "customer" Text :>
                       QueryParam "query" Text :>
                         QueryParam "projection" UsersListProjection :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "userIp" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] Users

-- | Retrieve either deleted users or all users in a domain (paginated)
--
-- /See:/ 'usersList'' smart constructor.
data UsersList' = UsersList'
    { _ulEvent           :: !(Maybe UsersListEvent)
    , _ulQuotaUser       :: !(Maybe Text)
    , _ulPrettyPrint     :: !Bool
    , _ulOrderBy         :: !(Maybe UsersListOrderBy)
    , _ulViewType        :: !UsersListViewType
    , _ulCustomFieldMask :: !(Maybe Text)
    , _ulUserIP          :: !(Maybe Text)
    , _ulDomain          :: !(Maybe Text)
    , _ulShowDeleted     :: !(Maybe Text)
    , _ulSortOrder       :: !(Maybe UsersListSortOrder)
    , _ulCustomer        :: !(Maybe Text)
    , _ulKey             :: !(Maybe AuthKey)
    , _ulQuery           :: !(Maybe Text)
    , _ulProjection      :: !UsersListProjection
    , _ulPageToken       :: !(Maybe Text)
    , _ulOAuthToken      :: !(Maybe OAuthToken)
    , _ulMaxResults      :: !(Maybe Int32)
    , _ulFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulEvent'
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulOrderBy'
--
-- * 'ulViewType'
--
-- * 'ulCustomFieldMask'
--
-- * 'ulUserIP'
--
-- * 'ulDomain'
--
-- * 'ulShowDeleted'
--
-- * 'ulSortOrder'
--
-- * 'ulCustomer'
--
-- * 'ulKey'
--
-- * 'ulQuery'
--
-- * 'ulProjection'
--
-- * 'ulPageToken'
--
-- * 'ulOAuthToken'
--
-- * 'ulMaxResults'
--
-- * 'ulFields'
usersList'
    :: UsersList'
usersList' =
    UsersList'
    { _ulEvent = Nothing
    , _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulOrderBy = Nothing
    , _ulViewType = AdminView
    , _ulCustomFieldMask = Nothing
    , _ulUserIP = Nothing
    , _ulDomain = Nothing
    , _ulShowDeleted = Nothing
    , _ulSortOrder = Nothing
    , _ulCustomer = Nothing
    , _ulKey = Nothing
    , _ulQuery = Nothing
    , _ulProjection = ULPBasic
    , _ulPageToken = Nothing
    , _ulOAuthToken = Nothing
    , _ulMaxResults = Nothing
    , _ulFields = Nothing
    }

-- | Event on which subscription is intended (if subscribing)
ulEvent :: Lens' UsersList' (Maybe UsersListEvent)
ulEvent = lens _ulEvent (\ s a -> s{_ulEvent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulQuotaUser :: Lens' UsersList' (Maybe Text)
ulQuotaUser
  = lens _ulQuotaUser (\ s a -> s{_ulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulPrettyPrint :: Lens' UsersList' Bool
ulPrettyPrint
  = lens _ulPrettyPrint
      (\ s a -> s{_ulPrettyPrint = a})

-- | Column to use for sorting results
ulOrderBy :: Lens' UsersList' (Maybe UsersListOrderBy)
ulOrderBy
  = lens _ulOrderBy (\ s a -> s{_ulOrderBy = a})

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
ulViewType :: Lens' UsersList' UsersListViewType
ulViewType
  = lens _ulViewType (\ s a -> s{_ulViewType = a})

-- | Comma-separated list of schema names. All fields from these schemas are
-- fetched. This should only be set when projection=custom.
ulCustomFieldMask :: Lens' UsersList' (Maybe Text)
ulCustomFieldMask
  = lens _ulCustomFieldMask
      (\ s a -> s{_ulCustomFieldMask = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulUserIP :: Lens' UsersList' (Maybe Text)
ulUserIP = lens _ulUserIP (\ s a -> s{_ulUserIP = a})

-- | Name of the domain. Fill this field to get users from only this domain.
-- To return all users in a multi-domain fill customer field instead.
ulDomain :: Lens' UsersList' (Maybe Text)
ulDomain = lens _ulDomain (\ s a -> s{_ulDomain = a})

-- | If set to true retrieves the list of deleted users. Default is false
ulShowDeleted :: Lens' UsersList' (Maybe Text)
ulShowDeleted
  = lens _ulShowDeleted
      (\ s a -> s{_ulShowDeleted = a})

-- | Whether to return results in ascending or descending order.
ulSortOrder :: Lens' UsersList' (Maybe UsersListSortOrder)
ulSortOrder
  = lens _ulSortOrder (\ s a -> s{_ulSortOrder = a})

-- | Immutable id of the Google Apps account. In case of multi-domain, to
-- fetch all users for a customer, fill this field instead of domain.
ulCustomer :: Lens' UsersList' (Maybe Text)
ulCustomer
  = lens _ulCustomer (\ s a -> s{_ulCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' UsersList' (Maybe AuthKey)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | Query string search. Should be of the form \"\". Complete documentation
-- is at
-- https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/guides\/search-users
ulQuery :: Lens' UsersList' (Maybe Text)
ulQuery = lens _ulQuery (\ s a -> s{_ulQuery = a})

-- | What subset of fields to fetch for this user.
ulProjection :: Lens' UsersList' UsersListProjection
ulProjection
  = lens _ulProjection (\ s a -> s{_ulProjection = a})

-- | Token to specify next page in the list
ulPageToken :: Lens' UsersList' (Maybe Text)
ulPageToken
  = lens _ulPageToken (\ s a -> s{_ulPageToken = a})

-- | OAuth 2.0 token for the current user.
ulOAuthToken :: Lens' UsersList' (Maybe OAuthToken)
ulOAuthToken
  = lens _ulOAuthToken (\ s a -> s{_ulOAuthToken = a})

-- | Maximum number of results to return. Default is 100. Max allowed is 500
ulMaxResults :: Lens' UsersList' (Maybe Int32)
ulMaxResults
  = lens _ulMaxResults (\ s a -> s{_ulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' UsersList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

instance GoogleAuth UsersList' where
        authKey = ulKey . _Just
        authToken = ulOAuthToken . _Just

instance GoogleRequest UsersList' where
        type Rs UsersList' = Users
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u UsersList'{..}
          = go _ulEvent _ulOrderBy (Just _ulViewType)
              _ulCustomFieldMask
              _ulDomain
              _ulShowDeleted
              _ulSortOrder
              _ulCustomer
              _ulQuery
              (Just _ulProjection)
              _ulPageToken
              _ulMaxResults
              _ulQuotaUser
              (Just _ulPrettyPrint)
              _ulUserIP
              _ulFields
              _ulKey
              _ulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersListResource)
                      r
                      u
