{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesManagement.Quests.ResetAllForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all draft quests for all players. This method is only available
-- to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.quests.resetAllForAllPlayers@.
module Network.Google.API.GamesManagement.Quests.ResetAllForAllPlayers
    (
    -- * REST Resource
      QuestsResetAllForAllPlayersAPI

    -- * Creating a Request
    , questsResetAllForAllPlayers'
    , QuestsResetAllForAllPlayers'

    -- * Request Lenses
    , qrafapQuotaUser
    , qrafapPrettyPrint
    , qrafapUserIp
    , qrafapKey
    , qrafapOauthToken
    , qrafapFields
    , qrafapAlt
    ) where

import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

-- | A resource alias for gamesManagement.quests.resetAllForAllPlayers which the
-- 'QuestsResetAllForAllPlayers'' request conforms to.
type QuestsResetAllForAllPlayersAPI =
     "quests" :>
       "resetAllForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets all draft quests for all players. This method is only available
-- to user accounts for your developer console.
--
-- /See:/ 'questsResetAllForAllPlayers'' smart constructor.
data QuestsResetAllForAllPlayers' = QuestsResetAllForAllPlayers'
    { _qrafapQuotaUser   :: !(Maybe Text)
    , _qrafapPrettyPrint :: !Bool
    , _qrafapUserIp      :: !(Maybe Text)
    , _qrafapKey         :: !(Maybe Text)
    , _qrafapOauthToken  :: !(Maybe Text)
    , _qrafapFields      :: !(Maybe Text)
    , _qrafapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetAllForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrafapQuotaUser'
--
-- * 'qrafapPrettyPrint'
--
-- * 'qrafapUserIp'
--
-- * 'qrafapKey'
--
-- * 'qrafapOauthToken'
--
-- * 'qrafapFields'
--
-- * 'qrafapAlt'
questsResetAllForAllPlayers'
    :: QuestsResetAllForAllPlayers'
questsResetAllForAllPlayers' =
    QuestsResetAllForAllPlayers'
    { _qrafapQuotaUser = Nothing
    , _qrafapPrettyPrint = True
    , _qrafapUserIp = Nothing
    , _qrafapKey = Nothing
    , _qrafapOauthToken = Nothing
    , _qrafapFields = Nothing
    , _qrafapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qrafapQuotaUser :: Lens' QuestsResetAllForAllPlayers' (Maybe Text)
qrafapQuotaUser
  = lens _qrafapQuotaUser
      (\ s a -> s{_qrafapQuotaUser = a})

-- | Returns response with indentations and line breaks.
qrafapPrettyPrint :: Lens' QuestsResetAllForAllPlayers' Bool
qrafapPrettyPrint
  = lens _qrafapPrettyPrint
      (\ s a -> s{_qrafapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qrafapUserIp :: Lens' QuestsResetAllForAllPlayers' (Maybe Text)
qrafapUserIp
  = lens _qrafapUserIp (\ s a -> s{_qrafapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrafapKey :: Lens' QuestsResetAllForAllPlayers' (Maybe Text)
qrafapKey
  = lens _qrafapKey (\ s a -> s{_qrafapKey = a})

-- | OAuth 2.0 token for the current user.
qrafapOauthToken :: Lens' QuestsResetAllForAllPlayers' (Maybe Text)
qrafapOauthToken
  = lens _qrafapOauthToken
      (\ s a -> s{_qrafapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
qrafapFields :: Lens' QuestsResetAllForAllPlayers' (Maybe Text)
qrafapFields
  = lens _qrafapFields (\ s a -> s{_qrafapFields = a})

-- | Data format for the response.
qrafapAlt :: Lens' QuestsResetAllForAllPlayers' Alt
qrafapAlt
  = lens _qrafapAlt (\ s a -> s{_qrafapAlt = a})

instance GoogleRequest QuestsResetAllForAllPlayers'
         where
        type Rs QuestsResetAllForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u QuestsResetAllForAllPlayers'{..}
          = go _qrafapQuotaUser (Just _qrafapPrettyPrint)
              _qrafapUserIp
              _qrafapKey
              _qrafapOauthToken
              _qrafapFields
              (Just _qrafapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QuestsResetAllForAllPlayersAPI)
                      r
                      u
