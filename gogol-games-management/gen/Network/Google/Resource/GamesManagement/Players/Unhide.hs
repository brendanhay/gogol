{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Players.Unhide
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementPlayersUnhide@.
module GamesManagement.Players.Unhide
    (
    -- * REST Resource
      PlayersUnhideAPI

    -- * Creating a Request
    , playersUnhide
    , PlayersUnhide

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIp
    , puApplicationId
    , puKey
    , puOauthToken
    , puPlayerId
    , puFields
    , puAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementPlayersUnhide@ which the
-- 'PlayersUnhide' request conforms to.
type PlayersUnhideAPI =
     "applications" :>
       Capture "applicationId" Text :>
         "players" :>
           "hidden" :>
             Capture "playerId" Text :> Delete '[JSON] ()

-- | Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
--
-- /See:/ 'playersUnhide' smart constructor.
data PlayersUnhide = PlayersUnhide
    { _puQuotaUser     :: !(Maybe Text)
    , _puPrettyPrint   :: !Bool
    , _puUserIp        :: !(Maybe Text)
    , _puApplicationId :: !Text
    , _puKey           :: !(Maybe Text)
    , _puOauthToken    :: !(Maybe Text)
    , _puPlayerId      :: !Text
    , _puFields        :: !(Maybe Text)
    , _puAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersUnhide'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIp'
--
-- * 'puApplicationId'
--
-- * 'puKey'
--
-- * 'puOauthToken'
--
-- * 'puPlayerId'
--
-- * 'puFields'
--
-- * 'puAlt'
playersUnhide
    :: Text -- ^ 'applicationId'
    -> Text -- ^ 'playerId'
    -> PlayersUnhide
playersUnhide pPuApplicationId_ pPuPlayerId_ =
    PlayersUnhide
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIp = Nothing
    , _puApplicationId = pPuApplicationId_
    , _puKey = Nothing
    , _puOauthToken = Nothing
    , _puPlayerId = pPuPlayerId_
    , _puFields = Nothing
    , _puAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PlayersUnhide' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PlayersUnhide' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIp :: Lens' PlayersUnhide' (Maybe Text)
puUserIp = lens _puUserIp (\ s a -> s{_puUserIp = a})

-- | The application ID from the Google Play developer console.
puApplicationId :: Lens' PlayersUnhide' Text
puApplicationId
  = lens _puApplicationId
      (\ s a -> s{_puApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PlayersUnhide' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' PlayersUnhide' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
puPlayerId :: Lens' PlayersUnhide' Text
puPlayerId
  = lens _puPlayerId (\ s a -> s{_puPlayerId = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PlayersUnhide' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | Data format for the response.
puAlt :: Lens' PlayersUnhide' Text
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest PlayersUnhide' where
        type Rs PlayersUnhide' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u PlayersUnhide{..}
          = go _puQuotaUser _puPrettyPrint _puUserIp
              _puApplicationId
              _puKey
              _puOauthToken
              _puPlayerId
              _puFields
              _puAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PlayersUnhideAPI) r
                      u
