{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Events.ListByPlayer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list showing the current progress on events in this
-- application for the currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.events.listByPlayer@.
module Network.Google.API.Games.Events.ListByPlayer
    (
    -- * REST Resource
      EventsListByPlayerAPI

    -- * Creating a Request
    , eventsListByPlayer'
    , EventsListByPlayer'

    -- * Request Lenses
    , elbpQuotaUser
    , elbpPrettyPrint
    , elbpUserIp
    , elbpKey
    , elbpLanguage
    , elbpPageToken
    , elbpOauthToken
    , elbpMaxResults
    , elbpFields
    , elbpAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.events.listByPlayer which the
-- 'EventsListByPlayer'' request conforms to.
type EventsListByPlayerAPI =
     "events" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "maxResults" Nat :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] PlayerEventListResponse

-- | Returns a list showing the current progress on events in this
-- application for the currently authenticated user.
--
-- /See:/ 'eventsListByPlayer'' smart constructor.
data EventsListByPlayer' = EventsListByPlayer'
    { _elbpQuotaUser   :: !(Maybe Text)
    , _elbpPrettyPrint :: !Bool
    , _elbpUserIp      :: !(Maybe Text)
    , _elbpKey         :: !(Maybe Text)
    , _elbpLanguage    :: !(Maybe Text)
    , _elbpPageToken   :: !(Maybe Text)
    , _elbpOauthToken  :: !(Maybe Text)
    , _elbpMaxResults  :: !(Maybe Nat)
    , _elbpFields      :: !(Maybe Text)
    , _elbpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsListByPlayer'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elbpQuotaUser'
--
-- * 'elbpPrettyPrint'
--
-- * 'elbpUserIp'
--
-- * 'elbpKey'
--
-- * 'elbpLanguage'
--
-- * 'elbpPageToken'
--
-- * 'elbpOauthToken'
--
-- * 'elbpMaxResults'
--
-- * 'elbpFields'
--
-- * 'elbpAlt'
eventsListByPlayer'
    :: EventsListByPlayer'
eventsListByPlayer' =
    EventsListByPlayer'
    { _elbpQuotaUser = Nothing
    , _elbpPrettyPrint = True
    , _elbpUserIp = Nothing
    , _elbpKey = Nothing
    , _elbpLanguage = Nothing
    , _elbpPageToken = Nothing
    , _elbpOauthToken = Nothing
    , _elbpMaxResults = Nothing
    , _elbpFields = Nothing
    , _elbpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elbpQuotaUser :: Lens' EventsListByPlayer' (Maybe Text)
elbpQuotaUser
  = lens _elbpQuotaUser
      (\ s a -> s{_elbpQuotaUser = a})

-- | Returns response with indentations and line breaks.
elbpPrettyPrint :: Lens' EventsListByPlayer' Bool
elbpPrettyPrint
  = lens _elbpPrettyPrint
      (\ s a -> s{_elbpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elbpUserIp :: Lens' EventsListByPlayer' (Maybe Text)
elbpUserIp
  = lens _elbpUserIp (\ s a -> s{_elbpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elbpKey :: Lens' EventsListByPlayer' (Maybe Text)
elbpKey = lens _elbpKey (\ s a -> s{_elbpKey = a})

-- | The preferred language to use for strings returned by this method.
elbpLanguage :: Lens' EventsListByPlayer' (Maybe Text)
elbpLanguage
  = lens _elbpLanguage (\ s a -> s{_elbpLanguage = a})

-- | The token returned by the previous request.
elbpPageToken :: Lens' EventsListByPlayer' (Maybe Text)
elbpPageToken
  = lens _elbpPageToken
      (\ s a -> s{_elbpPageToken = a})

-- | OAuth 2.0 token for the current user.
elbpOauthToken :: Lens' EventsListByPlayer' (Maybe Text)
elbpOauthToken
  = lens _elbpOauthToken
      (\ s a -> s{_elbpOauthToken = a})

-- | The maximum number of events to return in the response, used for paging.
-- For any response, the actual number of events to return may be less than
-- the specified maxResults.
elbpMaxResults :: Lens' EventsListByPlayer' (Maybe Natural)
elbpMaxResults
  = lens _elbpMaxResults
      (\ s a -> s{_elbpMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
elbpFields :: Lens' EventsListByPlayer' (Maybe Text)
elbpFields
  = lens _elbpFields (\ s a -> s{_elbpFields = a})

-- | Data format for the response.
elbpAlt :: Lens' EventsListByPlayer' Alt
elbpAlt = lens _elbpAlt (\ s a -> s{_elbpAlt = a})

instance GoogleRequest EventsListByPlayer' where
        type Rs EventsListByPlayer' = PlayerEventListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u EventsListByPlayer'{..}
          = go _elbpQuotaUser (Just _elbpPrettyPrint)
              _elbpUserIp
              _elbpKey
              _elbpLanguage
              _elbpPageToken
              _elbpOauthToken
              _elbpMaxResults
              _elbpFields
              (Just _elbpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsListByPlayerAPI)
                      r
                      u
