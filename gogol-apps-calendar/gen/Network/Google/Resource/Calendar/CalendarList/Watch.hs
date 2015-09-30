{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.CalendarList.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes to CalendarList resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListWatch@.
module Calendar.CalendarList.Watch
    (
    -- * REST Resource
      CalendarListWatchAPI

    -- * Creating a Request
    , calendarListWatch
    , CalendarListWatch

    -- * Request Lenses
    , clwSyncToken
    , clwQuotaUser
    , clwPrettyPrint
    , clwMinAccessRole
    , clwUserIp
    , clwShowDeleted
    , clwShowHidden
    , clwKey
    , clwPageToken
    , clwOauthToken
    , clwMaxResults
    , clwFields
    , clwAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListWatch@ which the
-- 'CalendarListWatch' request conforms to.
type CalendarListWatchAPI =
     "users" :>
       "me" :>
         "calendarList" :>
           "watch" :>
             QueryParam "syncToken" Text :>
               QueryParam "minAccessRole" Text :>
                 QueryParam "showDeleted" Bool :>
                   QueryParam "showHidden" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Int32 :> Post '[JSON] Channel

-- | Watch for changes to CalendarList resources.
--
-- /See:/ 'calendarListWatch' smart constructor.
data CalendarListWatch = CalendarListWatch
    { _clwSyncToken     :: !(Maybe Text)
    , _clwQuotaUser     :: !(Maybe Text)
    , _clwPrettyPrint   :: !Bool
    , _clwMinAccessRole :: !(Maybe Text)
    , _clwUserIp        :: !(Maybe Text)
    , _clwShowDeleted   :: !(Maybe Bool)
    , _clwShowHidden    :: !(Maybe Bool)
    , _clwKey           :: !(Maybe Text)
    , _clwPageToken     :: !(Maybe Text)
    , _clwOauthToken    :: !(Maybe Text)
    , _clwMaxResults    :: !(Maybe Int32)
    , _clwFields        :: !(Maybe Text)
    , _clwAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clwSyncToken'
--
-- * 'clwQuotaUser'
--
-- * 'clwPrettyPrint'
--
-- * 'clwMinAccessRole'
--
-- * 'clwUserIp'
--
-- * 'clwShowDeleted'
--
-- * 'clwShowHidden'
--
-- * 'clwKey'
--
-- * 'clwPageToken'
--
-- * 'clwOauthToken'
--
-- * 'clwMaxResults'
--
-- * 'clwFields'
--
-- * 'clwAlt'
calendarListWatch
    :: CalendarListWatch
calendarListWatch =
    CalendarListWatch
    { _clwSyncToken = Nothing
    , _clwQuotaUser = Nothing
    , _clwPrettyPrint = True
    , _clwMinAccessRole = Nothing
    , _clwUserIp = Nothing
    , _clwShowDeleted = Nothing
    , _clwShowHidden = Nothing
    , _clwKey = Nothing
    , _clwPageToken = Nothing
    , _clwOauthToken = Nothing
    , _clwMaxResults = Nothing
    , _clwFields = Nothing
    , _clwAlt = "json"
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
clwSyncToken :: Lens' CalendarListWatch' (Maybe Text)
clwSyncToken
  = lens _clwSyncToken (\ s a -> s{_clwSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clwQuotaUser :: Lens' CalendarListWatch' (Maybe Text)
clwQuotaUser
  = lens _clwQuotaUser (\ s a -> s{_clwQuotaUser = a})

-- | Returns response with indentations and line breaks.
clwPrettyPrint :: Lens' CalendarListWatch' Bool
clwPrettyPrint
  = lens _clwPrettyPrint
      (\ s a -> s{_clwPrettyPrint = a})

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
clwMinAccessRole :: Lens' CalendarListWatch' (Maybe Text)
clwMinAccessRole
  = lens _clwMinAccessRole
      (\ s a -> s{_clwMinAccessRole = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clwUserIp :: Lens' CalendarListWatch' (Maybe Text)
clwUserIp
  = lens _clwUserIp (\ s a -> s{_clwUserIp = a})

-- | Whether to include deleted calendar list entries in the result.
-- Optional. The default is False.
clwShowDeleted :: Lens' CalendarListWatch' (Maybe Bool)
clwShowDeleted
  = lens _clwShowDeleted
      (\ s a -> s{_clwShowDeleted = a})

-- | Whether to show hidden entries. Optional. The default is False.
clwShowHidden :: Lens' CalendarListWatch' (Maybe Bool)
clwShowHidden
  = lens _clwShowHidden
      (\ s a -> s{_clwShowHidden = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clwKey :: Lens' CalendarListWatch' (Maybe Text)
clwKey = lens _clwKey (\ s a -> s{_clwKey = a})

-- | Token specifying which result page to return. Optional.
clwPageToken :: Lens' CalendarListWatch' (Maybe Text)
clwPageToken
  = lens _clwPageToken (\ s a -> s{_clwPageToken = a})

-- | OAuth 2.0 token for the current user.
clwOauthToken :: Lens' CalendarListWatch' (Maybe Text)
clwOauthToken
  = lens _clwOauthToken
      (\ s a -> s{_clwOauthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
clwMaxResults :: Lens' CalendarListWatch' (Maybe Int32)
clwMaxResults
  = lens _clwMaxResults
      (\ s a -> s{_clwMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clwFields :: Lens' CalendarListWatch' (Maybe Text)
clwFields
  = lens _clwFields (\ s a -> s{_clwFields = a})

-- | Data format for the response.
clwAlt :: Lens' CalendarListWatch' Text
clwAlt = lens _clwAlt (\ s a -> s{_clwAlt = a})

instance GoogleRequest CalendarListWatch' where
        type Rs CalendarListWatch' = Channel
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListWatch{..}
          = go _clwSyncToken _clwQuotaUser _clwPrettyPrint
              _clwMinAccessRole
              _clwUserIp
              _clwShowDeleted
              _clwShowHidden
              _clwKey
              _clwPageToken
              _clwOauthToken
              _clwMaxResults
              _clwFields
              _clwAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarListWatchAPI)
                      r
                      u
