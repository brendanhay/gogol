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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds an entry to the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListInsert@.
module Network.Google.Resource.Calendar.CalendarList.Insert
    (
    -- * REST Resource
      CalendarListInsertResource

    -- * Creating a Request
    , calendarListInsert'
    , CalendarListInsert'

    -- * Request Lenses
    , cliQuotaUser
    , cliPrettyPrint
    , cliUserIp
    , cliColorRgbFormat
    , cliKey
    , cliOauthToken
    , cliFields
    , cliAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListInsert@ which the
-- 'CalendarListInsert'' request conforms to.
type CalendarListInsertResource =
     "users" :>
       "me" :>
         "calendarList" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "colorRgbFormat" Bool :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] CalendarListEntry

-- | Adds an entry to the user\'s calendar list.
--
-- /See:/ 'calendarListInsert'' smart constructor.
data CalendarListInsert' = CalendarListInsert'
    { _cliQuotaUser      :: !(Maybe Text)
    , _cliPrettyPrint    :: !Bool
    , _cliUserIp         :: !(Maybe Text)
    , _cliColorRgbFormat :: !(Maybe Bool)
    , _cliKey            :: !(Maybe Text)
    , _cliOauthToken     :: !(Maybe Text)
    , _cliFields         :: !(Maybe Text)
    , _cliAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cliQuotaUser'
--
-- * 'cliPrettyPrint'
--
-- * 'cliUserIp'
--
-- * 'cliColorRgbFormat'
--
-- * 'cliKey'
--
-- * 'cliOauthToken'
--
-- * 'cliFields'
--
-- * 'cliAlt'
calendarListInsert'
    :: CalendarListInsert'
calendarListInsert' =
    CalendarListInsert'
    { _cliQuotaUser = Nothing
    , _cliPrettyPrint = True
    , _cliUserIp = Nothing
    , _cliColorRgbFormat = Nothing
    , _cliKey = Nothing
    , _cliOauthToken = Nothing
    , _cliFields = Nothing
    , _cliAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cliQuotaUser :: Lens' CalendarListInsert' (Maybe Text)
cliQuotaUser
  = lens _cliQuotaUser (\ s a -> s{_cliQuotaUser = a})

-- | Returns response with indentations and line breaks.
cliPrettyPrint :: Lens' CalendarListInsert' Bool
cliPrettyPrint
  = lens _cliPrettyPrint
      (\ s a -> s{_cliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cliUserIp :: Lens' CalendarListInsert' (Maybe Text)
cliUserIp
  = lens _cliUserIp (\ s a -> s{_cliUserIp = a})

-- | Whether to use the foregroundColor and backgroundColor fields to write
-- the calendar colors (RGB). If this feature is used, the index-based
-- colorId field will be set to the best matching option automatically.
-- Optional. The default is False.
cliColorRgbFormat :: Lens' CalendarListInsert' (Maybe Bool)
cliColorRgbFormat
  = lens _cliColorRgbFormat
      (\ s a -> s{_cliColorRgbFormat = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cliKey :: Lens' CalendarListInsert' (Maybe Text)
cliKey = lens _cliKey (\ s a -> s{_cliKey = a})

-- | OAuth 2.0 token for the current user.
cliOauthToken :: Lens' CalendarListInsert' (Maybe Text)
cliOauthToken
  = lens _cliOauthToken
      (\ s a -> s{_cliOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cliFields :: Lens' CalendarListInsert' (Maybe Text)
cliFields
  = lens _cliFields (\ s a -> s{_cliFields = a})

-- | Data format for the response.
cliAlt :: Lens' CalendarListInsert' Alt
cliAlt = lens _cliAlt (\ s a -> s{_cliAlt = a})

instance GoogleRequest CalendarListInsert' where
        type Rs CalendarListInsert' = CalendarListEntry
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListInsert'{..}
          = go _cliQuotaUser (Just _cliPrettyPrint) _cliUserIp
              _cliColorRgbFormat
              _cliKey
              _cliOauthToken
              _cliFields
              (Just _cliAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarListInsertResource)
                      r
                      u
