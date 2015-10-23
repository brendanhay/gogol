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
-- Retrieve either deleted users or all users in a domain (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.list@.
module Network.Google.Resource.Directory.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulEvent
    , ulOrderBy
    , ulViewType
    , ulCustomFieldMask
    , ulDomain
    , ulShowDeleted
    , ulSortOrder
    , ulCustomer
    , ulQuery
    , ulProjection
    , ulPageToken
    , ulMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.list@ method which the
-- 'UsersList' request conforms to.
type UsersListResource =
     "admin" :>
       "directory" :>
         "v1" :>
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
                                   QueryParam "maxResults" (JSONText Int32) :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Users

-- | Retrieve either deleted users or all users in a domain (paginated)
--
-- /See:/ 'usersList' smart constructor.
data UsersList = UsersList
    { _ulEvent           :: !(Maybe UsersListEvent)
    , _ulOrderBy         :: !(Maybe UsersListOrderBy)
    , _ulViewType        :: !UsersListViewType
    , _ulCustomFieldMask :: !(Maybe Text)
    , _ulDomain          :: !(Maybe Text)
    , _ulShowDeleted     :: !(Maybe Text)
    , _ulSortOrder       :: !(Maybe UsersListSortOrder)
    , _ulCustomer        :: !(Maybe Text)
    , _ulQuery           :: !(Maybe Text)
    , _ulProjection      :: !UsersListProjection
    , _ulPageToken       :: !(Maybe Text)
    , _ulMaxResults      :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulEvent'
--
-- * 'ulOrderBy'
--
-- * 'ulViewType'
--
-- * 'ulCustomFieldMask'
--
-- * 'ulDomain'
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
usersList
    :: UsersList
usersList =
    UsersList
    { _ulEvent = Nothing
    , _ulOrderBy = Nothing
    , _ulViewType = AdminView
    , _ulCustomFieldMask = Nothing
    , _ulDomain = Nothing
    , _ulShowDeleted = Nothing
    , _ulSortOrder = Nothing
    , _ulCustomer = Nothing
    , _ulQuery = Nothing
    , _ulProjection = ULPBasic
    , _ulPageToken = Nothing
    , _ulMaxResults = Nothing
    }

-- | Event on which subscription is intended (if subscribing)
ulEvent :: Lens' UsersList (Maybe UsersListEvent)
ulEvent = lens _ulEvent (\ s a -> s{_ulEvent = a})

-- | Column to use for sorting results
ulOrderBy :: Lens' UsersList (Maybe UsersListOrderBy)
ulOrderBy
  = lens _ulOrderBy (\ s a -> s{_ulOrderBy = a})

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
ulViewType :: Lens' UsersList UsersListViewType
ulViewType
  = lens _ulViewType (\ s a -> s{_ulViewType = a})

-- | Comma-separated list of schema names. All fields from these schemas are
-- fetched. This should only be set when projection=custom.
ulCustomFieldMask :: Lens' UsersList (Maybe Text)
ulCustomFieldMask
  = lens _ulCustomFieldMask
      (\ s a -> s{_ulCustomFieldMask = a})

-- | Name of the domain. Fill this field to get users from only this domain.
-- To return all users in a multi-domain fill customer field instead.
ulDomain :: Lens' UsersList (Maybe Text)
ulDomain = lens _ulDomain (\ s a -> s{_ulDomain = a})

-- | If set to true retrieves the list of deleted users. Default is false
ulShowDeleted :: Lens' UsersList (Maybe Text)
ulShowDeleted
  = lens _ulShowDeleted
      (\ s a -> s{_ulShowDeleted = a})

-- | Whether to return results in ascending or descending order.
ulSortOrder :: Lens' UsersList (Maybe UsersListSortOrder)
ulSortOrder
  = lens _ulSortOrder (\ s a -> s{_ulSortOrder = a})

-- | Immutable id of the Google Apps account. In case of multi-domain, to
-- fetch all users for a customer, fill this field instead of domain.
ulCustomer :: Lens' UsersList (Maybe Text)
ulCustomer
  = lens _ulCustomer (\ s a -> s{_ulCustomer = a})

-- | Query string search. Should be of the form \"\". Complete documentation
-- is at
-- https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/guides\/search-users
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

-- | Maximum number of results to return. Default is 100. Max allowed is 500
ulMaxResults :: Lens' UsersList (Maybe Int32)
ulMaxResults
  = lens _ulMaxResults (\ s a -> s{_ulMaxResults = a})
      . mapping _Coerce

instance GoogleRequest UsersList where
        type Rs UsersList = Users
        requestClient UsersList{..}
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
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersListResource)
                      mempty
