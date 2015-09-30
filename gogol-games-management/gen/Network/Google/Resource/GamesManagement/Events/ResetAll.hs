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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application. All quests for this player will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementEventsResetAll@.
module Network.Google.Resource.GamesManagement.Events.ResetAll
    (
    -- * REST Resource
      EventsResetAllResource

    -- * Creating a Request
    , eventsResetAll'
    , EventsResetAll'

    -- * Request Lenses
    , eraQuotaUser
    , eraPrettyPrint
    , eraUserIp
    , eraKey
    , eraOauthToken
    , eraFields
    , eraAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementEventsResetAll@ which the
-- 'EventsResetAll'' request conforms to.
type EventsResetAllResource =
     "events" :>
       "reset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application. All quests for this player will also be reset.
--
-- /See:/ 'eventsResetAll'' smart constructor.
data EventsResetAll' = EventsResetAll'
    { _eraQuotaUser   :: !(Maybe Text)
    , _eraPrettyPrint :: !Bool
    , _eraUserIp      :: !(Maybe Text)
    , _eraKey         :: !(Maybe Text)
    , _eraOauthToken  :: !(Maybe Text)
    , _eraFields      :: !(Maybe Text)
    , _eraAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eraQuotaUser'
--
-- * 'eraPrettyPrint'
--
-- * 'eraUserIp'
--
-- * 'eraKey'
--
-- * 'eraOauthToken'
--
-- * 'eraFields'
--
-- * 'eraAlt'
eventsResetAll'
    :: EventsResetAll'
eventsResetAll' =
    EventsResetAll'
    { _eraQuotaUser = Nothing
    , _eraPrettyPrint = True
    , _eraUserIp = Nothing
    , _eraKey = Nothing
    , _eraOauthToken = Nothing
    , _eraFields = Nothing
    , _eraAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eraQuotaUser :: Lens' EventsResetAll' (Maybe Text)
eraQuotaUser
  = lens _eraQuotaUser (\ s a -> s{_eraQuotaUser = a})

-- | Returns response with indentations and line breaks.
eraPrettyPrint :: Lens' EventsResetAll' Bool
eraPrettyPrint
  = lens _eraPrettyPrint
      (\ s a -> s{_eraPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eraUserIp :: Lens' EventsResetAll' (Maybe Text)
eraUserIp
  = lens _eraUserIp (\ s a -> s{_eraUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eraKey :: Lens' EventsResetAll' (Maybe Text)
eraKey = lens _eraKey (\ s a -> s{_eraKey = a})

-- | OAuth 2.0 token for the current user.
eraOauthToken :: Lens' EventsResetAll' (Maybe Text)
eraOauthToken
  = lens _eraOauthToken
      (\ s a -> s{_eraOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eraFields :: Lens' EventsResetAll' (Maybe Text)
eraFields
  = lens _eraFields (\ s a -> s{_eraFields = a})

-- | Data format for the response.
eraAlt :: Lens' EventsResetAll' Alt
eraAlt = lens _eraAlt (\ s a -> s{_eraAlt = a})

instance GoogleRequest EventsResetAll' where
        type Rs EventsResetAll' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u EventsResetAll'{..}
          = go _eraQuotaUser (Just _eraPrettyPrint) _eraUserIp
              _eraKey
              _eraOauthToken
              _eraFields
              (Just _eraAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsResetAllResource)
                      r
                      u
