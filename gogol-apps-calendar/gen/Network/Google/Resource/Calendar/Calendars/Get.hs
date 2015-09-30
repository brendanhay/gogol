{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.Calendars.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns metadata for a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsGet@.
module Calendar.Calendars.Get
    (
    -- * REST Resource
      CalendarsGetAPI

    -- * Creating a Request
    , calendarsGet
    , CalendarsGet

    -- * Request Lenses
    , cgQuotaUser
    , cgCalendarId
    , cgPrettyPrint
    , cgUserIp
    , cgKey
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsGet@ which the
-- 'CalendarsGet' request conforms to.
type CalendarsGetAPI =
     "calendars" :>
       Capture "calendarId" Text :> Get '[JSON] Calendar

-- | Returns metadata for a calendar.
--
-- /See:/ 'calendarsGet' smart constructor.
data CalendarsGet = CalendarsGet
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgCalendarId  :: !Text
    , _cgPrettyPrint :: !Bool
    , _cgUserIp      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Text)
    , _cgOauthToken  :: !(Maybe Text)
    , _cgFields      :: !(Maybe Text)
    , _cgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgCalendarId'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgKey'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
calendarsGet
    :: Text -- ^ 'calendarId'
    -> CalendarsGet
calendarsGet pCgCalendarId_ =
    CalendarsGet
    { _cgQuotaUser = Nothing
    , _cgCalendarId = pCgCalendarId_
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgKey = Nothing
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CalendarsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cgCalendarId :: Lens' CalendarsGet' Text
cgCalendarId
  = lens _cgCalendarId (\ s a -> s{_cgCalendarId = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CalendarsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' CalendarsGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CalendarsGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CalendarsGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CalendarsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CalendarsGet' Text
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CalendarsGet' where
        type Rs CalendarsGet' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsGet{..}
          = go _cgQuotaUser _cgCalendarId _cgPrettyPrint
              _cgUserIp
              _cgKey
              _cgOauthToken
              _cgFields
              _cgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CalendarsGetAPI) r
                      u
