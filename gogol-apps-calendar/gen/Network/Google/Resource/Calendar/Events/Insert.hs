{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , eveUserIP
    , evePayload
    , eveMaxAttendees
    , eveKey
    , eveSendNotifications
    , eveOAuthToken
    , eveSupportsAttachments
    , eveFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsInsert@ which the
-- 'EventsInsert'' request conforms to.
type EventsInsertResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           QueryParam "maxAttendees" Int32 :>
             QueryParam "sendNotifications" Bool :>
               QueryParam "supportsAttachments" Bool :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Event :> Post '[JSON] Event

-- | Creates an event.
--
-- /See:/ 'eventsInsert'' smart constructor.
data EventsInsert' = EventsInsert'
    { _eveQuotaUser           :: !(Maybe Text)
    , _eveCalendarId          :: !Text
    , _evePrettyPrint         :: !Bool
    , _eveUserIP              :: !(Maybe Text)
    , _evePayload             :: !Event
    , _eveMaxAttendees        :: !(Maybe Int32)
    , _eveKey                 :: !(Maybe AuthKey)
    , _eveSendNotifications   :: !(Maybe Bool)
    , _eveOAuthToken          :: !(Maybe OAuthToken)
    , _eveSupportsAttachments :: !(Maybe Bool)
    , _eveFields              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'eveUserIP'
--
-- * 'evePayload'
--
-- * 'eveMaxAttendees'
--
-- * 'eveKey'
--
-- * 'eveSendNotifications'
--
-- * 'eveOAuthToken'
--
-- * 'eveSupportsAttachments'
--
-- * 'eveFields'
eventsInsert'
    :: Text -- ^ 'calendarId'
    -> Event -- ^ 'payload'
    -> EventsInsert'
eventsInsert' pEveCalendarId_ pEvePayload_ =
    EventsInsert'
    { _eveQuotaUser = Nothing
    , _eveCalendarId = pEveCalendarId_
    , _evePrettyPrint = True
    , _eveUserIP = Nothing
    , _evePayload = pEvePayload_
    , _eveMaxAttendees = Nothing
    , _eveKey = Nothing
    , _eveSendNotifications = Nothing
    , _eveOAuthToken = Nothing
    , _eveSupportsAttachments = Nothing
    , _eveFields = Nothing
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
eveUserIP :: Lens' EventsInsert' (Maybe Text)
eveUserIP
  = lens _eveUserIP (\ s a -> s{_eveUserIP = a})

-- | Multipart request metadata.
evePayload :: Lens' EventsInsert' Event
evePayload
  = lens _evePayload (\ s a -> s{_evePayload = a})

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
eveKey :: Lens' EventsInsert' (Maybe AuthKey)
eveKey = lens _eveKey (\ s a -> s{_eveKey = a})

-- | Whether to send notifications about the creation of the new event.
-- Optional. The default is False.
eveSendNotifications :: Lens' EventsInsert' (Maybe Bool)
eveSendNotifications
  = lens _eveSendNotifications
      (\ s a -> s{_eveSendNotifications = a})

-- | OAuth 2.0 token for the current user.
eveOAuthToken :: Lens' EventsInsert' (Maybe OAuthToken)
eveOAuthToken
  = lens _eveOAuthToken
      (\ s a -> s{_eveOAuthToken = a})

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

instance GoogleAuth EventsInsert' where
        _AuthKey = eveKey . _Just
        _AuthToken = eveOAuthToken . _Just

instance GoogleRequest EventsInsert' where
        type Rs EventsInsert' = Event
        request = requestWith appsCalendarRequest
        requestWith rq EventsInsert'{..}
          = go _eveCalendarId _eveMaxAttendees
              _eveSendNotifications
              _eveSupportsAttachments
              _eveQuotaUser
              (Just _evePrettyPrint)
              _eveUserIP
              _eveFields
              _eveKey
              _eveOAuthToken
              (Just AltJSON)
              _evePayload
          where go
                  = clientBuild (Proxy :: Proxy EventsInsertResource)
                      rq
