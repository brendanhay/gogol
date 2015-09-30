{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.Events.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsUpdate@.
module Calendar.Events.Update
    (
    -- * REST Resource
      EventsUpdateAPI

    -- * Creating a Request
    , eventsUpdate
    , EventsUpdate

    -- * Request Lenses
    , euQuotaUser
    , euCalendarId
    , euPrettyPrint
    , euUserIp
    , euMaxAttendees
    , euKey
    , euSendNotifications
    , euOauthToken
    , euSupportsAttachments
    , euAlwaysIncludeEmail
    , euEventId
    , euFields
    , euAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsUpdate@ which the
-- 'EventsUpdate' request conforms to.
type EventsUpdateAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "maxAttendees" Int32 :>
               QueryParam "sendNotifications" Bool :>
                 QueryParam "supportsAttachments" Bool :>
                   QueryParam "alwaysIncludeEmail" Bool :>
                     Put '[JSON] Event

-- | Updates an event.
--
-- /See:/ 'eventsUpdate' smart constructor.
data EventsUpdate = EventsUpdate
    { _euQuotaUser           :: !(Maybe Text)
    , _euCalendarId          :: !Text
    , _euPrettyPrint         :: !Bool
    , _euUserIp              :: !(Maybe Text)
    , _euMaxAttendees        :: !(Maybe Int32)
    , _euKey                 :: !(Maybe Text)
    , _euSendNotifications   :: !(Maybe Bool)
    , _euOauthToken          :: !(Maybe Text)
    , _euSupportsAttachments :: !(Maybe Bool)
    , _euAlwaysIncludeEmail  :: !(Maybe Bool)
    , _euEventId             :: !Text
    , _euFields              :: !(Maybe Text)
    , _euAlt                 :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euQuotaUser'
--
-- * 'euCalendarId'
--
-- * 'euPrettyPrint'
--
-- * 'euUserIp'
--
-- * 'euMaxAttendees'
--
-- * 'euKey'
--
-- * 'euSendNotifications'
--
-- * 'euOauthToken'
--
-- * 'euSupportsAttachments'
--
-- * 'euAlwaysIncludeEmail'
--
-- * 'euEventId'
--
-- * 'euFields'
--
-- * 'euAlt'
eventsUpdate
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsUpdate
eventsUpdate pEuCalendarId_ pEuEventId_ =
    EventsUpdate
    { _euQuotaUser = Nothing
    , _euCalendarId = pEuCalendarId_
    , _euPrettyPrint = True
    , _euUserIp = Nothing
    , _euMaxAttendees = Nothing
    , _euKey = Nothing
    , _euSendNotifications = Nothing
    , _euOauthToken = Nothing
    , _euSupportsAttachments = Nothing
    , _euAlwaysIncludeEmail = Nothing
    , _euEventId = pEuEventId_
    , _euFields = Nothing
    , _euAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
euQuotaUser :: Lens' EventsUpdate' (Maybe Text)
euQuotaUser
  = lens _euQuotaUser (\ s a -> s{_euQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
euCalendarId :: Lens' EventsUpdate' Text
euCalendarId
  = lens _euCalendarId (\ s a -> s{_euCalendarId = a})

-- | Returns response with indentations and line breaks.
euPrettyPrint :: Lens' EventsUpdate' Bool
euPrettyPrint
  = lens _euPrettyPrint
      (\ s a -> s{_euPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
euUserIp :: Lens' EventsUpdate' (Maybe Text)
euUserIp = lens _euUserIp (\ s a -> s{_euUserIp = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
euMaxAttendees :: Lens' EventsUpdate' (Maybe Int32)
euMaxAttendees
  = lens _euMaxAttendees
      (\ s a -> s{_euMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
euKey :: Lens' EventsUpdate' (Maybe Text)
euKey = lens _euKey (\ s a -> s{_euKey = a})

-- | Whether to send notifications about the event update (e.g. attendee\'s
-- responses, title changes, etc.). Optional. The default is False.
euSendNotifications :: Lens' EventsUpdate' (Maybe Bool)
euSendNotifications
  = lens _euSendNotifications
      (\ s a -> s{_euSendNotifications = a})

-- | OAuth 2.0 token for the current user.
euOauthToken :: Lens' EventsUpdate' (Maybe Text)
euOauthToken
  = lens _euOauthToken (\ s a -> s{_euOauthToken = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
euSupportsAttachments :: Lens' EventsUpdate' (Maybe Bool)
euSupportsAttachments
  = lens _euSupportsAttachments
      (\ s a -> s{_euSupportsAttachments = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
euAlwaysIncludeEmail :: Lens' EventsUpdate' (Maybe Bool)
euAlwaysIncludeEmail
  = lens _euAlwaysIncludeEmail
      (\ s a -> s{_euAlwaysIncludeEmail = a})

-- | Event identifier.
euEventId :: Lens' EventsUpdate' Text
euEventId
  = lens _euEventId (\ s a -> s{_euEventId = a})

-- | Selector specifying which fields to include in a partial response.
euFields :: Lens' EventsUpdate' (Maybe Text)
euFields = lens _euFields (\ s a -> s{_euFields = a})

-- | Data format for the response.
euAlt :: Lens' EventsUpdate' Text
euAlt = lens _euAlt (\ s a -> s{_euAlt = a})

instance GoogleRequest EventsUpdate' where
        type Rs EventsUpdate' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsUpdate{..}
          = go _euQuotaUser _euCalendarId _euPrettyPrint
              _euUserIp
              _euMaxAttendees
              _euKey
              _euSendNotifications
              _euOauthToken
              _euSupportsAttachments
              _euAlwaysIncludeEmail
              _euEventId
              _euFields
              _euAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EventsUpdateAPI) r
                      u
