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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an entry on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListDelete@.
module Network.Google.Resource.Calendar.CalendarList.Delete
    (
    -- * REST Resource
      CalendarListDeleteResource

    -- * Creating a Request
    , calendarListDelete'
    , CalendarListDelete'

    -- * Request Lenses
    , cldQuotaUser
    , cldCalendarId
    , cldPrettyPrint
    , cldUserIp
    , cldKey
    , cldOauthToken
    , cldFields
    , cldAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListDelete@ which the
-- 'CalendarListDelete'' request conforms to.
type CalendarListDeleteResource =
     "users" :>
       "me" :>
         "calendarList" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an entry on the user\'s calendar list.
--
-- /See:/ 'calendarListDelete'' smart constructor.
data CalendarListDelete' = CalendarListDelete'
    { _cldQuotaUser   :: !(Maybe Text)
    , _cldCalendarId  :: !Text
    , _cldPrettyPrint :: !Bool
    , _cldUserIp      :: !(Maybe Text)
    , _cldKey         :: !(Maybe Text)
    , _cldOauthToken  :: !(Maybe Text)
    , _cldFields      :: !(Maybe Text)
    , _cldAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldQuotaUser'
--
-- * 'cldCalendarId'
--
-- * 'cldPrettyPrint'
--
-- * 'cldUserIp'
--
-- * 'cldKey'
--
-- * 'cldOauthToken'
--
-- * 'cldFields'
--
-- * 'cldAlt'
calendarListDelete'
    :: Text -- ^ 'calendarId'
    -> CalendarListDelete'
calendarListDelete' pCldCalendarId_ =
    CalendarListDelete'
    { _cldQuotaUser = Nothing
    , _cldCalendarId = pCldCalendarId_
    , _cldPrettyPrint = True
    , _cldUserIp = Nothing
    , _cldKey = Nothing
    , _cldOauthToken = Nothing
    , _cldFields = Nothing
    , _cldAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cldQuotaUser :: Lens' CalendarListDelete' (Maybe Text)
cldQuotaUser
  = lens _cldQuotaUser (\ s a -> s{_cldQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cldCalendarId :: Lens' CalendarListDelete' Text
cldCalendarId
  = lens _cldCalendarId
      (\ s a -> s{_cldCalendarId = a})

-- | Returns response with indentations and line breaks.
cldPrettyPrint :: Lens' CalendarListDelete' Bool
cldPrettyPrint
  = lens _cldPrettyPrint
      (\ s a -> s{_cldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cldUserIp :: Lens' CalendarListDelete' (Maybe Text)
cldUserIp
  = lens _cldUserIp (\ s a -> s{_cldUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cldKey :: Lens' CalendarListDelete' (Maybe Text)
cldKey = lens _cldKey (\ s a -> s{_cldKey = a})

-- | OAuth 2.0 token for the current user.
cldOauthToken :: Lens' CalendarListDelete' (Maybe Text)
cldOauthToken
  = lens _cldOauthToken
      (\ s a -> s{_cldOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cldFields :: Lens' CalendarListDelete' (Maybe Text)
cldFields
  = lens _cldFields (\ s a -> s{_cldFields = a})

-- | Data format for the response.
cldAlt :: Lens' CalendarListDelete' Alt
cldAlt = lens _cldAlt (\ s a -> s{_cldAlt = a})

instance GoogleRequest CalendarListDelete' where
        type Rs CalendarListDelete' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListDelete'{..}
          = go _cldQuotaUser _cldCalendarId
              (Just _cldPrettyPrint)
              _cldUserIp
              _cldKey
              _cldOauthToken
              _cldFields
              (Just _cldAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarListDeleteResource)
                      r
                      u
