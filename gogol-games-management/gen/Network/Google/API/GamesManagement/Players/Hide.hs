{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesManagement.Players.Hide
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Hide the given player\'s leaderboard scores from the given application.
-- This method is only available to user accounts for your developer
-- console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.players.hide@.
module Network.Google.API.GamesManagement.Players.Hide
    (
    -- * REST Resource
      PlayersHideAPI

    -- * Creating a Request
    , playersHide'
    , PlayersHide'

    -- * Request Lenses
    , phQuotaUser
    , phPrettyPrint
    , phUserIp
    , phApplicationId
    , phKey
    , phOauthToken
    , phPlayerId
    , phFields
    , phAlt
    ) where

import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

-- | A resource alias for gamesManagement.players.hide which the
-- 'PlayersHide'' request conforms to.
type PlayersHideAPI =
     "applications" :>
       Capture "applicationId" Text :>
         "players" :>
           "hidden" :>
             Capture "playerId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] ()

-- | Hide the given player\'s leaderboard scores from the given application.
-- This method is only available to user accounts for your developer
-- console.
--
-- /See:/ 'playersHide'' smart constructor.
data PlayersHide' = PlayersHide'
    { _phQuotaUser     :: !(Maybe Text)
    , _phPrettyPrint   :: !Bool
    , _phUserIp        :: !(Maybe Text)
    , _phApplicationId :: !Text
    , _phKey           :: !(Maybe Text)
    , _phOauthToken    :: !(Maybe Text)
    , _phPlayerId      :: !Text
    , _phFields        :: !(Maybe Text)
    , _phAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersHide'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phQuotaUser'
--
-- * 'phPrettyPrint'
--
-- * 'phUserIp'
--
-- * 'phApplicationId'
--
-- * 'phKey'
--
-- * 'phOauthToken'
--
-- * 'phPlayerId'
--
-- * 'phFields'
--
-- * 'phAlt'
playersHide'
    :: Text -- ^ 'applicationId'
    -> Text -- ^ 'playerId'
    -> PlayersHide'
playersHide' pPhApplicationId_ pPhPlayerId_ =
    PlayersHide'
    { _phQuotaUser = Nothing
    , _phPrettyPrint = True
    , _phUserIp = Nothing
    , _phApplicationId = pPhApplicationId_
    , _phKey = Nothing
    , _phOauthToken = Nothing
    , _phPlayerId = pPhPlayerId_
    , _phFields = Nothing
    , _phAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
phQuotaUser :: Lens' PlayersHide' (Maybe Text)
phQuotaUser
  = lens _phQuotaUser (\ s a -> s{_phQuotaUser = a})

-- | Returns response with indentations and line breaks.
phPrettyPrint :: Lens' PlayersHide' Bool
phPrettyPrint
  = lens _phPrettyPrint
      (\ s a -> s{_phPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
phUserIp :: Lens' PlayersHide' (Maybe Text)
phUserIp = lens _phUserIp (\ s a -> s{_phUserIp = a})

-- | The application ID from the Google Play developer console.
phApplicationId :: Lens' PlayersHide' Text
phApplicationId
  = lens _phApplicationId
      (\ s a -> s{_phApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
phKey :: Lens' PlayersHide' (Maybe Text)
phKey = lens _phKey (\ s a -> s{_phKey = a})

-- | OAuth 2.0 token for the current user.
phOauthToken :: Lens' PlayersHide' (Maybe Text)
phOauthToken
  = lens _phOauthToken (\ s a -> s{_phOauthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
phPlayerId :: Lens' PlayersHide' Text
phPlayerId
  = lens _phPlayerId (\ s a -> s{_phPlayerId = a})

-- | Selector specifying which fields to include in a partial response.
phFields :: Lens' PlayersHide' (Maybe Text)
phFields = lens _phFields (\ s a -> s{_phFields = a})

-- | Data format for the response.
phAlt :: Lens' PlayersHide' Alt
phAlt = lens _phAlt (\ s a -> s{_phAlt = a})

instance GoogleRequest PlayersHide' where
        type Rs PlayersHide' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u PlayersHide'{..}
          = go _phQuotaUser (Just _phPrettyPrint) _phUserIp
              _phApplicationId
              _phKey
              _phOauthToken
              _phPlayerId
              _phFields
              (Just _phAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PlayersHideAPI) r u
