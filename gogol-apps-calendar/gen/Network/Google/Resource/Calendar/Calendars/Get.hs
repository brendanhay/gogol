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
-- Module      : Network.Google.Resource.Calendar.Calendars.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns metadata for a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsGet@.
module Network.Google.Resource.Calendar.Calendars.Get
    (
    -- * REST Resource
      CalendarsGetResource

    -- * Creating a Request
    , calendarsGet'
    , CalendarsGet'

    -- * Request Lenses
    , cQuotaUser
    , cCalendarId
    , cPrettyPrint
    , cUserIP
    , cKey
    , cOAuthToken
    , cFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsGet@ which the
-- 'CalendarsGet'' request conforms to.
type CalendarsGetResource =
     "calendars" :>
       Capture "calendarId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Calendar

-- | Returns metadata for a calendar.
--
-- /See:/ 'calendarsGet'' smart constructor.
data CalendarsGet' = CalendarsGet'
    { _cQuotaUser   :: !(Maybe Text)
    , _cCalendarId  :: !Text
    , _cPrettyPrint :: !Bool
    , _cUserIP      :: !(Maybe Text)
    , _cKey         :: !(Maybe Key)
    , _cOAuthToken  :: !(Maybe OAuthToken)
    , _cFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cCalendarId'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIP'
--
-- * 'cKey'
--
-- * 'cOAuthToken'
--
-- * 'cFields'
calendarsGet'
    :: Text -- ^ 'calendarId'
    -> CalendarsGet'
calendarsGet' pCCalendarId_ =
    CalendarsGet'
    { _cQuotaUser = Nothing
    , _cCalendarId = pCCalendarId_
    , _cPrettyPrint = True
    , _cUserIP = Nothing
    , _cKey = Nothing
    , _cOAuthToken = Nothing
    , _cFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CalendarsGet' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cCalendarId :: Lens' CalendarsGet' Text
cCalendarId
  = lens _cCalendarId (\ s a -> s{_cCalendarId = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CalendarsGet' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIP :: Lens' CalendarsGet' (Maybe Text)
cUserIP = lens _cUserIP (\ s a -> s{_cUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CalendarsGet' (Maybe Key)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOAuthToken :: Lens' CalendarsGet' (Maybe OAuthToken)
cOAuthToken
  = lens _cOAuthToken (\ s a -> s{_cOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CalendarsGet' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

instance GoogleAuth CalendarsGet' where
        authKey = cKey . _Just
        authToken = cOAuthToken . _Just

instance GoogleRequest CalendarsGet' where
        type Rs CalendarsGet' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsGet'{..}
          = go _cQuotaUser _cCalendarId (Just _cPrettyPrint)
              _cUserIP
              _cKey
              _cOAuthToken
              _cFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarsGetResource)
                      r
                      u
