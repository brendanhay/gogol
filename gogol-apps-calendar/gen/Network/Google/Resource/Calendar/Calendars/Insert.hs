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
-- Module      : Network.Google.Resource.Calendar.Calendars.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a secondary calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsInsert@.
module Network.Google.Resource.Calendar.Calendars.Insert
    (
    -- * REST Resource
      CalendarsInsertResource

    -- * Creating a Request
    , calendarsInsert'
    , CalendarsInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIP
    , ciKey
    , ciCalendar
    , ciOAuthToken
    , ciFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsInsert@ which the
-- 'CalendarsInsert'' request conforms to.
type CalendarsInsertResource =
     "calendars" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Calendar :> Post '[JSON] Calendar

-- | Creates a secondary calendar.
--
-- /See:/ 'calendarsInsert'' smart constructor.
data CalendarsInsert' = CalendarsInsert'
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIP      :: !(Maybe Text)
    , _ciKey         :: !(Maybe Key)
    , _ciCalendar    :: !Calendar
    , _ciOAuthToken  :: !(Maybe OAuthToken)
    , _ciFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIP'
--
-- * 'ciKey'
--
-- * 'ciCalendar'
--
-- * 'ciOAuthToken'
--
-- * 'ciFields'
calendarsInsert'
    :: Calendar -- ^ 'Calendar'
    -> CalendarsInsert'
calendarsInsert' pCiCalendar_ =
    CalendarsInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIP = Nothing
    , _ciKey = Nothing
    , _ciCalendar = pCiCalendar_
    , _ciOAuthToken = Nothing
    , _ciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CalendarsInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CalendarsInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIP :: Lens' CalendarsInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CalendarsInsert' (Maybe Key)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | Multipart request metadata.
ciCalendar :: Lens' CalendarsInsert' Calendar
ciCalendar
  = lens _ciCalendar (\ s a -> s{_ciCalendar = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' CalendarsInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CalendarsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth CalendarsInsert' where
        authKey = ciKey . _Just
        authToken = ciOAuthToken . _Just

instance GoogleRequest CalendarsInsert' where
        type Rs CalendarsInsert' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsInsert'{..}
          = go _ciQuotaUser (Just _ciPrettyPrint) _ciUserIP
              _ciKey
              _ciOAuthToken
              _ciFields
              (Just AltJSON)
              _ciCalendar
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarsInsertResource)
                      r
                      u
