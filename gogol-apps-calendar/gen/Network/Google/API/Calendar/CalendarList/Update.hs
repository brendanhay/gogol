{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.CalendarList.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an entry on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.update@.
module Network.Google.API.Calendar.CalendarList.Update
    (
    -- * REST Resource
      CalendarListUpdateAPI

    -- * Creating a Request
    , calendarListUpdate'
    , CalendarListUpdate'

    -- * Request Lenses
    , cluQuotaUser
    , cluCalendarId
    , cluPrettyPrint
    , cluUserIp
    , cluColorRgbFormat
    , cluKey
    , cluOauthToken
    , cluFields
    , cluAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.calendarList.update which the
-- 'CalendarListUpdate'' request conforms to.
type CalendarListUpdateAPI =
     "users" :>
       "me" :>
         "calendarList" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "colorRgbFormat" Bool :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] CalendarListEntry

-- | Updates an entry on the user\'s calendar list.
--
-- /See:/ 'calendarListUpdate'' smart constructor.
data CalendarListUpdate' = CalendarListUpdate'
    { _cluQuotaUser      :: !(Maybe Text)
    , _cluCalendarId     :: !Text
    , _cluPrettyPrint    :: !Bool
    , _cluUserIp         :: !(Maybe Text)
    , _cluColorRgbFormat :: !(Maybe Bool)
    , _cluKey            :: !(Maybe Text)
    , _cluOauthToken     :: !(Maybe Text)
    , _cluFields         :: !(Maybe Text)
    , _cluAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cluQuotaUser'
--
-- * 'cluCalendarId'
--
-- * 'cluPrettyPrint'
--
-- * 'cluUserIp'
--
-- * 'cluColorRgbFormat'
--
-- * 'cluKey'
--
-- * 'cluOauthToken'
--
-- * 'cluFields'
--
-- * 'cluAlt'
calendarListUpdate'
    :: Text -- ^ 'calendarId'
    -> CalendarListUpdate'
calendarListUpdate' pCluCalendarId_ =
    CalendarListUpdate'
    { _cluQuotaUser = Nothing
    , _cluCalendarId = pCluCalendarId_
    , _cluPrettyPrint = True
    , _cluUserIp = Nothing
    , _cluColorRgbFormat = Nothing
    , _cluKey = Nothing
    , _cluOauthToken = Nothing
    , _cluFields = Nothing
    , _cluAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cluQuotaUser :: Lens' CalendarListUpdate' (Maybe Text)
cluQuotaUser
  = lens _cluQuotaUser (\ s a -> s{_cluQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cluCalendarId :: Lens' CalendarListUpdate' Text
cluCalendarId
  = lens _cluCalendarId
      (\ s a -> s{_cluCalendarId = a})

-- | Returns response with indentations and line breaks.
cluPrettyPrint :: Lens' CalendarListUpdate' Bool
cluPrettyPrint
  = lens _cluPrettyPrint
      (\ s a -> s{_cluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cluUserIp :: Lens' CalendarListUpdate' (Maybe Text)
cluUserIp
  = lens _cluUserIp (\ s a -> s{_cluUserIp = a})

-- | Whether to use the foregroundColor and backgroundColor fields to write
-- the calendar colors (RGB). If this feature is used, the index-based
-- colorId field will be set to the best matching option automatically.
-- Optional. The default is False.
cluColorRgbFormat :: Lens' CalendarListUpdate' (Maybe Bool)
cluColorRgbFormat
  = lens _cluColorRgbFormat
      (\ s a -> s{_cluColorRgbFormat = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cluKey :: Lens' CalendarListUpdate' (Maybe Text)
cluKey = lens _cluKey (\ s a -> s{_cluKey = a})

-- | OAuth 2.0 token for the current user.
cluOauthToken :: Lens' CalendarListUpdate' (Maybe Text)
cluOauthToken
  = lens _cluOauthToken
      (\ s a -> s{_cluOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cluFields :: Lens' CalendarListUpdate' (Maybe Text)
cluFields
  = lens _cluFields (\ s a -> s{_cluFields = a})

-- | Data format for the response.
cluAlt :: Lens' CalendarListUpdate' Alt
cluAlt = lens _cluAlt (\ s a -> s{_cluAlt = a})

instance GoogleRequest CalendarListUpdate' where
        type Rs CalendarListUpdate' = CalendarListEntry
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListUpdate'{..}
          = go _cluQuotaUser _cluCalendarId
              (Just _cluPrettyPrint)
              _cluUserIp
              _cluColorRgbFormat
              _cluKey
              _cluOauthToken
              _cluFields
              (Just _cluAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarListUpdateAPI)
                      r
                      u
