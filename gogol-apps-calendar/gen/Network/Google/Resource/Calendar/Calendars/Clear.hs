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
-- Module      : Network.Google.Resource.Calendar.Calendars.Clear
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Clears a primary calendar. This operation deletes all events associated
-- with the primary calendar of an account.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsClear@.
module Network.Google.Resource.Calendar.Calendars.Clear
    (
    -- * REST Resource
      CalendarsClearResource

    -- * Creating a Request
    , calendarsClear'
    , CalendarsClear'

    -- * Request Lenses
    , ccQuotaUser
    , ccCalendarId
    , ccPrettyPrint
    , ccUserIp
    , ccKey
    , ccOauthToken
    , ccFields
    , ccAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsClear@ which the
-- 'CalendarsClear'' request conforms to.
type CalendarsClearResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "clear" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Clears a primary calendar. This operation deletes all events associated
-- with the primary calendar of an account.
--
-- /See:/ 'calendarsClear'' smart constructor.
data CalendarsClear' = CalendarsClear'
    { _ccQuotaUser   :: !(Maybe Text)
    , _ccCalendarId  :: !Text
    , _ccPrettyPrint :: !Bool
    , _ccUserIp      :: !(Maybe Text)
    , _ccKey         :: !(Maybe Text)
    , _ccOauthToken  :: !(Maybe Text)
    , _ccFields      :: !(Maybe Text)
    , _ccAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsClear'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccQuotaUser'
--
-- * 'ccCalendarId'
--
-- * 'ccPrettyPrint'
--
-- * 'ccUserIp'
--
-- * 'ccKey'
--
-- * 'ccOauthToken'
--
-- * 'ccFields'
--
-- * 'ccAlt'
calendarsClear'
    :: Text -- ^ 'calendarId'
    -> CalendarsClear'
calendarsClear' pCcCalendarId_ =
    CalendarsClear'
    { _ccQuotaUser = Nothing
    , _ccCalendarId = pCcCalendarId_
    , _ccPrettyPrint = True
    , _ccUserIp = Nothing
    , _ccKey = Nothing
    , _ccOauthToken = Nothing
    , _ccFields = Nothing
    , _ccAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccQuotaUser :: Lens' CalendarsClear' (Maybe Text)
ccQuotaUser
  = lens _ccQuotaUser (\ s a -> s{_ccQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
ccCalendarId :: Lens' CalendarsClear' Text
ccCalendarId
  = lens _ccCalendarId (\ s a -> s{_ccCalendarId = a})

-- | Returns response with indentations and line breaks.
ccPrettyPrint :: Lens' CalendarsClear' Bool
ccPrettyPrint
  = lens _ccPrettyPrint
      (\ s a -> s{_ccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccUserIp :: Lens' CalendarsClear' (Maybe Text)
ccUserIp = lens _ccUserIp (\ s a -> s{_ccUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccKey :: Lens' CalendarsClear' (Maybe Text)
ccKey = lens _ccKey (\ s a -> s{_ccKey = a})

-- | OAuth 2.0 token for the current user.
ccOauthToken :: Lens' CalendarsClear' (Maybe Text)
ccOauthToken
  = lens _ccOauthToken (\ s a -> s{_ccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccFields :: Lens' CalendarsClear' (Maybe Text)
ccFields = lens _ccFields (\ s a -> s{_ccFields = a})

-- | Data format for the response.
ccAlt :: Lens' CalendarsClear' Alt
ccAlt = lens _ccAlt (\ s a -> s{_ccAlt = a})

instance GoogleRequest CalendarsClear' where
        type Rs CalendarsClear' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsClear'{..}
          = go _ccQuotaUser _ccCalendarId (Just _ccPrettyPrint)
              _ccUserIp
              _ccKey
              _ccOauthToken
              _ccFields
              (Just _ccAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarsClearResource)
                      r
                      u
