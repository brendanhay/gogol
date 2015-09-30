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
-- Module      : Network.Google.Resource.Games.Players.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the Player resource with the given ID. To retrieve the player
-- for the currently authenticated user, set playerId to me.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesPlayersGet@.
module Network.Google.Resource.Games.Players.Get
    (
    -- * REST Resource
      PlayersGetResource

    -- * Creating a Request
    , playersGet'
    , PlayersGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgKey
    , pgLanguage
    , pgOauthToken
    , pgPlayerId
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesPlayersGet@ which the
-- 'PlayersGet'' request conforms to.
type PlayersGetResource =
     "players" :>
       Capture "playerId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "language" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Player

-- | Retrieves the Player resource with the given ID. To retrieve the player
-- for the currently authenticated user, set playerId to me.
--
-- /See:/ 'playersGet'' smart constructor.
data PlayersGet' = PlayersGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIp      :: !(Maybe Text)
    , _pgKey         :: !(Maybe Text)
    , _pgLanguage    :: !(Maybe Text)
    , _pgOauthToken  :: !(Maybe Text)
    , _pgPlayerId    :: !Text
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgKey'
--
-- * 'pgLanguage'
--
-- * 'pgOauthToken'
--
-- * 'pgPlayerId'
--
-- * 'pgFields'
--
-- * 'pgAlt'
playersGet'
    :: Text -- ^ 'playerId'
    -> PlayersGet'
playersGet' pPgPlayerId_ =
    PlayersGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgKey = Nothing
    , _pgLanguage = Nothing
    , _pgOauthToken = Nothing
    , _pgPlayerId = pPgPlayerId_
    , _pgFields = Nothing
    , _pgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PlayersGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PlayersGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PlayersGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PlayersGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | The preferred language to use for strings returned by this method.
pgLanguage :: Lens' PlayersGet' (Maybe Text)
pgLanguage
  = lens _pgLanguage (\ s a -> s{_pgLanguage = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PlayersGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
pgPlayerId :: Lens' PlayersGet' Text
pgPlayerId
  = lens _pgPlayerId (\ s a -> s{_pgPlayerId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PlayersGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PlayersGet' Alt
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PlayersGet' where
        type Rs PlayersGet' = Player
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u PlayersGet'{..}
          = go _pgQuotaUser (Just _pgPrettyPrint) _pgUserIp
              _pgKey
              _pgLanguage
              _pgOauthToken
              _pgPlayerId
              _pgFields
              (Just _pgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PlayersGetResource)
                      r
                      u
