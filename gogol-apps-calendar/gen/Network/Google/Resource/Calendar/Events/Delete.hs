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
-- Module      : Network.Google.Resource.Calendar.Events.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsDelete@.
module Network.Google.Resource.Calendar.Events.Delete
    (
    -- * REST Resource
      EventsDeleteResource

    -- * Creating a Request
    , eventsDelete'
    , EventsDelete'

    -- * Request Lenses
    , edQuotaUser
    , edCalendarId
    , edPrettyPrint
    , edUserIP
    , edKey
    , edSendNotifications
    , edOAuthToken
    , edEventId
    , edFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsDelete@ which the
-- 'EventsDelete'' request conforms to.
type EventsDeleteResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "sendNotifications" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an event.
--
-- /See:/ 'eventsDelete'' smart constructor.
data EventsDelete' = EventsDelete'
    { _edQuotaUser         :: !(Maybe Text)
    , _edCalendarId        :: !Text
    , _edPrettyPrint       :: !Bool
    , _edUserIP            :: !(Maybe Text)
    , _edKey               :: !(Maybe AuthKey)
    , _edSendNotifications :: !(Maybe Bool)
    , _edOAuthToken        :: !(Maybe OAuthToken)
    , _edEventId           :: !Text
    , _edFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'edUserIP'
--
-- * 'edKey'
--
-- * 'edSendNotifications'
--
-- * 'edOAuthToken'
--
-- * 'edEventId'
--
-- * 'edFields'
eventsDelete'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsDelete'
eventsDelete' pEdCalendarId_ pEdEventId_ =
    EventsDelete'
    { _edQuotaUser = Nothing
    , _edCalendarId = pEdCalendarId_
    , _edPrettyPrint = True
    , _edUserIP = Nothing
    , _edKey = Nothing
    , _edSendNotifications = Nothing
    , _edOAuthToken = Nothing
    , _edEventId = pEdEventId_
    , _edFields = Nothing
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
edUserIP :: Lens' EventsDelete' (Maybe Text)
edUserIP = lens _edUserIP (\ s a -> s{_edUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edKey :: Lens' EventsDelete' (Maybe AuthKey)
edKey = lens _edKey (\ s a -> s{_edKey = a})

-- | Whether to send notifications about the deletion of the event. Optional.
-- The default is False.
edSendNotifications :: Lens' EventsDelete' (Maybe Bool)
edSendNotifications
  = lens _edSendNotifications
      (\ s a -> s{_edSendNotifications = a})

-- | OAuth 2.0 token for the current user.
edOAuthToken :: Lens' EventsDelete' (Maybe OAuthToken)
edOAuthToken
  = lens _edOAuthToken (\ s a -> s{_edOAuthToken = a})

-- | Event identifier.
edEventId :: Lens' EventsDelete' Text
edEventId
  = lens _edEventId (\ s a -> s{_edEventId = a})

-- | Selector specifying which fields to include in a partial response.
edFields :: Lens' EventsDelete' (Maybe Text)
edFields = lens _edFields (\ s a -> s{_edFields = a})

instance GoogleAuth EventsDelete' where
        _AuthKey = edKey . _Just
        _AuthToken = edOAuthToken . _Just

instance GoogleRequest EventsDelete' where
        type Rs EventsDelete' = ()
        request = requestWith appsCalendarRequest
        requestWith rq EventsDelete'{..}
          = go _edCalendarId _edEventId _edSendNotifications
              _edQuotaUser
              (Just _edPrettyPrint)
              _edUserIP
              _edFields
              _edKey
              _edOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy EventsDeleteResource)
                      rq
