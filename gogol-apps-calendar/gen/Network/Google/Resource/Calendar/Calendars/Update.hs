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
module Network.Google.Resource.Calendar.Calendars.Update
    (
    -- * REST Resource
      CalendarsUpdateResource

    -- * Creating a Request
    , calendarsUpdate'
    , CalendarsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuCalendarId
    , cuPrettyPrint
    , cuUserIP
    , cuKey
    , cuCalendar
    , cuOAuthToken
    , cuFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsUpdate@ which the
-- 'CalendarsUpdate'' request conforms to.
type CalendarsUpdateResource =
     "calendars" :>
       Capture "calendarId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Calendar :> Put '[JSON] Calendar

-- | Updates metadata for a calendar.
--
-- /See:/ 'calendarsUpdate'' smart constructor.
data CalendarsUpdate' = CalendarsUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuCalendarId  :: !Text
    , _cuPrettyPrint :: !Bool
    , _cuUserIP      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Key)
    , _cuCalendar    :: !Calendar
    , _cuOAuthToken  :: !(Maybe OAuthToken)
    , _cuFields      :: !(Maybe Text)
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
-- * 'cuUserIP'
--
-- * 'cuKey'
--
-- * 'cuCalendar'
--
-- * 'cuOAuthToken'
--
-- * 'cuFields'
calendarsUpdate'
    :: Text -- ^ 'calendarId'
    -> Calendar -- ^ 'Calendar'
    -> CalendarsUpdate'
calendarsUpdate' pCuCalendarId_ pCuCalendar_ =
    CalendarsUpdate'
    { _cuQuotaUser = Nothing
    , _cuCalendarId = pCuCalendarId_
    , _cuPrettyPrint = True
    , _cuUserIP = Nothing
    , _cuKey = Nothing
    , _cuCalendar = pCuCalendar_
    , _cuOAuthToken = Nothing
    , _cuFields = Nothing
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
cuUserIP :: Lens' CalendarsUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CalendarsUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | Multipart request metadata.
cuCalendar :: Lens' CalendarsUpdate' Calendar
cuCalendar
  = lens _cuCalendar (\ s a -> s{_cuCalendar = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' CalendarsUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CalendarsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth CalendarsUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest CalendarsUpdate' where
        type Rs CalendarsUpdate' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsUpdate'{..}
          = go _cuCalendarId _cuQuotaUser (Just _cuPrettyPrint)
              _cuUserIP
              _cuFields
              _cuKey
              _cuOAuthToken
              (Just AltJSON)
              _cuCalendar
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarsUpdateResource)
                      r
                      u
