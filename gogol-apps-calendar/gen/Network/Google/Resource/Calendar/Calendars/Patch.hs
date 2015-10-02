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
-- Module      : Network.Google.Resource.Calendar.Calendars.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates metadata for a calendar. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsPatch@.
module Network.Google.Resource.Calendar.Calendars.Patch
    (
    -- * REST Resource
      CalendarsPatchResource

    -- * Creating a Request
    , calendarsPatch'
    , CalendarsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpCalendarId
    , cpPrettyPrint
    , cpUserIP
    , cpKey
    , cpCalendar
    , cpOAuthToken
    , cpFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsPatch@ which the
-- 'CalendarsPatch'' request conforms to.
type CalendarsPatchResource =
     "calendars" :>
       Capture "calendarId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Calendar :> Patch '[JSON] Calendar

-- | Updates metadata for a calendar. This method supports patch semantics.
--
-- /See:/ 'calendarsPatch'' smart constructor.
data CalendarsPatch' = CalendarsPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpCalendarId  :: !Text
    , _cpPrettyPrint :: !Bool
    , _cpUserIP      :: !(Maybe Text)
    , _cpKey         :: !(Maybe Key)
    , _cpCalendar    :: !Calendar
    , _cpOAuthToken  :: !(Maybe OAuthToken)
    , _cpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpCalendarId'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIP'
--
-- * 'cpKey'
--
-- * 'cpCalendar'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
calendarsPatch'
    :: Text -- ^ 'calendarId'
    -> Calendar -- ^ 'Calendar'
    -> CalendarsPatch'
calendarsPatch' pCpCalendarId_ pCpCalendar_ =
    CalendarsPatch'
    { _cpQuotaUser = Nothing
    , _cpCalendarId = pCpCalendarId_
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpKey = Nothing
    , _cpCalendar = pCpCalendar_
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CalendarsPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cpCalendarId :: Lens' CalendarsPatch' Text
cpCalendarId
  = lens _cpCalendarId (\ s a -> s{_cpCalendarId = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CalendarsPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIP :: Lens' CalendarsPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CalendarsPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | Multipart request metadata.
cpCalendar :: Lens' CalendarsPatch' Calendar
cpCalendar
  = lens _cpCalendar (\ s a -> s{_cpCalendar = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CalendarsPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CalendarsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth CalendarsPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest CalendarsPatch' where
        type Rs CalendarsPatch' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsPatch'{..}
          = go _cpQuotaUser _cpCalendarId (Just _cpPrettyPrint)
              _cpUserIP
              _cpKey
              _cpOAuthToken
              _cpFields
              (Just AltJSON)
              _cpCalendar
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarsPatchResource)
                      r
                      u
