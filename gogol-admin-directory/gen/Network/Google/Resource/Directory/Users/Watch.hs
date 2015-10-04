{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , uwUserIP
    , uwDomain
    , uwShowDeleted
    , uwPayload
    , uwSortOrder
    , uwCustomer
    , uwKey
    , uwQuery
    , uwProjection
    , uwPageToken
    , uwOAuthToken
    , uwMaxResults
    , uwFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersWatch@ which the
-- 'UsersWatch'' request conforms to.
type UsersWatchResource =
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
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "userIp" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" Key :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "alt" AltJSON :>
                                               ReqBody '[JSON] Channel :>
                                                 Post '[JSON] Channel

-- | Watch for changes in users list
--
-- /See:/ 'usersWatch'' smart constructor.
data UsersWatch' = UsersWatch'
    { _uwEvent           :: !(Maybe UsersWatchEvent)
    , _uwQuotaUser       :: !(Maybe Text)
    , _uwPrettyPrint     :: !Bool
    , _uwOrderBy         :: !(Maybe UsersWatchOrderBy)
    , _uwViewType        :: !UsersWatchViewType
    , _uwCustomFieldMask :: !(Maybe Text)
    , _uwUserIP          :: !(Maybe Text)
    , _uwDomain          :: !(Maybe Text)
    , _uwShowDeleted     :: !(Maybe Text)
    , _uwPayload         :: !Channel
    , _uwSortOrder       :: !(Maybe UsersWatchSortOrder)
    , _uwCustomer        :: !(Maybe Text)
    , _uwKey             :: !(Maybe Key)
    , _uwQuery           :: !(Maybe Text)
    , _uwProjection      :: !UsersWatchProjection
    , _uwPageToken       :: !(Maybe Text)
    , _uwOAuthToken      :: !(Maybe OAuthToken)
    , _uwMaxResults      :: !(Maybe Int32)
    , _uwFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'uwUserIP'
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
-- * 'uwKey'
--
-- * 'uwQuery'
--
-- * 'uwProjection'
--
-- * 'uwPageToken'
--
-- * 'uwOAuthToken'
--
-- * 'uwMaxResults'
--
-- * 'uwFields'
usersWatch'
    :: Channel -- ^ 'payload'
    -> UsersWatch'
usersWatch' pUwPayload_ =
    UsersWatch'
    { _uwEvent = Nothing
    , _uwQuotaUser = Nothing
    , _uwPrettyPrint = True
    , _uwOrderBy = Nothing
    , _uwViewType = UWVTAdminView
    , _uwCustomFieldMask = Nothing
    , _uwUserIP = Nothing
    , _uwDomain = Nothing
    , _uwShowDeleted = Nothing
    , _uwPayload = pUwPayload_
    , _uwSortOrder = Nothing
    , _uwCustomer = Nothing
    , _uwKey = Nothing
    , _uwQuery = Nothing
    , _uwProjection = UWPBasic
    , _uwPageToken = Nothing
    , _uwOAuthToken = Nothing
    , _uwMaxResults = Nothing
    , _uwFields = Nothing
    }

-- | Event on which subscription is intended (if subscribing)
uwEvent :: Lens' UsersWatch' (Maybe UsersWatchEvent)
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
uwOrderBy :: Lens' UsersWatch' (Maybe UsersWatchOrderBy)
uwOrderBy
  = lens _uwOrderBy (\ s a -> s{_uwOrderBy = a})

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
uwViewType :: Lens' UsersWatch' UsersWatchViewType
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
uwUserIP :: Lens' UsersWatch' (Maybe Text)
uwUserIP = lens _uwUserIP (\ s a -> s{_uwUserIP = a})

-- | Name of the domain. Fill this field to get users from only this domain.
-- To return all users in a multi-domain fill customer field instead.
uwDomain :: Lens' UsersWatch' (Maybe Text)
uwDomain = lens _uwDomain (\ s a -> s{_uwDomain = a})

-- | If set to true retrieves the list of deleted users. Default is false
uwShowDeleted :: Lens' UsersWatch' (Maybe Text)
uwShowDeleted
  = lens _uwShowDeleted
      (\ s a -> s{_uwShowDeleted = a})

-- | Multipart request metadata.
uwPayload :: Lens' UsersWatch' Channel
uwPayload
  = lens _uwPayload (\ s a -> s{_uwPayload = a})

-- | Whether to return results in ascending or descending order.
uwSortOrder :: Lens' UsersWatch' (Maybe UsersWatchSortOrder)
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
uwKey :: Lens' UsersWatch' (Maybe Key)
uwKey = lens _uwKey (\ s a -> s{_uwKey = a})

-- | Query string search. Should be of the form \"\". Complete documentation
-- is at
-- https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/guides\/search-users
uwQuery :: Lens' UsersWatch' (Maybe Text)
uwQuery = lens _uwQuery (\ s a -> s{_uwQuery = a})

-- | What subset of fields to fetch for this user.
uwProjection :: Lens' UsersWatch' UsersWatchProjection
uwProjection
  = lens _uwProjection (\ s a -> s{_uwProjection = a})

-- | Token to specify next page in the list
uwPageToken :: Lens' UsersWatch' (Maybe Text)
uwPageToken
  = lens _uwPageToken (\ s a -> s{_uwPageToken = a})

-- | OAuth 2.0 token for the current user.
uwOAuthToken :: Lens' UsersWatch' (Maybe OAuthToken)
uwOAuthToken
  = lens _uwOAuthToken (\ s a -> s{_uwOAuthToken = a})

-- | Maximum number of results to return. Default is 100. Max allowed is 500
uwMaxResults :: Lens' UsersWatch' (Maybe Int32)
uwMaxResults
  = lens _uwMaxResults (\ s a -> s{_uwMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
uwFields :: Lens' UsersWatch' (Maybe Text)
uwFields = lens _uwFields (\ s a -> s{_uwFields = a})

instance GoogleAuth UsersWatch' where
        authKey = uwKey . _Just
        authToken = uwOAuthToken . _Just

instance GoogleRequest UsersWatch' where
        type Rs UsersWatch' = Channel
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersWatch'{..}
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
              _uwQuotaUser
              (Just _uwPrettyPrint)
              _uwUserIP
              _uwFields
              _uwKey
              _uwOAuthToken
              (Just AltJSON)
              _uwPayload
          where go
                  = clientWithRoute (Proxy :: Proxy UsersWatchResource)
                      r
                      u
