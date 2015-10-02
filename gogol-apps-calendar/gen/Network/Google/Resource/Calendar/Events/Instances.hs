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
module Network.Google.Resource.Calendar.Events.Instances
    (
    -- * REST Resource
      EventsInstancesResource

    -- * Creating a Request
    , eventsInstances'
    , EventsInstances'

    -- * Request Lenses
    , eiQuotaUser
    , eiCalendarId
    , eiPrettyPrint
    , eiTimeMin
    , eiUserIP
    , eiShowDeleted
    , eiOriginalStart
    , eiMaxAttendees
    , eiKey
    , eiPageToken
    , eiTimeZone
    , eiOAuthToken
    , eiMaxResults
    , eiAlwaysIncludeEmail
    , eiTimeMax
    , eiEventId
    , eiFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsInstances@ which the
-- 'EventsInstances'' request conforms to.
type EventsInstancesResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             "instances" :>
               QueryParam "alwaysIncludeEmail" Bool :>
                 QueryParam "maxAttendees" Int32 :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "originalStart" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "showDeleted" Bool :>
                           QueryParam "timeMax" DateTime :>
                             QueryParam "timeMin" DateTime :>
                               QueryParam "timeZone" Text :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "userIp" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" Key :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] Events

-- | Returns instances of the specified recurring event.
--
-- /See:/ 'eventsInstances'' smart constructor.
data EventsInstances' = EventsInstances'
    { _eiQuotaUser          :: !(Maybe Text)
    , _eiCalendarId         :: !Text
    , _eiPrettyPrint        :: !Bool
    , _eiTimeMin            :: !(Maybe DateTime)
    , _eiUserIP             :: !(Maybe Text)
    , _eiShowDeleted        :: !(Maybe Bool)
    , _eiOriginalStart      :: !(Maybe Text)
    , _eiMaxAttendees       :: !(Maybe Int32)
    , _eiKey                :: !(Maybe Key)
    , _eiPageToken          :: !(Maybe Text)
    , _eiTimeZone           :: !(Maybe Text)
    , _eiOAuthToken         :: !(Maybe OAuthToken)
    , _eiMaxResults         :: !(Maybe Int32)
    , _eiAlwaysIncludeEmail :: !(Maybe Bool)
    , _eiTimeMax            :: !(Maybe DateTime)
    , _eiEventId            :: !Text
    , _eiFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiQuotaUser'
--
-- * 'eiCalendarId'
--
-- * 'eiPrettyPrint'
--
-- * 'eiTimeMin'
--
-- * 'eiUserIP'
--
-- * 'eiShowDeleted'
--
-- * 'eiOriginalStart'
--
-- * 'eiMaxAttendees'
--
-- * 'eiKey'
--
-- * 'eiPageToken'
--
-- * 'eiTimeZone'
--
-- * 'eiOAuthToken'
--
-- * 'eiMaxResults'
--
-- * 'eiAlwaysIncludeEmail'
--
-- * 'eiTimeMax'
--
-- * 'eiEventId'
--
-- * 'eiFields'
eventsInstances'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsInstances'
eventsInstances' pEiCalendarId_ pEiEventId_ =
    EventsInstances'
    { _eiQuotaUser = Nothing
    , _eiCalendarId = pEiCalendarId_
    , _eiPrettyPrint = True
    , _eiTimeMin = Nothing
    , _eiUserIP = Nothing
    , _eiShowDeleted = Nothing
    , _eiOriginalStart = Nothing
    , _eiMaxAttendees = Nothing
    , _eiKey = Nothing
    , _eiPageToken = Nothing
    , _eiTimeZone = Nothing
    , _eiOAuthToken = Nothing
    , _eiMaxResults = Nothing
    , _eiAlwaysIncludeEmail = Nothing
    , _eiTimeMax = Nothing
    , _eiEventId = pEiEventId_
    , _eiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eiQuotaUser :: Lens' EventsInstances' (Maybe Text)
eiQuotaUser
  = lens _eiQuotaUser (\ s a -> s{_eiQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eiCalendarId :: Lens' EventsInstances' Text
eiCalendarId
  = lens _eiCalendarId (\ s a -> s{_eiCalendarId = a})

-- | Returns response with indentations and line breaks.
eiPrettyPrint :: Lens' EventsInstances' Bool
eiPrettyPrint
  = lens _eiPrettyPrint
      (\ s a -> s{_eiPrettyPrint = a})

-- | Lower bound (inclusive) for an event\'s end time to filter by. Optional.
-- The default is not to filter by end time. Must be an RFC3339 timestamp
-- with mandatory time zone offset.
eiTimeMin :: Lens' EventsInstances' (Maybe UTCTime)
eiTimeMin
  = lens _eiTimeMin (\ s a -> s{_eiTimeMin = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eiUserIP :: Lens' EventsInstances' (Maybe Text)
eiUserIP = lens _eiUserIP (\ s a -> s{_eiUserIP = a})

-- | Whether to include deleted events (with status equals \"cancelled\") in
-- the result. Cancelled instances of recurring events will still be
-- included if singleEvents is False. Optional. The default is False.
eiShowDeleted :: Lens' EventsInstances' (Maybe Bool)
eiShowDeleted
  = lens _eiShowDeleted
      (\ s a -> s{_eiShowDeleted = a})

-- | The original start time of the instance in the result. Optional.
eiOriginalStart :: Lens' EventsInstances' (Maybe Text)
eiOriginalStart
  = lens _eiOriginalStart
      (\ s a -> s{_eiOriginalStart = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
eiMaxAttendees :: Lens' EventsInstances' (Maybe Int32)
eiMaxAttendees
  = lens _eiMaxAttendees
      (\ s a -> s{_eiMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eiKey :: Lens' EventsInstances' (Maybe Key)
eiKey = lens _eiKey (\ s a -> s{_eiKey = a})

-- | Token specifying which result page to return. Optional.
eiPageToken :: Lens' EventsInstances' (Maybe Text)
eiPageToken
  = lens _eiPageToken (\ s a -> s{_eiPageToken = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
eiTimeZone :: Lens' EventsInstances' (Maybe Text)
eiTimeZone
  = lens _eiTimeZone (\ s a -> s{_eiTimeZone = a})

-- | OAuth 2.0 token for the current user.
eiOAuthToken :: Lens' EventsInstances' (Maybe OAuthToken)
eiOAuthToken
  = lens _eiOAuthToken (\ s a -> s{_eiOAuthToken = a})

-- | Maximum number of events returned on one result page. By default the
-- value is 250 events. The page size can never be larger than 2500 events.
-- Optional.
eiMaxResults :: Lens' EventsInstances' (Maybe Int32)
eiMaxResults
  = lens _eiMaxResults (\ s a -> s{_eiMaxResults = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
eiAlwaysIncludeEmail :: Lens' EventsInstances' (Maybe Bool)
eiAlwaysIncludeEmail
  = lens _eiAlwaysIncludeEmail
      (\ s a -> s{_eiAlwaysIncludeEmail = a})

-- | Upper bound (exclusive) for an event\'s start time to filter by.
-- Optional. The default is not to filter by start time. Must be an RFC3339
-- timestamp with mandatory time zone offset.
eiTimeMax :: Lens' EventsInstances' (Maybe UTCTime)
eiTimeMax
  = lens _eiTimeMax (\ s a -> s{_eiTimeMax = a})

-- | Recurring event identifier.
eiEventId :: Lens' EventsInstances' Text
eiEventId
  = lens _eiEventId (\ s a -> s{_eiEventId = a})

-- | Selector specifying which fields to include in a partial response.
eiFields :: Lens' EventsInstances' (Maybe Text)
eiFields = lens _eiFields (\ s a -> s{_eiFields = a})

instance GoogleAuth EventsInstances' where
        authKey = eiKey . _Just
        authToken = eiOAuthToken . _Just

instance GoogleRequest EventsInstances' where
        type Rs EventsInstances' = Events
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsInstances'{..}
          = go _eiAlwaysIncludeEmail _eiMaxAttendees
              _eiMaxResults
              _eiOriginalStart
              _eiPageToken
              _eiShowDeleted
              _eiTimeMax
              _eiTimeMin
              _eiTimeZone
              _eiCalendarId
              _eiEventId
              _eiQuotaUser
              (Just _eiPrettyPrint)
              _eiUserIP
              _eiFields
              _eiKey
              _eiOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsInstancesResource)
                      r
                      u
