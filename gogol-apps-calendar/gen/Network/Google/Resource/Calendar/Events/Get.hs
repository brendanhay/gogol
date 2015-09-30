{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.Events.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsGet@.
module Calendar.Events.Get
    (
    -- * REST Resource
      EventsGetAPI

    -- * Creating a Request
    , eventsGet
    , EventsGet

    -- * Request Lenses
    , egQuotaUser
    , egCalendarId
    , egPrettyPrint
    , egUserIp
    , egMaxAttendees
    , egKey
    , egTimeZone
    , egOauthToken
    , egAlwaysIncludeEmail
    , egEventId
    , egFields
    , egAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsGet@ which the
-- 'EventsGet' request conforms to.
type EventsGetAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "maxAttendees" Int32 :>
               QueryParam "timeZone" Text :>
                 QueryParam "alwaysIncludeEmail" Bool :>
                   Get '[JSON] Event

-- | Returns an event.
--
-- /See:/ 'eventsGet' smart constructor.
data EventsGet = EventsGet
    { _egQuotaUser          :: !(Maybe Text)
    , _egCalendarId         :: !Text
    , _egPrettyPrint        :: !Bool
    , _egUserIp             :: !(Maybe Text)
    , _egMaxAttendees       :: !(Maybe Int32)
    , _egKey                :: !(Maybe Text)
    , _egTimeZone           :: !(Maybe Text)
    , _egOauthToken         :: !(Maybe Text)
    , _egAlwaysIncludeEmail :: !(Maybe Bool)
    , _egEventId            :: !Text
    , _egFields             :: !(Maybe Text)
    , _egAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egQuotaUser'
--
-- * 'egCalendarId'
--
-- * 'egPrettyPrint'
--
-- * 'egUserIp'
--
-- * 'egMaxAttendees'
--
-- * 'egKey'
--
-- * 'egTimeZone'
--
-- * 'egOauthToken'
--
-- * 'egAlwaysIncludeEmail'
--
-- * 'egEventId'
--
-- * 'egFields'
--
-- * 'egAlt'
eventsGet
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsGet
eventsGet pEgCalendarId_ pEgEventId_ =
    EventsGet
    { _egQuotaUser = Nothing
    , _egCalendarId = pEgCalendarId_
    , _egPrettyPrint = True
    , _egUserIp = Nothing
    , _egMaxAttendees = Nothing
    , _egKey = Nothing
    , _egTimeZone = Nothing
    , _egOauthToken = Nothing
    , _egAlwaysIncludeEmail = Nothing
    , _egEventId = pEgEventId_
    , _egFields = Nothing
    , _egAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
egQuotaUser :: Lens' EventsGet' (Maybe Text)
egQuotaUser
  = lens _egQuotaUser (\ s a -> s{_egQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
egCalendarId :: Lens' EventsGet' Text
egCalendarId
  = lens _egCalendarId (\ s a -> s{_egCalendarId = a})

-- | Returns response with indentations and line breaks.
egPrettyPrint :: Lens' EventsGet' Bool
egPrettyPrint
  = lens _egPrettyPrint
      (\ s a -> s{_egPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
egUserIp :: Lens' EventsGet' (Maybe Text)
egUserIp = lens _egUserIp (\ s a -> s{_egUserIp = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
egMaxAttendees :: Lens' EventsGet' (Maybe Int32)
egMaxAttendees
  = lens _egMaxAttendees
      (\ s a -> s{_egMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
egKey :: Lens' EventsGet' (Maybe Text)
egKey = lens _egKey (\ s a -> s{_egKey = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
egTimeZone :: Lens' EventsGet' (Maybe Text)
egTimeZone
  = lens _egTimeZone (\ s a -> s{_egTimeZone = a})

-- | OAuth 2.0 token for the current user.
egOauthToken :: Lens' EventsGet' (Maybe Text)
egOauthToken
  = lens _egOauthToken (\ s a -> s{_egOauthToken = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
egAlwaysIncludeEmail :: Lens' EventsGet' (Maybe Bool)
egAlwaysIncludeEmail
  = lens _egAlwaysIncludeEmail
      (\ s a -> s{_egAlwaysIncludeEmail = a})

-- | Event identifier.
egEventId :: Lens' EventsGet' Text
egEventId
  = lens _egEventId (\ s a -> s{_egEventId = a})

-- | Selector specifying which fields to include in a partial response.
egFields :: Lens' EventsGet' (Maybe Text)
egFields = lens _egFields (\ s a -> s{_egFields = a})

-- | Data format for the response.
egAlt :: Lens' EventsGet' Text
egAlt = lens _egAlt (\ s a -> s{_egAlt = a})

instance GoogleRequest EventsGet' where
        type Rs EventsGet' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsGet{..}
          = go _egQuotaUser _egCalendarId _egPrettyPrint
              _egUserIp
              _egMaxAttendees
              _egKey
              _egTimeZone
              _egOauthToken
              _egAlwaysIncludeEmail
              _egEventId
              _egFields
              _egAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EventsGetAPI) r u
