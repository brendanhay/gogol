{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Calendars.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns metadata for a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.get@.
module Network.Google.API.Calendar.Calendars.Get
    (
    -- * REST Resource
      CalendarsGetAPI

    -- * Creating a Request
    , calendarsGet'
    , CalendarsGet'

    -- * Request Lenses
    , cQuotaUser
    , cCalendarId
    , cPrettyPrint
    , cUserIp
    , cKey
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.calendars.get which the
-- 'CalendarsGet'' request conforms to.
type CalendarsGetAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Calendar

-- | Returns metadata for a calendar.
--
-- /See:/ 'calendarsGet'' smart constructor.
data CalendarsGet' = CalendarsGet'
    { _cQuotaUser   :: !(Maybe Text)
    , _cCalendarId  :: !Text
    , _cPrettyPrint :: !Bool
    , _cUserIp      :: !(Maybe Text)
    , _cKey         :: !(Maybe Text)
    , _cOauthToken  :: !(Maybe Text)
    , _cFields      :: !(Maybe Text)
    , _cAlt         :: !Alt
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
-- * 'cUserIp'
--
-- * 'cKey'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
calendarsGet'
    :: Text -- ^ 'calendarId'
    -> CalendarsGet'
calendarsGet' pCCalendarId_ =
    CalendarsGet'
    { _cQuotaUser = Nothing
    , _cCalendarId = pCCalendarId_
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cKey = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = JSON
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
cUserIp :: Lens' CalendarsGet' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CalendarsGet' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CalendarsGet' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CalendarsGet' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CalendarsGet' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CalendarsGet' where
        type Rs CalendarsGet' = Calendar
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsGet'{..}
          = go _cQuotaUser _cCalendarId (Just _cPrettyPrint)
              _cUserIp
              _cKey
              _cOauthToken
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CalendarsGetAPI) r
                      u
