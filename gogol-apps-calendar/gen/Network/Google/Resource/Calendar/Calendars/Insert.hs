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
    , ciUserIp
    , ciKey
    , ciOauthToken
    , ciFields
    , ciAlt
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
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] Calendar

-- | Creates a secondary calendar.
--
-- /See:/ 'calendarsInsert'' smart constructor.
data CalendarsInsert' = CalendarsInsert'
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIp      :: !(Maybe Text)
    , _ciKey         :: !(Maybe Text)
    , _ciOauthToken  :: !(Maybe Text)
    , _ciFields      :: !(Maybe Text)
    , _ciAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIp'
--
-- * 'ciKey'
--
-- * 'ciOauthToken'
--
-- * 'ciFields'
--
-- * 'ciAlt'
calendarsInsert'
    :: CalendarsInsert'
calendarsInsert' =
    CalendarsInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIp = Nothing
    , _ciKey = Nothing
    , _ciOauthToken = Nothing
    , _ciFields = Nothing
    , _ciAlt = JSON
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
ciUserIp :: Lens' CalendarsInsert' (Maybe Text)
ciUserIp = lens _ciUserIp (\ s a -> s{_ciUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CalendarsInsert' (Maybe Text)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOauthToken :: Lens' CalendarsInsert' (Maybe Text)
ciOauthToken
  = lens _ciOauthToken (\ s a -> s{_ciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CalendarsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

-- | Data format for the response.
ciAlt :: Lens' CalendarsInsert' Alt
ciAlt = lens _ciAlt (\ s a -> s{_ciAlt = a})

instance GoogleRequest CalendarsInsert' where
        type Rs CalendarsInsert' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsInsert'{..}
          = go _ciQuotaUser (Just _ciPrettyPrint) _ciUserIp
              _ciKey
              _ciOauthToken
              _ciFields
              (Just _ciAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarsInsertResource)
                      r
                      u
