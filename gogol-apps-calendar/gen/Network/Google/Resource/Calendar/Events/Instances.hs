{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.Events.Instances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns instances of the specified recurring event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsInstances@.
module Calendar.Events.Instances
    (
    -- * REST Resource
      EventsInstancesAPI

    -- * Creating a Request
    , eventsInstances
    , EventsInstances

    -- * Request Lenses
    , eQuotaUser
    , eCalendarId
    , ePrettyPrint
    , eTimeMin
    , eUserIp
    , eShowDeleted
    , eOriginalStart
    , eMaxAttendees
    , eKey
    , ePageToken
    , eTimeZone
    , eOauthToken
    , eMaxResults
    , eAlwaysIncludeEmail
    , eTimeMax
    , eEventId
    , eFields
    , eAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsInstances@ which the
-- 'EventsInstances' request conforms to.
type EventsInstancesAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             "instances" :>
               QueryParam "timeMin" UTCTime :>
                 QueryParam "showDeleted" Bool :>
                   QueryParam "originalStart" Text :>
                     QueryParam "maxAttendees" Int32 :>
                       QueryParam "pageToken" Text :>
                         QueryParam "timeZone" Text :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "alwaysIncludeEmail" Bool :>
                               QueryParam "timeMax" UTCTime :>
                                 Get '[JSON] Events

-- | Returns instances of the specified recurring event.
--
-- /See:/ 'eventsInstances' smart constructor.
data EventsInstances = EventsInstances
    { _eQuotaUser          :: !(Maybe Text)
    , _eCalendarId         :: !Text
    , _ePrettyPrint        :: !Bool
    , _eTimeMin            :: !(Maybe UTCTime)
    , _eUserIp             :: !(Maybe Text)
    , _eShowDeleted        :: !(Maybe Bool)
    , _eOriginalStart      :: !(Maybe Text)
    , _eMaxAttendees       :: !(Maybe Int32)
    , _eKey                :: !(Maybe Text)
    , _ePageToken          :: !(Maybe Text)
    , _eTimeZone           :: !(Maybe Text)
    , _eOauthToken         :: !(Maybe Text)
    , _eMaxResults         :: !(Maybe Int32)
    , _eAlwaysIncludeEmail :: !(Maybe Bool)
    , _eTimeMax            :: !(Maybe UTCTime)
    , _eEventId            :: !Text
    , _eFields             :: !(Maybe Text)
    , _eAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eQuotaUser'
--
-- * 'eCalendarId'
--
-- * 'ePrettyPrint'
--
-- * 'eTimeMin'
--
-- * 'eUserIp'
--
-- * 'eShowDeleted'
--
-- * 'eOriginalStart'
--
-- * 'eMaxAttendees'
--
-- * 'eKey'
--
-- * 'ePageToken'
--
-- * 'eTimeZone'
--
-- * 'eOauthToken'
--
-- * 'eMaxResults'
--
-- * 'eAlwaysIncludeEmail'
--
-- * 'eTimeMax'
--
-- * 'eEventId'
--
-- * 'eFields'
--
-- * 'eAlt'
eventsInstances
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsInstances
eventsInstances pECalendarId_ pEEventId_ =
    EventsInstances
    { _eQuotaUser = Nothing
    , _eCalendarId = pECalendarId_
    , _ePrettyPrint = True
    , _eTimeMin = Nothing
    , _eUserIp = Nothing
    , _eShowDeleted = Nothing
    , _eOriginalStart = Nothing
    , _eMaxAttendees = Nothing
    , _eKey = Nothing
    , _ePageToken = Nothing
    , _eTimeZone = Nothing
    , _eOauthToken = Nothing
    , _eMaxResults = Nothing
    , _eAlwaysIncludeEmail = Nothing
    , _eTimeMax = Nothing
    , _eEventId = pEEventId_
    , _eFields = Nothing
    , _eAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EventsInstances' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eCalendarId :: Lens' EventsInstances' Text
eCalendarId
  = lens _eCalendarId (\ s a -> s{_eCalendarId = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EventsInstances' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | Lower bound (inclusive) for an event\'s end time to filter by. Optional.
-- The default is not to filter by end time. Must be an RFC3339 timestamp
-- with mandatory time zone offset.
eTimeMin :: Lens' EventsInstances' (Maybe UTCTime)
eTimeMin = lens _eTimeMin (\ s a -> s{_eTimeMin = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIp :: Lens' EventsInstances' (Maybe Text)
eUserIp = lens _eUserIp (\ s a -> s{_eUserIp = a})

-- | Whether to include deleted events (with status equals \"cancelled\") in
-- the result. Cancelled instances of recurring events will still be
-- included if singleEvents is False. Optional. The default is False.
eShowDeleted :: Lens' EventsInstances' (Maybe Bool)
eShowDeleted
  = lens _eShowDeleted (\ s a -> s{_eShowDeleted = a})

-- | The original start time of the instance in the result. Optional.
eOriginalStart :: Lens' EventsInstances' (Maybe Text)
eOriginalStart
  = lens _eOriginalStart
      (\ s a -> s{_eOriginalStart = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
eMaxAttendees :: Lens' EventsInstances' (Maybe Int32)
eMaxAttendees
  = lens _eMaxAttendees
      (\ s a -> s{_eMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EventsInstances' (Maybe Text)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | Token specifying which result page to return. Optional.
ePageToken :: Lens' EventsInstances' (Maybe Text)
ePageToken
  = lens _ePageToken (\ s a -> s{_ePageToken = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
eTimeZone :: Lens' EventsInstances' (Maybe Text)
eTimeZone
  = lens _eTimeZone (\ s a -> s{_eTimeZone = a})

-- | OAuth 2.0 token for the current user.
eOauthToken :: Lens' EventsInstances' (Maybe Text)
eOauthToken
  = lens _eOauthToken (\ s a -> s{_eOauthToken = a})

-- | Maximum number of events returned on one result page. By default the
-- value is 250 events. The page size can never be larger than 2500 events.
-- Optional.
eMaxResults :: Lens' EventsInstances' (Maybe Int32)
eMaxResults
  = lens _eMaxResults (\ s a -> s{_eMaxResults = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
eAlwaysIncludeEmail :: Lens' EventsInstances' (Maybe Bool)
eAlwaysIncludeEmail
  = lens _eAlwaysIncludeEmail
      (\ s a -> s{_eAlwaysIncludeEmail = a})

-- | Upper bound (exclusive) for an event\'s start time to filter by.
-- Optional. The default is not to filter by start time. Must be an RFC3339
-- timestamp with mandatory time zone offset.
eTimeMax :: Lens' EventsInstances' (Maybe UTCTime)
eTimeMax = lens _eTimeMax (\ s a -> s{_eTimeMax = a})

-- | Recurring event identifier.
eEventId :: Lens' EventsInstances' Text
eEventId = lens _eEventId (\ s a -> s{_eEventId = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EventsInstances' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

-- | Data format for the response.
eAlt :: Lens' EventsInstances' Text
eAlt = lens _eAlt (\ s a -> s{_eAlt = a})

instance GoogleRequest EventsInstances' where
        type Rs EventsInstances' = Events
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsInstances{..}
          = go _eQuotaUser _eCalendarId _ePrettyPrint _eTimeMin
              _eUserIp
              _eShowDeleted
              _eOriginalStart
              _eMaxAttendees
              _eKey
              _ePageToken
              _eTimeZone
              _eOauthToken
              _eMaxResults
              _eAlwaysIncludeEmail
              _eTimeMax
              _eEventId
              _eFields
              _eAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EventsInstancesAPI)
                      r
                      u
