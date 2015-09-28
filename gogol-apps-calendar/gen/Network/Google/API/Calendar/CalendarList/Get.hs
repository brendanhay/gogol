{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.CalendarList.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns an entry on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.get@.
module Network.Google.API.Calendar.CalendarList.Get
    (
    -- * REST Resource
      CalendarListGetAPI

    -- * Creating a Request
    , calendarListGet'
    , CalendarListGet'

    -- * Request Lenses
    , clgQuotaUser
    , clgCalendarId
    , clgPrettyPrint
    , clgUserIp
    , clgKey
    , clgOauthToken
    , clgFields
    , clgAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.calendarList.get which the
-- 'CalendarListGet'' request conforms to.
type CalendarListGetAPI =
     "users" :>
       "me" :>
         "calendarList" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] CalendarListEntry

-- | Returns an entry on the user\'s calendar list.
--
-- /See:/ 'calendarListGet'' smart constructor.
data CalendarListGet' = CalendarListGet'
    { _clgQuotaUser   :: !(Maybe Text)
    , _clgCalendarId  :: !Text
    , _clgPrettyPrint :: !Bool
    , _clgUserIp      :: !(Maybe Text)
    , _clgKey         :: !(Maybe Text)
    , _clgOauthToken  :: !(Maybe Text)
    , _clgFields      :: !(Maybe Text)
    , _clgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clgQuotaUser'
--
-- * 'clgCalendarId'
--
-- * 'clgPrettyPrint'
--
-- * 'clgUserIp'
--
-- * 'clgKey'
--
-- * 'clgOauthToken'
--
-- * 'clgFields'
--
-- * 'clgAlt'
calendarListGet'
    :: Text -- ^ 'calendarId'
    -> CalendarListGet'
calendarListGet' pClgCalendarId_ =
    CalendarListGet'
    { _clgQuotaUser = Nothing
    , _clgCalendarId = pClgCalendarId_
    , _clgPrettyPrint = True
    , _clgUserIp = Nothing
    , _clgKey = Nothing
    , _clgOauthToken = Nothing
    , _clgFields = Nothing
    , _clgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clgQuotaUser :: Lens' CalendarListGet' (Maybe Text)
clgQuotaUser
  = lens _clgQuotaUser (\ s a -> s{_clgQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
clgCalendarId :: Lens' CalendarListGet' Text
clgCalendarId
  = lens _clgCalendarId
      (\ s a -> s{_clgCalendarId = a})

-- | Returns response with indentations and line breaks.
clgPrettyPrint :: Lens' CalendarListGet' Bool
clgPrettyPrint
  = lens _clgPrettyPrint
      (\ s a -> s{_clgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clgUserIp :: Lens' CalendarListGet' (Maybe Text)
clgUserIp
  = lens _clgUserIp (\ s a -> s{_clgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clgKey :: Lens' CalendarListGet' (Maybe Text)
clgKey = lens _clgKey (\ s a -> s{_clgKey = a})

-- | OAuth 2.0 token for the current user.
clgOauthToken :: Lens' CalendarListGet' (Maybe Text)
clgOauthToken
  = lens _clgOauthToken
      (\ s a -> s{_clgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
clgFields :: Lens' CalendarListGet' (Maybe Text)
clgFields
  = lens _clgFields (\ s a -> s{_clgFields = a})

-- | Data format for the response.
clgAlt :: Lens' CalendarListGet' Alt
clgAlt = lens _clgAlt (\ s a -> s{_clgAlt = a})

instance GoogleRequest CalendarListGet' where
        type Rs CalendarListGet' = CalendarListEntry
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListGet'{..}
          = go _clgQuotaUser _clgCalendarId
              (Just _clgPrettyPrint)
              _clgUserIp
              _clgKey
              _clgOauthToken
              _clgFields
              (Just _clgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CalendarListGetAPI)
                      r
                      u
