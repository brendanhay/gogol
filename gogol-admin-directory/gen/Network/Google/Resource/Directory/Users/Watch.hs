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
-- Module      : Network.Google.Resource.Directory.Users.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes in users list
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.watch@.
module Network.Google.Resource.Directory.Users.Watch
    (
    -- * REST Resource
      UsersWatchResource

    -- * Creating a Request
    , usersWatch
    , UsersWatch

    -- * Request Lenses
    , uwEvent
    , uwOrderBy
    , uwViewType
    , uwCustomFieldMask
    , uwDomain
    , uwShowDeleted
    , uwPayload
    , uwSortOrder
    , uwCustomer
    , uwQuery
    , uwProjection
    , uwPageToken
    , uwMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.watch@ method which the
-- 'UsersWatch' request conforms to.
type UsersWatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             "watch" :>
               QueryParam "event" UsersWatchEvent :>
                 QueryParam "orderBy" UsersWatchOrderBy :>
                   QueryParam "viewType" UsersWatchViewType :>
                     QueryParam "customFieldMask" Text :>
                       QueryParam "domain" Text :>
                         QueryParam "showDeleted" Text :>
                           QueryParam "sortOrder" UsersWatchSortOrder :>
                             QueryParam "customer" Text :>
                               QueryParam "query" Text :>
                                 QueryParam "projection" UsersWatchProjection :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "maxResults" (Textual Int32) :>
                                       QueryParam "alt" AltJSON :>
                                         ReqBody '[JSON] Channel :>
                                           Post '[JSON] Channel

-- | Watch for changes in users list
--
-- /See:/ 'usersWatch' smart constructor.
data UsersWatch =
  UsersWatch'
    { _uwEvent           :: !(Maybe UsersWatchEvent)
    , _uwOrderBy         :: !(Maybe UsersWatchOrderBy)
    , _uwViewType        :: !UsersWatchViewType
    , _uwCustomFieldMask :: !(Maybe Text)
    , _uwDomain          :: !(Maybe Text)
    , _uwShowDeleted     :: !(Maybe Text)
    , _uwPayload         :: !Channel
    , _uwSortOrder       :: !(Maybe UsersWatchSortOrder)
    , _uwCustomer        :: !(Maybe Text)
    , _uwQuery           :: !(Maybe Text)
    , _uwProjection      :: !UsersWatchProjection
    , _uwPageToken       :: !(Maybe Text)
    , _uwMaxResults      :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwEvent'
--
-- * 'uwOrderBy'
--
-- * 'uwViewType'
--
-- * 'uwCustomFieldMask'
--
-- * 'uwDomain'
--
-- * 'uwShowDeleted'
--
-- * 'uwPayload'
--
-- * 'uwSortOrder'
--
-- * 'uwCustomer'
--
-- * 'uwQuery'
--
-- * 'uwProjection'
--
-- * 'uwPageToken'
--
-- * 'uwMaxResults'
usersWatch
    :: Channel -- ^ 'uwPayload'
    -> UsersWatch
usersWatch pUwPayload_ =
  UsersWatch'
    { _uwEvent = Nothing
    , _uwOrderBy = Nothing
    , _uwViewType = UWVTAdminView
    , _uwCustomFieldMask = Nothing
    , _uwDomain = Nothing
    , _uwShowDeleted = Nothing
    , _uwPayload = pUwPayload_
    , _uwSortOrder = Nothing
    , _uwCustomer = Nothing
    , _uwQuery = Nothing
    , _uwProjection = UWPBasic
    , _uwPageToken = Nothing
    , _uwMaxResults = Nothing
    }

-- | Event on which subscription is intended (if subscribing)
uwEvent :: Lens' UsersWatch (Maybe UsersWatchEvent)
uwEvent = lens _uwEvent (\ s a -> s{_uwEvent = a})

-- | Column to use for sorting results
uwOrderBy :: Lens' UsersWatch (Maybe UsersWatchOrderBy)
uwOrderBy
  = lens _uwOrderBy (\ s a -> s{_uwOrderBy = a})

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
uwViewType :: Lens' UsersWatch UsersWatchViewType
uwViewType
  = lens _uwViewType (\ s a -> s{_uwViewType = a})

-- | Comma-separated list of schema names. All fields from these schemas are
-- fetched. This should only be set when projection=custom.
uwCustomFieldMask :: Lens' UsersWatch (Maybe Text)
uwCustomFieldMask
  = lens _uwCustomFieldMask
      (\ s a -> s{_uwCustomFieldMask = a})

-- | Name of the domain. Fill this field to get users from only this domain.
-- To return all users in a multi-domain fill customer field instead.
uwDomain :: Lens' UsersWatch (Maybe Text)
uwDomain = lens _uwDomain (\ s a -> s{_uwDomain = a})

-- | If set to true retrieves the list of deleted users. Default is false
uwShowDeleted :: Lens' UsersWatch (Maybe Text)
uwShowDeleted
  = lens _uwShowDeleted
      (\ s a -> s{_uwShowDeleted = a})

-- | Multipart request metadata.
uwPayload :: Lens' UsersWatch Channel
uwPayload
  = lens _uwPayload (\ s a -> s{_uwPayload = a})

-- | Whether to return results in ascending or descending order.
uwSortOrder :: Lens' UsersWatch (Maybe UsersWatchSortOrder)
uwSortOrder
  = lens _uwSortOrder (\ s a -> s{_uwSortOrder = a})

-- | Immutable ID of the G Suite account. In case of multi-domain, to fetch
-- all users for a customer, fill this field instead of domain.
uwCustomer :: Lens' UsersWatch (Maybe Text)
uwCustomer
  = lens _uwCustomer (\ s a -> s{_uwCustomer = a})

-- | Query string search. Should be of the form \"\". Complete documentation
-- is at
-- https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/guides\/search-users
uwQuery :: Lens' UsersWatch (Maybe Text)
uwQuery = lens _uwQuery (\ s a -> s{_uwQuery = a})

-- | What subset of fields to fetch for this user.
uwProjection :: Lens' UsersWatch UsersWatchProjection
uwProjection
  = lens _uwProjection (\ s a -> s{_uwProjection = a})

-- | Token to specify next page in the list
uwPageToken :: Lens' UsersWatch (Maybe Text)
uwPageToken
  = lens _uwPageToken (\ s a -> s{_uwPageToken = a})

-- | Maximum number of results to return. Default is 100. Max allowed is 500
uwMaxResults :: Lens' UsersWatch (Maybe Int32)
uwMaxResults
  = lens _uwMaxResults (\ s a -> s{_uwMaxResults = a})
      . mapping _Coerce

instance GoogleRequest UsersWatch where
        type Rs UsersWatch = Channel
        type Scopes UsersWatch =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.readonly"]
        requestClient UsersWatch'{..}
          = go _uwEvent _uwOrderBy (Just _uwViewType)
              _uwCustomFieldMask
              _uwDomain
              _uwShowDeleted
              _uwSortOrder
              _uwCustomer
              _uwQuery
              (Just _uwProjection)
              _uwPageToken
              _uwMaxResults
              (Just AltJSON)
              _uwPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersWatchResource)
                      mempty
