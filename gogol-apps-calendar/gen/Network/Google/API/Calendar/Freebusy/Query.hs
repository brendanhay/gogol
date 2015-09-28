{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Freebusy.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns free\/busy information for a set of calendars.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.freebusy.query@.
module Network.Google.API.Calendar.Freebusy.Query
    (
    -- * REST Resource
      FreebusyQueryAPI

    -- * Creating a Request
    , freebusyQuery'
    , FreebusyQuery'

    -- * Request Lenses
    , fqQuotaUser
    , fqPrettyPrint
    , fqUserIp
    , fqKey
    , fqOauthToken
    , fqFields
    , fqAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.freebusy.query which the
-- 'FreebusyQuery'' request conforms to.
type FreebusyQueryAPI =
     "freeBusy" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] FreeBusyResponse

-- | Returns free\/busy information for a set of calendars.
--
-- /See:/ 'freebusyQuery'' smart constructor.
data FreebusyQuery' = FreebusyQuery'
    { _fqQuotaUser   :: !(Maybe Text)
    , _fqPrettyPrint :: !Bool
    , _fqUserIp      :: !(Maybe Text)
    , _fqKey         :: !(Maybe Text)
    , _fqOauthToken  :: !(Maybe Text)
    , _fqFields      :: !(Maybe Text)
    , _fqAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreebusyQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fqQuotaUser'
--
-- * 'fqPrettyPrint'
--
-- * 'fqUserIp'
--
-- * 'fqKey'
--
-- * 'fqOauthToken'
--
-- * 'fqFields'
--
-- * 'fqAlt'
freebusyQuery'
    :: FreebusyQuery'
freebusyQuery' =
    FreebusyQuery'
    { _fqQuotaUser = Nothing
    , _fqPrettyPrint = True
    , _fqUserIp = Nothing
    , _fqKey = Nothing
    , _fqOauthToken = Nothing
    , _fqFields = Nothing
    , _fqAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fqQuotaUser :: Lens' FreebusyQuery' (Maybe Text)
fqQuotaUser
  = lens _fqQuotaUser (\ s a -> s{_fqQuotaUser = a})

-- | Returns response with indentations and line breaks.
fqPrettyPrint :: Lens' FreebusyQuery' Bool
fqPrettyPrint
  = lens _fqPrettyPrint
      (\ s a -> s{_fqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fqUserIp :: Lens' FreebusyQuery' (Maybe Text)
fqUserIp = lens _fqUserIp (\ s a -> s{_fqUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fqKey :: Lens' FreebusyQuery' (Maybe Text)
fqKey = lens _fqKey (\ s a -> s{_fqKey = a})

-- | OAuth 2.0 token for the current user.
fqOauthToken :: Lens' FreebusyQuery' (Maybe Text)
fqOauthToken
  = lens _fqOauthToken (\ s a -> s{_fqOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fqFields :: Lens' FreebusyQuery' (Maybe Text)
fqFields = lens _fqFields (\ s a -> s{_fqFields = a})

-- | Data format for the response.
fqAlt :: Lens' FreebusyQuery' Alt
fqAlt = lens _fqAlt (\ s a -> s{_fqAlt = a})

instance GoogleRequest FreebusyQuery' where
        type Rs FreebusyQuery' = FreeBusyResponse
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u FreebusyQuery'{..}
          = go _fqQuotaUser (Just _fqPrettyPrint) _fqUserIp
              _fqKey
              _fqOauthToken
              _fqFields
              (Just _fqAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy FreebusyQueryAPI) r
                      u
