{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Users.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes in users list
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersWatch@.
module Network.Google.Resource.Directory.Users.Watch
    (
    -- * REST Resource
      UsersWatchResource

    -- * Creating a Request
    , usersWatch'
    , UsersWatch'

    -- * Request Lenses
    , uwEvent
    , uwQuotaUser
    , uwPrettyPrint
    , uwOrderBy
    , uwViewType
    , uwCustomFieldMask
    , uwUserIp
    , uwDomain
    , uwShowDeleted
    , uwSortOrder
    , uwCustomer
    , uwKey
    , uwQuery
    , uwProjection
    , uwPageToken
    , uwOauthToken
    , uwMaxResults
    , uwFields
    , uwAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersWatch@ which the
-- 'UsersWatch'' request conforms to.
type UsersWatchResource =
     "users" :>
       "watch" :>
         QueryParam "event" DirectoryUsersWatchEvent :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "orderBy" DirectoryUsersWatchOrderBy :>
                 QueryParam "viewType" DirectoryUsersWatchViewType :>
                   QueryParam "customFieldMask" Text :>
                     QueryParam "userIp" Text :>
                       QueryParam "domain" Text :>
                         QueryParam "showDeleted" Text :>
                           QueryParam "sortOrder" DirectoryUsersWatchSortOrder
                             :>
                             QueryParam "customer" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "query" Text :>
                                   QueryParam "projection"
                                     DirectoryUsersWatchProjection
                                     :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "maxResults" Int32 :>
                                           QueryParam "fields" Text :>
                                             QueryParam "alt" Alt :>
                                               Post '[JSON] Channel

-- | Watch for changes in users list
--
-- /See:/ 'usersWatch'' smart constructor.
data UsersWatch' = UsersWatch'
    { _uwEvent           :: !(Maybe DirectoryUsersWatchEvent)
    , _uwQuotaUser       :: !(Maybe Text)
    , _uwPrettyPrint     :: !Bool
    , _uwOrderBy         :: !(Maybe DirectoryUsersWatchOrderBy)
    , _uwViewType        :: !DirectoryUsersWatchViewType
    , _uwCustomFieldMask :: !(Maybe Text)
    , _uwUserIp          :: !(Maybe Text)
    , _uwDomain          :: !(Maybe Text)
    , _uwShowDeleted     :: !(Maybe Text)
    , _uwSortOrder       :: !(Maybe DirectoryUsersWatchSortOrder)
    , _uwCustomer        :: !(Maybe Text)
    , _uwKey             :: !(Maybe Text)
    , _uwQuery           :: !(Maybe Text)
    , _uwProjection      :: !DirectoryUsersWatchProjection
    , _uwPageToken       :: !(Maybe Text)
    , _uwOauthToken      :: !(Maybe Text)
    , _uwMaxResults      :: !(Maybe Int32)
    , _uwFields          :: !(Maybe Text)
    , _uwAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwEvent'
--
-- * 'uwQuotaUser'
--
-- * 'uwPrettyPrint'
--
-- * 'uwOrderBy'
--
-- * 'uwViewType'
--
-- * 'uwCustomFieldMask'
--
-- * 'uwUserIp'
--
-- * 'uwDomain'
--
-- * 'uwShowDeleted'
--
-- * 'uwSortOrder'
--
-- * 'uwCustomer'
--
-- * 'uwKey'
--
-- * 'uwQuery'
--
-- * 'uwProjection'
--
-- * 'uwPageToken'
--
-- * 'uwOauthToken'
--
-- * 'uwMaxResults'
--
-- * 'uwFields'
--
-- * 'uwAlt'
usersWatch'
    :: UsersWatch'
usersWatch' =
    UsersWatch'
    { _uwEvent = Nothing
    , _uwQuotaUser = Nothing
    , _uwPrettyPrint = True
    , _uwOrderBy = Nothing
    , _uwViewType = DUWVTAdminView
    , _uwCustomFieldMask = Nothing
    , _uwUserIp = Nothing
    , _uwDomain = Nothing
    , _uwShowDeleted = Nothing
    , _uwSortOrder = Nothing
    , _uwCustomer = Nothing
    , _uwKey = Nothing
    , _uwQuery = Nothing
    , _uwProjection = DUWPBasic
    , _uwPageToken = Nothing
    , _uwOauthToken = Nothing
    , _uwMaxResults = Nothing
    , _uwFields = Nothing
    , _uwAlt = JSON
    }

-- | Event on which subscription is intended (if subscribing)
uwEvent :: Lens' UsersWatch' (Maybe DirectoryUsersWatchEvent)
uwEvent = lens _uwEvent (\ s a -> s{_uwEvent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uwQuotaUser :: Lens' UsersWatch' (Maybe Text)
uwQuotaUser
  = lens _uwQuotaUser (\ s a -> s{_uwQuotaUser = a})

-- | Returns response with indentations and line breaks.
uwPrettyPrint :: Lens' UsersWatch' Bool
uwPrettyPrint
  = lens _uwPrettyPrint
      (\ s a -> s{_uwPrettyPrint = a})

-- | Column to use for sorting results
uwOrderBy :: Lens' UsersWatch' (Maybe DirectoryUsersWatchOrderBy)
uwOrderBy
  = lens _uwOrderBy (\ s a -> s{_uwOrderBy = a})

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
uwViewType :: Lens' UsersWatch' DirectoryUsersWatchViewType
uwViewType
  = lens _uwViewType (\ s a -> s{_uwViewType = a})

-- | Comma-separated list of schema names. All fields from these schemas are
-- fetched. This should only be set when projection=custom.
uwCustomFieldMask :: Lens' UsersWatch' (Maybe Text)
uwCustomFieldMask
  = lens _uwCustomFieldMask
      (\ s a -> s{_uwCustomFieldMask = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uwUserIp :: Lens' UsersWatch' (Maybe Text)
uwUserIp = lens _uwUserIp (\ s a -> s{_uwUserIp = a})

-- | Name of the domain. Fill this field to get users from only this domain.
-- To return all users in a multi-domain fill customer field instead.
uwDomain :: Lens' UsersWatch' (Maybe Text)
uwDomain = lens _uwDomain (\ s a -> s{_uwDomain = a})

-- | If set to true retrieves the list of deleted users. Default is false
uwShowDeleted :: Lens' UsersWatch' (Maybe Text)
uwShowDeleted
  = lens _uwShowDeleted
      (\ s a -> s{_uwShowDeleted = a})

-- | Whether to return results in ascending or descending order.
uwSortOrder :: Lens' UsersWatch' (Maybe DirectoryUsersWatchSortOrder)
uwSortOrder
  = lens _uwSortOrder (\ s a -> s{_uwSortOrder = a})

-- | Immutable id of the Google Apps account. In case of multi-domain, to
-- fetch all users for a customer, fill this field instead of domain.
uwCustomer :: Lens' UsersWatch' (Maybe Text)
uwCustomer
  = lens _uwCustomer (\ s a -> s{_uwCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uwKey :: Lens' UsersWatch' (Maybe Text)
uwKey = lens _uwKey (\ s a -> s{_uwKey = a})

-- | Query string search. Should be of the form \"\". Complete documentation
-- is at
-- https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/guides\/search-users
uwQuery :: Lens' UsersWatch' (Maybe Text)
uwQuery = lens _uwQuery (\ s a -> s{_uwQuery = a})

-- | What subset of fields to fetch for this user.
uwProjection :: Lens' UsersWatch' DirectoryUsersWatchProjection
uwProjection
  = lens _uwProjection (\ s a -> s{_uwProjection = a})

-- | Token to specify next page in the list
uwPageToken :: Lens' UsersWatch' (Maybe Text)
uwPageToken
  = lens _uwPageToken (\ s a -> s{_uwPageToken = a})

-- | OAuth 2.0 token for the current user.
uwOauthToken :: Lens' UsersWatch' (Maybe Text)
uwOauthToken
  = lens _uwOauthToken (\ s a -> s{_uwOauthToken = a})

-- | Maximum number of results to return. Default is 100. Max allowed is 500
uwMaxResults :: Lens' UsersWatch' (Maybe Int32)
uwMaxResults
  = lens _uwMaxResults (\ s a -> s{_uwMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
uwFields :: Lens' UsersWatch' (Maybe Text)
uwFields = lens _uwFields (\ s a -> s{_uwFields = a})

-- | Data format for the response.
uwAlt :: Lens' UsersWatch' Alt
uwAlt = lens _uwAlt (\ s a -> s{_uwAlt = a})

instance GoogleRequest UsersWatch' where
        type Rs UsersWatch' = Channel
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersWatch'{..}
          = go _uwEvent _uwQuotaUser (Just _uwPrettyPrint)
              _uwOrderBy
              (Just _uwViewType)
              _uwCustomFieldMask
              _uwUserIp
              _uwDomain
              _uwShowDeleted
              _uwSortOrder
              _uwCustomer
              _uwKey
              _uwQuery
              (Just _uwProjection)
              _uwPageToken
              _uwOauthToken
              _uwMaxResults
              _uwFields
              (Just _uwAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersWatchResource)
                      r
                      u
