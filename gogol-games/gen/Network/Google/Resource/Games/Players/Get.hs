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
    , pgUserIP
    , pgKey
    , pgLanguage
    , pgOAuthToken
    , pgPlayerId
    , pgFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesPlayersGet@ which the
-- 'PlayersGet'' request conforms to.
type PlayersGetResource =
     "players" :>
       Capture "playerId" Text :>
         QueryParam "language" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Player

-- | Retrieves the Player resource with the given ID. To retrieve the player
-- for the currently authenticated user, set playerId to me.
--
-- /See:/ 'playersGet'' smart constructor.
data PlayersGet' = PlayersGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIP      :: !(Maybe Text)
    , _pgKey         :: !(Maybe Key)
    , _pgLanguage    :: !(Maybe Text)
    , _pgOAuthToken  :: !(Maybe OAuthToken)
    , _pgPlayerId    :: !Text
    , _pgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIP'
--
-- * 'pgKey'
--
-- * 'pgLanguage'
--
-- * 'pgOAuthToken'
--
-- * 'pgPlayerId'
--
-- * 'pgFields'
playersGet'
    :: Text -- ^ 'playerId'
    -> PlayersGet'
playersGet' pPgPlayerId_ =
    PlayersGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIP = Nothing
    , _pgKey = Nothing
    , _pgLanguage = Nothing
    , _pgOAuthToken = Nothing
    , _pgPlayerId = pPgPlayerId_
    , _pgFields = Nothing
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
pgUserIP :: Lens' PlayersGet' (Maybe Text)
pgUserIP = lens _pgUserIP (\ s a -> s{_pgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PlayersGet' (Maybe Key)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | The preferred language to use for strings returned by this method.
pgLanguage :: Lens' PlayersGet' (Maybe Text)
pgLanguage
  = lens _pgLanguage (\ s a -> s{_pgLanguage = a})

-- | OAuth 2.0 token for the current user.
pgOAuthToken :: Lens' PlayersGet' (Maybe OAuthToken)
pgOAuthToken
  = lens _pgOAuthToken (\ s a -> s{_pgOAuthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
pgPlayerId :: Lens' PlayersGet' Text
pgPlayerId
  = lens _pgPlayerId (\ s a -> s{_pgPlayerId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PlayersGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

instance GoogleAuth PlayersGet' where
        authKey = pgKey . _Just
        authToken = pgOAuthToken . _Just

instance GoogleRequest PlayersGet' where
        type Rs PlayersGet' = Player
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u PlayersGet'{..}
          = go _pgLanguage _pgPlayerId _pgQuotaUser
              (Just _pgPrettyPrint)
              _pgUserIP
              _pgFields
              _pgKey
              _pgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy PlayersGetResource)
                      r
                      u
