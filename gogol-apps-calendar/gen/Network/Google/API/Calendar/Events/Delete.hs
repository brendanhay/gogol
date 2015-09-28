{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Events.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.delete@.
module Network.Google.API.Calendar.Events.Delete
    (
    -- * REST Resource
      EventsDeleteAPI

    -- * Creating a Request
    , eventsDelete'
    , EventsDelete'

    -- * Request Lenses
    , edQuotaUser
    , edCalendarId
    , edPrettyPrint
    , edUserIp
    , edKey
    , edSendNotifications
    , edOauthToken
    , edEventId
    , edFields
    , edAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.events.delete which the
-- 'EventsDelete'' request conforms to.
type EventsDeleteAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "sendNotifications" Bool :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an event.
--
-- /See:/ 'eventsDelete'' smart constructor.
data EventsDelete' = EventsDelete'
    { _edQuotaUser         :: !(Maybe Text)
    , _edCalendarId        :: !Text
    , _edPrettyPrint       :: !Bool
    , _edUserIp            :: !(Maybe Text)
    , _edKey               :: !(Maybe Text)
    , _edSendNotifications :: !(Maybe Bool)
    , _edOauthToken        :: !(Maybe Text)
    , _edEventId           :: !Text
    , _edFields            :: !(Maybe Text)
    , _edAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edQuotaUser'
--
-- * 'edCalendarId'
--
-- * 'edPrettyPrint'
--
-- * 'edUserIp'
--
-- * 'edKey'
--
-- * 'edSendNotifications'
--
-- * 'edOauthToken'
--
-- * 'edEventId'
--
-- * 'edFields'
--
-- * 'edAlt'
eventsDelete'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsDelete'
eventsDelete' pEdCalendarId_ pEdEventId_ =
    EventsDelete'
    { _edQuotaUser = Nothing
    , _edCalendarId = pEdCalendarId_
    , _edPrettyPrint = True
    , _edUserIp = Nothing
    , _edKey = Nothing
    , _edSendNotifications = Nothing
    , _edOauthToken = Nothing
    , _edEventId = pEdEventId_
    , _edFields = Nothing
    , _edAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
edQuotaUser :: Lens' EventsDelete' (Maybe Text)
edQuotaUser
  = lens _edQuotaUser (\ s a -> s{_edQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
edCalendarId :: Lens' EventsDelete' Text
edCalendarId
  = lens _edCalendarId (\ s a -> s{_edCalendarId = a})

-- | Returns response with indentations and line breaks.
edPrettyPrint :: Lens' EventsDelete' Bool
edPrettyPrint
  = lens _edPrettyPrint
      (\ s a -> s{_edPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
edUserIp :: Lens' EventsDelete' (Maybe Text)
edUserIp = lens _edUserIp (\ s a -> s{_edUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edKey :: Lens' EventsDelete' (Maybe Text)
edKey = lens _edKey (\ s a -> s{_edKey = a})

-- | Whether to send notifications about the deletion of the event. Optional.
-- The default is False.
edSendNotifications :: Lens' EventsDelete' (Maybe Bool)
edSendNotifications
  = lens _edSendNotifications
      (\ s a -> s{_edSendNotifications = a})

-- | OAuth 2.0 token for the current user.
edOauthToken :: Lens' EventsDelete' (Maybe Text)
edOauthToken
  = lens _edOauthToken (\ s a -> s{_edOauthToken = a})

-- | Event identifier.
edEventId :: Lens' EventsDelete' Text
edEventId
  = lens _edEventId (\ s a -> s{_edEventId = a})

-- | Selector specifying which fields to include in a partial response.
edFields :: Lens' EventsDelete' (Maybe Text)
edFields = lens _edFields (\ s a -> s{_edFields = a})

-- | Data format for the response.
edAlt :: Lens' EventsDelete' Alt
edAlt = lens _edAlt (\ s a -> s{_edAlt = a})

instance GoogleRequest EventsDelete' where
        type Rs EventsDelete' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsDelete'{..}
          = go _edQuotaUser _edCalendarId (Just _edPrettyPrint)
              _edUserIp
              _edKey
              _edSendNotifications
              _edOauthToken
              _edEventId
              _edFields
              (Just _edAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsDeleteAPI) r
                      u
