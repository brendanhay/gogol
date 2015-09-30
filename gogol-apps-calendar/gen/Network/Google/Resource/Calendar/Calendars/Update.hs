{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.Calendars.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates metadata for a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsUpdate@.
module Calendar.Calendars.Update
    (
    -- * REST Resource
      CalendarsUpdateAPI

    -- * Creating a Request
    , calendarsUpdate
    , CalendarsUpdate

    -- * Request Lenses
    , cuQuotaUser
    , cuCalendarId
    , cuPrettyPrint
    , cuUserIp
    , cuKey
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsUpdate@ which the
-- 'CalendarsUpdate' request conforms to.
type CalendarsUpdateAPI =
     "calendars" :>
       Capture "calendarId" Text :> Put '[JSON] Calendar

-- | Updates metadata for a calendar.
--
-- /See:/ 'calendarsUpdate' smart constructor.
data CalendarsUpdate = CalendarsUpdate
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuCalendarId  :: !Text
    , _cuPrettyPrint :: !Bool
    , _cuUserIp      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Text)
    , _cuOauthToken  :: !(Maybe Text)
    , _cuFields      :: !(Maybe Text)
    , _cuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuCalendarId'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuKey'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
calendarsUpdate
    :: Text -- ^ 'calendarId'
    -> CalendarsUpdate
calendarsUpdate pCuCalendarId_ =
    CalendarsUpdate
    { _cuQuotaUser = Nothing
    , _cuCalendarId = pCuCalendarId_
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuKey = Nothing
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CalendarsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cuCalendarId :: Lens' CalendarsUpdate' Text
cuCalendarId
  = lens _cuCalendarId (\ s a -> s{_cuCalendarId = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CalendarsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' CalendarsUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CalendarsUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' CalendarsUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CalendarsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' CalendarsUpdate' Text
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest CalendarsUpdate' where
        type Rs CalendarsUpdate' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsUpdate{..}
          = go _cuQuotaUser _cuCalendarId _cuPrettyPrint
              _cuUserIp
              _cuKey
              _cuOauthToken
              _cuFields
              _cuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CalendarsUpdateAPI)
                      r
                      u
