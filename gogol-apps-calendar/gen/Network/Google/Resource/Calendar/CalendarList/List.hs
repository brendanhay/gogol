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
-- Module      : Network.Google.Resource.Calendar.CalendarList.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns entries on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListList@.
module Network.Google.Resource.Calendar.CalendarList.List
    (
    -- * REST Resource
      CalendarListListResource

    -- * Creating a Request
    , calendarListList'
    , CalendarListList'

    -- * Request Lenses
    , cllSyncToken
    , cllQuotaUser
    , cllPrettyPrint
    , cllMinAccessRole
    , cllUserIp
    , cllShowDeleted
    , cllShowHidden
    , cllKey
    , cllPageToken
    , cllOauthToken
    , cllMaxResults
    , cllFields
    , cllAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListList@ which the
-- 'CalendarListList'' request conforms to.
type CalendarListListResource =
     "users" :>
       "me" :>
         "calendarList" :>
           QueryParam "syncToken" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "minAccessRole"
                   CalendarCalendarListListMinAccessRole
                   :>
                   QueryParam "userIp" Text :>
                     QueryParam "showDeleted" Bool :>
                       QueryParam "showHidden" Bool :>
                         QueryParam "key" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Get '[JSON] CalendarList

-- | Returns entries on the user\'s calendar list.
--
-- /See:/ 'calendarListList'' smart constructor.
data CalendarListList' = CalendarListList'
    { _cllSyncToken     :: !(Maybe Text)
    , _cllQuotaUser     :: !(Maybe Text)
    , _cllPrettyPrint   :: !Bool
    , _cllMinAccessRole :: !(Maybe CalendarCalendarListListMinAccessRole)
    , _cllUserIp        :: !(Maybe Text)
    , _cllShowDeleted   :: !(Maybe Bool)
    , _cllShowHidden    :: !(Maybe Bool)
    , _cllKey           :: !(Maybe Text)
    , _cllPageToken     :: !(Maybe Text)
    , _cllOauthToken    :: !(Maybe Text)
    , _cllMaxResults    :: !(Maybe Int32)
    , _cllFields        :: !(Maybe Text)
    , _cllAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllSyncToken'
--
-- * 'cllQuotaUser'
--
-- * 'cllPrettyPrint'
--
-- * 'cllMinAccessRole'
--
-- * 'cllUserIp'
--
-- * 'cllShowDeleted'
--
-- * 'cllShowHidden'
--
-- * 'cllKey'
--
-- * 'cllPageToken'
--
-- * 'cllOauthToken'
--
-- * 'cllMaxResults'
--
-- * 'cllFields'
--
-- * 'cllAlt'
calendarListList'
    :: CalendarListList'
calendarListList' =
    CalendarListList'
    { _cllSyncToken = Nothing
    , _cllQuotaUser = Nothing
    , _cllPrettyPrint = True
    , _cllMinAccessRole = Nothing
    , _cllUserIp = Nothing
    , _cllShowDeleted = Nothing
    , _cllShowHidden = Nothing
    , _cllKey = Nothing
    , _cllPageToken = Nothing
    , _cllOauthToken = Nothing
    , _cllMaxResults = Nothing
    , _cllFields = Nothing
    , _cllAlt = JSON
    }

-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. If only
-- read-only fields such as calendar properties or ACLs have changed, the
-- entry won\'t be returned. All entries deleted and hidden since the
-- previous list request will always be in the result set and it is not
-- allowed to set showDeleted neither showHidden to False. To ensure client
-- state consistency minAccessRole query parameter cannot be specified
-- together with nextSyncToken. If the syncToken expires, the server will
-- respond with a 410 GONE response code and the client should clear its
-- storage and perform a full synchronization without any syncToken. Learn
-- more about incremental synchronization. Optional. The default is to
-- return all entries.
cllSyncToken :: Lens' CalendarListList' (Maybe Text)
cllSyncToken
  = lens _cllSyncToken (\ s a -> s{_cllSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' CalendarListList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' CalendarListList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
cllMinAccessRole :: Lens' CalendarListList' (Maybe CalendarCalendarListListMinAccessRole)
cllMinAccessRole
  = lens _cllMinAccessRole
      (\ s a -> s{_cllMinAccessRole = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIp :: Lens' CalendarListList' (Maybe Text)
cllUserIp
  = lens _cllUserIp (\ s a -> s{_cllUserIp = a})

-- | Whether to include deleted calendar list entries in the result.
-- Optional. The default is False.
cllShowDeleted :: Lens' CalendarListList' (Maybe Bool)
cllShowDeleted
  = lens _cllShowDeleted
      (\ s a -> s{_cllShowDeleted = a})

-- | Whether to show hidden entries. Optional. The default is False.
cllShowHidden :: Lens' CalendarListList' (Maybe Bool)
cllShowHidden
  = lens _cllShowHidden
      (\ s a -> s{_cllShowHidden = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' CalendarListList' (Maybe Text)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | Token specifying which result page to return. Optional.
cllPageToken :: Lens' CalendarListList' (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | OAuth 2.0 token for the current user.
cllOauthToken :: Lens' CalendarListList' (Maybe Text)
cllOauthToken
  = lens _cllOauthToken
      (\ s a -> s{_cllOauthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
cllMaxResults :: Lens' CalendarListList' (Maybe Int32)
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' CalendarListList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

-- | Data format for the response.
cllAlt :: Lens' CalendarListList' Alt
cllAlt = lens _cllAlt (\ s a -> s{_cllAlt = a})

instance GoogleRequest CalendarListList' where
        type Rs CalendarListList' = CalendarList
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListList'{..}
          = go _cllSyncToken _cllQuotaUser
              (Just _cllPrettyPrint)
              _cllMinAccessRole
              _cllUserIp
              _cllShowDeleted
              _cllShowHidden
              _cllKey
              _cllPageToken
              _cllOauthToken
              _cllMaxResults
              _cllFields
              (Just _cllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarListListResource)
                      r
                      u
