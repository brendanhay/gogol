{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Events.Instances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns instances of the specified recurring event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.instances@.
module Network.Google.API.Calendar.Events.Instances
    (
    -- * REST Resource
      EventsInstancesAPI

    -- * Creating a Request
    , eventsInstances'
    , EventsInstances'

    -- * Request Lenses
    , eveQuotaUser
    , eveCalendarId
    , evePrettyPrint
    , eveTimeMin
    , eveUserIp
    , eveShowDeleted
    , eveOriginalStart
    , eveMaxAttendees
    , eveKey
    , evePageToken
    , eveTimeZone
    , eveOauthToken
    , eveMaxResults
    , eveAlwaysIncludeEmail
    , eveTimeMax
    , eveEventId
    , eveFields
    , eveAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.events.instances which the
-- 'EventsInstances'' request conforms to.
type EventsInstancesAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             "instances" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "timeMin" UTCTime :>
                     QueryParam "userIp" Text :>
                       QueryParam "showDeleted" Bool :>
                         QueryParam "originalStart" Text :>
                           QueryParam "maxAttendees" Nat :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "timeZone" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "maxResults" Nat :>
                                       QueryParam "alwaysIncludeEmail" Bool :>
                                         QueryParam "timeMax" UTCTime :>
                                           QueryParam "fields" Text :>
                                             QueryParam "alt" Alt :>
                                               Get '[JSON] Events

-- | Returns instances of the specified recurring event.
--
-- /See:/ 'eventsInstances'' smart constructor.
data EventsInstances' = EventsInstances'
    { _eveQuotaUser          :: !(Maybe Text)
    , _eveCalendarId         :: !Text
    , _evePrettyPrint        :: !Bool
    , _eveTimeMin            :: !(Maybe UTCTime)
    , _eveUserIp             :: !(Maybe Text)
    , _eveShowDeleted        :: !(Maybe Bool)
    , _eveOriginalStart      :: !(Maybe Text)
    , _eveMaxAttendees       :: !(Maybe Nat)
    , _eveKey                :: !(Maybe Text)
    , _evePageToken          :: !(Maybe Text)
    , _eveTimeZone           :: !(Maybe Text)
    , _eveOauthToken         :: !(Maybe Text)
    , _eveMaxResults         :: !(Maybe Nat)
    , _eveAlwaysIncludeEmail :: !(Maybe Bool)
    , _eveTimeMax            :: !(Maybe UTCTime)
    , _eveEventId            :: !Text
    , _eveFields             :: !(Maybe Text)
    , _eveAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eveQuotaUser'
--
-- * 'eveCalendarId'
--
-- * 'evePrettyPrint'
--
-- * 'eveTimeMin'
--
-- * 'eveUserIp'
--
-- * 'eveShowDeleted'
--
-- * 'eveOriginalStart'
--
-- * 'eveMaxAttendees'
--
-- * 'eveKey'
--
-- * 'evePageToken'
--
-- * 'eveTimeZone'
--
-- * 'eveOauthToken'
--
-- * 'eveMaxResults'
--
-- * 'eveAlwaysIncludeEmail'
--
-- * 'eveTimeMax'
--
-- * 'eveEventId'
--
-- * 'eveFields'
--
-- * 'eveAlt'
eventsInstances'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsInstances'
eventsInstances' pEveCalendarId_ pEveEventId_ =
    EventsInstances'
    { _eveQuotaUser = Nothing
    , _eveCalendarId = pEveCalendarId_
    , _evePrettyPrint = True
    , _eveTimeMin = Nothing
    , _eveUserIp = Nothing
    , _eveShowDeleted = Nothing
    , _eveOriginalStart = Nothing
    , _eveMaxAttendees = Nothing
    , _eveKey = Nothing
    , _evePageToken = Nothing
    , _eveTimeZone = Nothing
    , _eveOauthToken = Nothing
    , _eveMaxResults = Nothing
    , _eveAlwaysIncludeEmail = Nothing
    , _eveTimeMax = Nothing
    , _eveEventId = pEveEventId_
    , _eveFields = Nothing
    , _eveAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eveQuotaUser :: Lens' EventsInstances' (Maybe Text)
eveQuotaUser
  = lens _eveQuotaUser (\ s a -> s{_eveQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eveCalendarId :: Lens' EventsInstances' Text
eveCalendarId
  = lens _eveCalendarId
      (\ s a -> s{_eveCalendarId = a})

-- | Returns response with indentations and line breaks.
evePrettyPrint :: Lens' EventsInstances' Bool
evePrettyPrint
  = lens _evePrettyPrint
      (\ s a -> s{_evePrettyPrint = a})

-- | Lower bound (inclusive) for an event\'s end time to filter by. Optional.
-- The default is not to filter by end time. Must be an RFC3339 timestamp
-- with mandatory time zone offset.
eveTimeMin :: Lens' EventsInstances' (Maybe UTCTime)
eveTimeMin
  = lens _eveTimeMin (\ s a -> s{_eveTimeMin = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eveUserIp :: Lens' EventsInstances' (Maybe Text)
eveUserIp
  = lens _eveUserIp (\ s a -> s{_eveUserIp = a})

-- | Whether to include deleted events (with status equals \"cancelled\") in
-- the result. Cancelled instances of recurring events will still be
-- included if singleEvents is False. Optional. The default is False.
eveShowDeleted :: Lens' EventsInstances' (Maybe Bool)
eveShowDeleted
  = lens _eveShowDeleted
      (\ s a -> s{_eveShowDeleted = a})

-- | The original start time of the instance in the result. Optional.
eveOriginalStart :: Lens' EventsInstances' (Maybe Text)
eveOriginalStart
  = lens _eveOriginalStart
      (\ s a -> s{_eveOriginalStart = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
eveMaxAttendees :: Lens' EventsInstances' (Maybe Natural)
eveMaxAttendees
  = lens _eveMaxAttendees
      (\ s a -> s{_eveMaxAttendees = a})
      . mapping _Nat

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eveKey :: Lens' EventsInstances' (Maybe Text)
eveKey = lens _eveKey (\ s a -> s{_eveKey = a})

-- | Token specifying which result page to return. Optional.
evePageToken :: Lens' EventsInstances' (Maybe Text)
evePageToken
  = lens _evePageToken (\ s a -> s{_evePageToken = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
eveTimeZone :: Lens' EventsInstances' (Maybe Text)
eveTimeZone
  = lens _eveTimeZone (\ s a -> s{_eveTimeZone = a})

-- | OAuth 2.0 token for the current user.
eveOauthToken :: Lens' EventsInstances' (Maybe Text)
eveOauthToken
  = lens _eveOauthToken
      (\ s a -> s{_eveOauthToken = a})

-- | Maximum number of events returned on one result page. By default the
-- value is 250 events. The page size can never be larger than 2500 events.
-- Optional.
eveMaxResults :: Lens' EventsInstances' (Maybe Natural)
eveMaxResults
  = lens _eveMaxResults
      (\ s a -> s{_eveMaxResults = a})
      . mapping _Nat

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
eveAlwaysIncludeEmail :: Lens' EventsInstances' (Maybe Bool)
eveAlwaysIncludeEmail
  = lens _eveAlwaysIncludeEmail
      (\ s a -> s{_eveAlwaysIncludeEmail = a})

-- | Upper bound (exclusive) for an event\'s start time to filter by.
-- Optional. The default is not to filter by start time. Must be an RFC3339
-- timestamp with mandatory time zone offset.
eveTimeMax :: Lens' EventsInstances' (Maybe UTCTime)
eveTimeMax
  = lens _eveTimeMax (\ s a -> s{_eveTimeMax = a})

-- | Recurring event identifier.
eveEventId :: Lens' EventsInstances' Text
eveEventId
  = lens _eveEventId (\ s a -> s{_eveEventId = a})

-- | Selector specifying which fields to include in a partial response.
eveFields :: Lens' EventsInstances' (Maybe Text)
eveFields
  = lens _eveFields (\ s a -> s{_eveFields = a})

-- | Data format for the response.
eveAlt :: Lens' EventsInstances' Alt
eveAlt = lens _eveAlt (\ s a -> s{_eveAlt = a})

instance GoogleRequest EventsInstances' where
        type Rs EventsInstances' = Events
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsInstances'{..}
          = go _eveQuotaUser _eveCalendarId
              (Just _evePrettyPrint)
              _eveTimeMin
              _eveUserIp
              _eveShowDeleted
              _eveOriginalStart
              _eveMaxAttendees
              _eveKey
              _evePageToken
              _eveTimeZone
              _eveOauthToken
              _eveMaxResults
              _eveAlwaysIncludeEmail
              _eveTimeMax
              _eveEventId
              _eveFields
              (Just _eveAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsInstancesAPI)
                      r
                      u
