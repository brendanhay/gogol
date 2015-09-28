{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Events.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.insert@.
module Network.Google.API.Calendar.Events.Insert
    (
    -- * REST Resource
      EventsInsertAPI

    -- * Creating a Request
    , eventsInsert'
    , EventsInsert'

    -- * Request Lenses
    , eiQuotaUser
    , eiCalendarId
    , eiPrettyPrint
    , eiUserIp
    , eiMaxAttendees
    , eiKey
    , eiSendNotifications
    , eiOauthToken
    , eiSupportsAttachments
    , eiFields
    , eiAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.events.insert which the
-- 'EventsInsert'' request conforms to.
type EventsInsertAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "maxAttendees" Nat :>
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
    { _eiQuotaUser           :: !(Maybe Text)
    , _eiCalendarId          :: !Text
    , _eiPrettyPrint         :: !Bool
    , _eiUserIp              :: !(Maybe Text)
    , _eiMaxAttendees        :: !(Maybe Nat)
    , _eiKey                 :: !(Maybe Text)
    , _eiSendNotifications   :: !(Maybe Bool)
    , _eiOauthToken          :: !(Maybe Text)
    , _eiSupportsAttachments :: !(Maybe Bool)
    , _eiFields              :: !(Maybe Text)
    , _eiAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiQuotaUser'
--
-- * 'eiCalendarId'
--
-- * 'eiPrettyPrint'
--
-- * 'eiUserIp'
--
-- * 'eiMaxAttendees'
--
-- * 'eiKey'
--
-- * 'eiSendNotifications'
--
-- * 'eiOauthToken'
--
-- * 'eiSupportsAttachments'
--
-- * 'eiFields'
--
-- * 'eiAlt'
eventsInsert'
    :: Text -- ^ 'calendarId'
    -> EventsInsert'
eventsInsert' pEiCalendarId_ =
    EventsInsert'
    { _eiQuotaUser = Nothing
    , _eiCalendarId = pEiCalendarId_
    , _eiPrettyPrint = True
    , _eiUserIp = Nothing
    , _eiMaxAttendees = Nothing
    , _eiKey = Nothing
    , _eiSendNotifications = Nothing
    , _eiOauthToken = Nothing
    , _eiSupportsAttachments = Nothing
    , _eiFields = Nothing
    , _eiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eiQuotaUser :: Lens' EventsInsert' (Maybe Text)
eiQuotaUser
  = lens _eiQuotaUser (\ s a -> s{_eiQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eiCalendarId :: Lens' EventsInsert' Text
eiCalendarId
  = lens _eiCalendarId (\ s a -> s{_eiCalendarId = a})

-- | Returns response with indentations and line breaks.
eiPrettyPrint :: Lens' EventsInsert' Bool
eiPrettyPrint
  = lens _eiPrettyPrint
      (\ s a -> s{_eiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eiUserIp :: Lens' EventsInsert' (Maybe Text)
eiUserIp = lens _eiUserIp (\ s a -> s{_eiUserIp = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
eiMaxAttendees :: Lens' EventsInsert' (Maybe Natural)
eiMaxAttendees
  = lens _eiMaxAttendees
      (\ s a -> s{_eiMaxAttendees = a})
      . mapping _Nat

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eiKey :: Lens' EventsInsert' (Maybe Text)
eiKey = lens _eiKey (\ s a -> s{_eiKey = a})

-- | Whether to send notifications about the creation of the new event.
-- Optional. The default is False.
eiSendNotifications :: Lens' EventsInsert' (Maybe Bool)
eiSendNotifications
  = lens _eiSendNotifications
      (\ s a -> s{_eiSendNotifications = a})

-- | OAuth 2.0 token for the current user.
eiOauthToken :: Lens' EventsInsert' (Maybe Text)
eiOauthToken
  = lens _eiOauthToken (\ s a -> s{_eiOauthToken = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
eiSupportsAttachments :: Lens' EventsInsert' (Maybe Bool)
eiSupportsAttachments
  = lens _eiSupportsAttachments
      (\ s a -> s{_eiSupportsAttachments = a})

-- | Selector specifying which fields to include in a partial response.
eiFields :: Lens' EventsInsert' (Maybe Text)
eiFields = lens _eiFields (\ s a -> s{_eiFields = a})

-- | Data format for the response.
eiAlt :: Lens' EventsInsert' Alt
eiAlt = lens _eiAlt (\ s a -> s{_eiAlt = a})

instance GoogleRequest EventsInsert' where
        type Rs EventsInsert' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsInsert'{..}
          = go _eiQuotaUser _eiCalendarId (Just _eiPrettyPrint)
              _eiUserIp
              _eiMaxAttendees
              _eiKey
              _eiSendNotifications
              _eiOauthToken
              _eiSupportsAttachments
              _eiFields
              (Just _eiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsInsertAPI) r
                      u
