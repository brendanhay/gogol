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
    , cpUserIp
    , cpKey
    , cpOauthToken
    , cpFields
    , cpAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] Calendar

-- | Updates metadata for a calendar. This method supports patch semantics.
--
-- /See:/ 'calendarsPatch'' smart constructor.
data CalendarsPatch' = CalendarsPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpCalendarId  :: !Text
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpKey         :: !(Maybe Text)
    , _cpOauthToken  :: !(Maybe Text)
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Alt
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
-- * 'cpUserIp'
--
-- * 'cpKey'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
calendarsPatch'
    :: Text -- ^ 'calendarId'
    -> CalendarsPatch'
calendarsPatch' pCpCalendarId_ =
    CalendarsPatch'
    { _cpQuotaUser = Nothing
    , _cpCalendarId = pCpCalendarId_
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpKey = Nothing
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = JSON
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
cpUserIp :: Lens' CalendarsPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CalendarsPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CalendarsPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CalendarsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CalendarsPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CalendarsPatch' where
        type Rs CalendarsPatch' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsPatch'{..}
          = go _cpQuotaUser _cpCalendarId (Just _cpPrettyPrint)
              _cpUserIp
              _cpKey
              _cpOauthToken
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarsPatchResource)
                      r
                      u
