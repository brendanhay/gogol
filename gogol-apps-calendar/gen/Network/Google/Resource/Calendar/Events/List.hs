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
-- Module      : Network.Google.Resource.Calendar.Events.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns events on the specified calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsList@.
module Network.Google.Resource.Calendar.Events.List
    (
    -- * REST Resource
      EventsListResource

    -- * Creating a Request
    , eventsList'
    , EventsList'

    -- * Request Lenses
    , elSyncToken
    , elQuotaUser
    , elCalendarId
    , elPrettyPrint
    , elTimeMin
    , elOrderBy
    , elSingleEvents
    , elPrivateExtendedProperty
    , elUserIP
    , elShowDeleted
    , elQ
    , elSharedExtendedProperty
    , elMaxAttendees
    , elKey
    , elICalUId
    , elUpdatedMin
    , elPageToken
    , elTimeZone
    , elOAuthToken
    , elShowHiddenInvitations
    , elMaxResults
    , elAlwaysIncludeEmail
    , elTimeMax
    , elFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsList@ which the
-- 'EventsList'' request conforms to.
type EventsListResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           QueryParam "alwaysIncludeEmail" Bool :>
             QueryParam "iCalUID" Text :>
               QueryParam "maxAttendees" Int32 :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "orderBy" CalendarEventsListOrderBy :>
                     QueryParam "pageToken" Text :>
                       QueryParams "privateExtendedProperty" Text :>
                         QueryParam "q" Text :>
                           QueryParams "sharedExtendedProperty" Text :>
                             QueryParam "showDeleted" Bool :>
                               QueryParam "showHiddenInvitations" Bool :>
                                 QueryParam "singleEvents" Bool :>
                                   QueryParam "syncToken" Text :>
                                     QueryParam "timeMax" DateTime :>
                                       QueryParam "timeMin" DateTime :>
                                         QueryParam "timeZone" Text :>
                                           QueryParam "updatedMin" DateTime :>
                                             QueryParam "quotaUser" Text :>
                                               QueryParam "prettyPrint" Bool :>
                                                 QueryParam "userIp" Text :>
                                                   QueryParam "fields" Text :>
                                                     QueryParam "key" Key :>
                                                       QueryParam "oauth_token"
                                                         OAuthToken
                                                         :>
                                                         QueryParam "alt"
                                                           AltJSON
                                                           :> Get '[JSON] Events

-- | Returns events on the specified calendar.
--
-- /See:/ 'eventsList'' smart constructor.
data EventsList' = EventsList'
    { _elSyncToken               :: !(Maybe Text)
    , _elQuotaUser               :: !(Maybe Text)
    , _elCalendarId              :: !Text
    , _elPrettyPrint             :: !Bool
    , _elTimeMin                 :: !(Maybe DateTime)
    , _elOrderBy                 :: !(Maybe CalendarEventsListOrderBy)
    , _elSingleEvents            :: !(Maybe Bool)
    , _elPrivateExtendedProperty :: !(Maybe Text)
    , _elUserIP                  :: !(Maybe Text)
    , _elShowDeleted             :: !(Maybe Bool)
    , _elQ                       :: !(Maybe Text)
    , _elSharedExtendedProperty  :: !(Maybe Text)
    , _elMaxAttendees            :: !(Maybe Int32)
    , _elKey                     :: !(Maybe Key)
    , _elICalUId                 :: !(Maybe Text)
    , _elUpdatedMin              :: !(Maybe DateTime)
    , _elPageToken               :: !(Maybe Text)
    , _elTimeZone                :: !(Maybe Text)
    , _elOAuthToken              :: !(Maybe OAuthToken)
    , _elShowHiddenInvitations   :: !(Maybe Bool)
    , _elMaxResults              :: !(Maybe Int32)
    , _elAlwaysIncludeEmail      :: !(Maybe Bool)
    , _elTimeMax                 :: !(Maybe DateTime)
    , _elFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elSyncToken'
--
-- * 'elQuotaUser'
--
-- * 'elCalendarId'
--
-- * 'elPrettyPrint'
--
-- * 'elTimeMin'
--
-- * 'elOrderBy'
--
-- * 'elSingleEvents'
--
-- * 'elPrivateExtendedProperty'
--
-- * 'elUserIP'
--
-- * 'elShowDeleted'
--
-- * 'elQ'
--
-- * 'elSharedExtendedProperty'
--
-- * 'elMaxAttendees'
--
-- * 'elKey'
--
-- * 'elICalUId'
--
-- * 'elUpdatedMin'
--
-- * 'elPageToken'
--
-- * 'elTimeZone'
--
-- * 'elOAuthToken'
--
-- * 'elShowHiddenInvitations'
--
-- * 'elMaxResults'
--
-- * 'elAlwaysIncludeEmail'
--
-- * 'elTimeMax'
--
-- * 'elFields'
eventsList'
    :: Text -- ^ 'calendarId'
    -> EventsList'
eventsList' pElCalendarId_ =
    EventsList'
    { _elSyncToken = Nothing
    , _elQuotaUser = Nothing
    , _elCalendarId = pElCalendarId_
    , _elPrettyPrint = True
    , _elTimeMin = Nothing
    , _elOrderBy = Nothing
    , _elSingleEvents = Nothing
    , _elPrivateExtendedProperty = Nothing
    , _elUserIP = Nothing
    , _elShowDeleted = Nothing
    , _elQ = Nothing
    , _elSharedExtendedProperty = Nothing
    , _elMaxAttendees = Nothing
    , _elKey = Nothing
    , _elICalUId = Nothing
    , _elUpdatedMin = Nothing
    , _elPageToken = Nothing
    , _elTimeZone = Nothing
    , _elOAuthToken = Nothing
    , _elShowHiddenInvitations = Nothing
    , _elMaxResults = Nothing
    , _elAlwaysIncludeEmail = Nothing
    , _elTimeMax = Nothing
    , _elFields = Nothing
    }

-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. All events
-- deleted since the previous list request will always be in the result set
-- and it is not allowed to set showDeleted to False. There are several
-- query parameters that cannot be specified together with nextSyncToken to
-- ensure consistency of the client state. These are: - iCalUID - orderBy -
-- privateExtendedProperty - q - sharedExtendedProperty - timeMin - timeMax
-- - updatedMin If the syncToken expires, the server will respond with a
-- 410 GONE response code and the client should clear its storage and
-- perform a full synchronization without any syncToken. Learn more about
-- incremental synchronization. Optional. The default is to return all
-- entries.
elSyncToken :: Lens' EventsList' (Maybe Text)
elSyncToken
  = lens _elSyncToken (\ s a -> s{_elSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elQuotaUser :: Lens' EventsList' (Maybe Text)
elQuotaUser
  = lens _elQuotaUser (\ s a -> s{_elQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
elCalendarId :: Lens' EventsList' Text
elCalendarId
  = lens _elCalendarId (\ s a -> s{_elCalendarId = a})

-- | Returns response with indentations and line breaks.
elPrettyPrint :: Lens' EventsList' Bool
elPrettyPrint
  = lens _elPrettyPrint
      (\ s a -> s{_elPrettyPrint = a})

-- | Lower bound (inclusive) for an event\'s end time to filter by. Optional.
-- The default is not to filter by end time. Must be an RFC3339 timestamp
-- with mandatory time zone offset, e.g., 2011-06-03T10:00:00-07:00,
-- 2011-06-03T10:00:00Z. Milliseconds may be provided but will be ignored.
elTimeMin :: Lens' EventsList' (Maybe UTCTime)
elTimeMin
  = lens _elTimeMin (\ s a -> s{_elTimeMin = a})

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
elOrderBy :: Lens' EventsList' (Maybe CalendarEventsListOrderBy)
elOrderBy
  = lens _elOrderBy (\ s a -> s{_elOrderBy = a})

-- | Whether to expand recurring events into instances and only return single
-- one-off events and instances of recurring events, but not the underlying
-- recurring events themselves. Optional. The default is False.
elSingleEvents :: Lens' EventsList' (Maybe Bool)
elSingleEvents
  = lens _elSingleEvents
      (\ s a -> s{_elSingleEvents = a})

-- | Extended properties constraint specified as propertyName=value. Matches
-- only private properties. This parameter might be repeated multiple times
-- to return events that match all given constraints.
elPrivateExtendedProperty :: Lens' EventsList' (Maybe Text)
elPrivateExtendedProperty
  = lens _elPrivateExtendedProperty
      (\ s a -> s{_elPrivateExtendedProperty = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elUserIP :: Lens' EventsList' (Maybe Text)
elUserIP = lens _elUserIP (\ s a -> s{_elUserIP = a})

-- | Whether to include deleted events (with status equals \"cancelled\") in
-- the result. Cancelled instances of recurring events (but not the
-- underlying recurring event) will still be included if showDeleted and
-- singleEvents are both False. If showDeleted and singleEvents are both
-- True, only single instances of deleted events (but not the underlying
-- recurring events) are returned. Optional. The default is False.
elShowDeleted :: Lens' EventsList' (Maybe Bool)
elShowDeleted
  = lens _elShowDeleted
      (\ s a -> s{_elShowDeleted = a})

-- | Free text search terms to find events that match these terms in any
-- field, except for extended properties. Optional.
elQ :: Lens' EventsList' (Maybe Text)
elQ = lens _elQ (\ s a -> s{_elQ = a})

-- | Extended properties constraint specified as propertyName=value. Matches
-- only shared properties. This parameter might be repeated multiple times
-- to return events that match all given constraints.
elSharedExtendedProperty :: Lens' EventsList' (Maybe Text)
elSharedExtendedProperty
  = lens _elSharedExtendedProperty
      (\ s a -> s{_elSharedExtendedProperty = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
elMaxAttendees :: Lens' EventsList' (Maybe Int32)
elMaxAttendees
  = lens _elMaxAttendees
      (\ s a -> s{_elMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elKey :: Lens' EventsList' (Maybe Key)
elKey = lens _elKey (\ s a -> s{_elKey = a})

-- | Specifies event ID in the iCalendar format to be included in the
-- response. Optional.
elICalUId :: Lens' EventsList' (Maybe Text)
elICalUId
  = lens _elICalUId (\ s a -> s{_elICalUId = a})

-- | Lower bound for an event\'s last modification time (as a RFC3339
-- timestamp) to filter by. When specified, entries deleted since this time
-- will always be included regardless of showDeleted. Optional. The default
-- is not to filter by last modification time.
elUpdatedMin :: Lens' EventsList' (Maybe UTCTime)
elUpdatedMin
  = lens _elUpdatedMin (\ s a -> s{_elUpdatedMin = a})

-- | Token specifying which result page to return. Optional.
elPageToken :: Lens' EventsList' (Maybe Text)
elPageToken
  = lens _elPageToken (\ s a -> s{_elPageToken = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
elTimeZone :: Lens' EventsList' (Maybe Text)
elTimeZone
  = lens _elTimeZone (\ s a -> s{_elTimeZone = a})

-- | OAuth 2.0 token for the current user.
elOAuthToken :: Lens' EventsList' (Maybe OAuthToken)
elOAuthToken
  = lens _elOAuthToken (\ s a -> s{_elOAuthToken = a})

-- | Whether to include hidden invitations in the result. Optional. The
-- default is False.
elShowHiddenInvitations :: Lens' EventsList' (Maybe Bool)
elShowHiddenInvitations
  = lens _elShowHiddenInvitations
      (\ s a -> s{_elShowHiddenInvitations = a})

-- | Maximum number of events returned on one result page. By default the
-- value is 250 events. The page size can never be larger than 2500 events.
-- Optional.
elMaxResults :: Lens' EventsList' (Maybe Int32)
elMaxResults
  = lens _elMaxResults (\ s a -> s{_elMaxResults = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
elAlwaysIncludeEmail :: Lens' EventsList' (Maybe Bool)
elAlwaysIncludeEmail
  = lens _elAlwaysIncludeEmail
      (\ s a -> s{_elAlwaysIncludeEmail = a})

-- | Upper bound (exclusive) for an event\'s start time to filter by.
-- Optional. The default is not to filter by start time. Must be an RFC3339
-- timestamp with mandatory time zone offset, e.g.,
-- 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be
-- provided but will be ignored.
elTimeMax :: Lens' EventsList' (Maybe UTCTime)
elTimeMax
  = lens _elTimeMax (\ s a -> s{_elTimeMax = a})

-- | Selector specifying which fields to include in a partial response.
elFields :: Lens' EventsList' (Maybe Text)
elFields = lens _elFields (\ s a -> s{_elFields = a})

instance GoogleAuth EventsList' where
        authKey = elKey . _Just
        authToken = elOAuthToken . _Just

instance GoogleRequest EventsList' where
        type Rs EventsList' = Events
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsList'{..}
          = go _elAlwaysIncludeEmail _elICalUId _elMaxAttendees
              _elMaxResults
              _elOrderBy
              _elPageToken
              _elPrivateExtendedProperty
              _elQ
              _elSharedExtendedProperty
              _elShowDeleted
              _elShowHiddenInvitations
              _elSingleEvents
              _elSyncToken
              _elTimeMax
              _elTimeMin
              _elTimeZone
              _elUpdatedMin
              _elCalendarId
              _elQuotaUser
              (Just _elPrettyPrint)
              _elUserIP
              _elFields
              _elKey
              _elOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsListResource)
                      r
                      u
