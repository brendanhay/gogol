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
-- Module      : Network.Google.Resource.Calendar.Events.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsInsert@.
module Network.Google.Resource.Calendar.Events.Insert
    (
    -- * REST Resource
      EventsInsertResource

    -- * Creating a Request
    , eventsInsert'
    , EventsInsert'

    -- * Request Lenses
    , eveQuotaUser
    , eveCalendarId
    , evePrettyPrint
    , eveUserIp
    , eveMaxAttendees
    , eveKey
    , eveSendNotifications
    , eveOauthToken
    , eveSupportsAttachments
    , eveFields
    , eveAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsInsert@ which the
-- 'EventsInsert'' request conforms to.
type EventsInsertResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "maxAttendees" Int32 :>
                   QueryParam "key" Text :>
                     QueryParam "sendNotifications" Bool :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "supportsAttachments" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Event

-- | Creates an event.
--
-- /See:/ 'eventsInsert'' smart constructor.
data EventsInsert' = EventsInsert'
    { _eveQuotaUser           :: !(Maybe Text)
    , _eveCalendarId          :: !Text
    , _evePrettyPrint         :: !Bool
    , _eveUserIp              :: !(Maybe Text)
    , _eveMaxAttendees        :: !(Maybe Int32)
    , _eveKey                 :: !(Maybe Text)
    , _eveSendNotifications   :: !(Maybe Bool)
    , _eveOauthToken          :: !(Maybe Text)
    , _eveSupportsAttachments :: !(Maybe Bool)
    , _eveFields              :: !(Maybe Text)
    , _eveAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eveQuotaUser'
--
-- * 'eveCalendarId'
--
-- * 'evePrettyPrint'
--
-- * 'eveUserIp'
--
-- * 'eveMaxAttendees'
--
-- * 'eveKey'
--
-- * 'eveSendNotifications'
--
-- * 'eveOauthToken'
--
-- * 'eveSupportsAttachments'
--
-- * 'eveFields'
--
-- * 'eveAlt'
eventsInsert'
    :: Text -- ^ 'calendarId'
    -> EventsInsert'
eventsInsert' pEveCalendarId_ =
    EventsInsert'
    { _eveQuotaUser = Nothing
    , _eveCalendarId = pEveCalendarId_
    , _evePrettyPrint = True
    , _eveUserIp = Nothing
    , _eveMaxAttendees = Nothing
    , _eveKey = Nothing
    , _eveSendNotifications = Nothing
    , _eveOauthToken = Nothing
    , _eveSupportsAttachments = Nothing
    , _eveFields = Nothing
    , _eveAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eveQuotaUser :: Lens' EventsInsert' (Maybe Text)
eveQuotaUser
  = lens _eveQuotaUser (\ s a -> s{_eveQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eveCalendarId :: Lens' EventsInsert' Text
eveCalendarId
  = lens _eveCalendarId
      (\ s a -> s{_eveCalendarId = a})

-- | Returns response with indentations and line breaks.
evePrettyPrint :: Lens' EventsInsert' Bool
evePrettyPrint
  = lens _evePrettyPrint
      (\ s a -> s{_evePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eveUserIp :: Lens' EventsInsert' (Maybe Text)
eveUserIp
  = lens _eveUserIp (\ s a -> s{_eveUserIp = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
eveMaxAttendees :: Lens' EventsInsert' (Maybe Int32)
eveMaxAttendees
  = lens _eveMaxAttendees
      (\ s a -> s{_eveMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eveKey :: Lens' EventsInsert' (Maybe Text)
eveKey = lens _eveKey (\ s a -> s{_eveKey = a})

-- | Whether to send notifications about the creation of the new event.
-- Optional. The default is False.
eveSendNotifications :: Lens' EventsInsert' (Maybe Bool)
eveSendNotifications
  = lens _eveSendNotifications
      (\ s a -> s{_eveSendNotifications = a})

-- | OAuth 2.0 token for the current user.
eveOauthToken :: Lens' EventsInsert' (Maybe Text)
eveOauthToken
  = lens _eveOauthToken
      (\ s a -> s{_eveOauthToken = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
eveSupportsAttachments :: Lens' EventsInsert' (Maybe Bool)
eveSupportsAttachments
  = lens _eveSupportsAttachments
      (\ s a -> s{_eveSupportsAttachments = a})

-- | Selector specifying which fields to include in a partial response.
eveFields :: Lens' EventsInsert' (Maybe Text)
eveFields
  = lens _eveFields (\ s a -> s{_eveFields = a})

-- | Data format for the response.
eveAlt :: Lens' EventsInsert' Alt
eveAlt = lens _eveAlt (\ s a -> s{_eveAlt = a})

instance GoogleRequest EventsInsert' where
        type Rs EventsInsert' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsInsert'{..}
          = go _eveQuotaUser _eveCalendarId
              (Just _evePrettyPrint)
              _eveUserIp
              _eveMaxAttendees
              _eveKey
              _eveSendNotifications
              _eveOauthToken
              _eveSupportsAttachments
              _eveFields
              (Just _eveAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsInsertResource)
                      r
                      u
