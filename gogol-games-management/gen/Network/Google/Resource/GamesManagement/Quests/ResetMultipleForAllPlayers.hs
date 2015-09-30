{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Quests.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets quests with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft quests
-- may be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementQuestsResetMultipleForAllPlayers@.
module GamesManagement.Quests.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      QuestsResetMultipleForAllPlayersAPI

    -- * Creating a Request
    , questsResetMultipleForAllPlayers
    , QuestsResetMultipleForAllPlayers

    -- * Request Lenses
    , qrmfapQuotaUser
    , qrmfapPrettyPrint
    , qrmfapUserIp
    , qrmfapKey
    , qrmfapOauthToken
    , qrmfapFields
    , qrmfapAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetMultipleForAllPlayers@ which the
-- 'QuestsResetMultipleForAllPlayers' request conforms to.
type QuestsResetMultipleForAllPlayersAPI =
     "quests" :>
       "resetMultipleForAllPlayers" :> Post '[JSON] ()

-- | Resets quests with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft quests
-- may be reset.
--
-- /See:/ 'questsResetMultipleForAllPlayers' smart constructor.
data QuestsResetMultipleForAllPlayers = QuestsResetMultipleForAllPlayers
    { _qrmfapQuotaUser   :: !(Maybe Text)
    , _qrmfapPrettyPrint :: !Bool
    , _qrmfapUserIp      :: !(Maybe Text)
    , _qrmfapKey         :: !(Maybe Text)
    , _qrmfapOauthToken  :: !(Maybe Text)
    , _qrmfapFields      :: !(Maybe Text)
    , _qrmfapAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetMultipleForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrmfapQuotaUser'
--
-- * 'qrmfapPrettyPrint'
--
-- * 'qrmfapUserIp'
--
-- * 'qrmfapKey'
--
-- * 'qrmfapOauthToken'
--
-- * 'qrmfapFields'
--
-- * 'qrmfapAlt'
questsResetMultipleForAllPlayers
    :: QuestsResetMultipleForAllPlayers
questsResetMultipleForAllPlayers =
    QuestsResetMultipleForAllPlayers
    { _qrmfapQuotaUser = Nothing
    , _qrmfapPrettyPrint = True
    , _qrmfapUserIp = Nothing
    , _qrmfapKey = Nothing
    , _qrmfapOauthToken = Nothing
    , _qrmfapFields = Nothing
    , _qrmfapAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qrmfapQuotaUser :: Lens' QuestsResetMultipleForAllPlayers' (Maybe Text)
qrmfapQuotaUser
  = lens _qrmfapQuotaUser
      (\ s a -> s{_qrmfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
qrmfapPrettyPrint :: Lens' QuestsResetMultipleForAllPlayers' Bool
qrmfapPrettyPrint
  = lens _qrmfapPrettyPrint
      (\ s a -> s{_qrmfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qrmfapUserIp :: Lens' QuestsResetMultipleForAllPlayers' (Maybe Text)
qrmfapUserIp
  = lens _qrmfapUserIp (\ s a -> s{_qrmfapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrmfapKey :: Lens' QuestsResetMultipleForAllPlayers' (Maybe Text)
qrmfapKey
  = lens _qrmfapKey (\ s a -> s{_qrmfapKey = a})

-- | OAuth 2.0 token for the current user.
qrmfapOauthToken :: Lens' QuestsResetMultipleForAllPlayers' (Maybe Text)
qrmfapOauthToken
  = lens _qrmfapOauthToken
      (\ s a -> s{_qrmfapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
qrmfapFields :: Lens' QuestsResetMultipleForAllPlayers' (Maybe Text)
qrmfapFields
  = lens _qrmfapFields (\ s a -> s{_qrmfapFields = a})

-- | Data format for the response.
qrmfapAlt :: Lens' QuestsResetMultipleForAllPlayers' Text
qrmfapAlt
  = lens _qrmfapAlt (\ s a -> s{_qrmfapAlt = a})

instance GoogleRequest
         QuestsResetMultipleForAllPlayers' where
        type Rs QuestsResetMultipleForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          QuestsResetMultipleForAllPlayers{..}
          = go _qrmfapQuotaUser _qrmfapPrettyPrint
              _qrmfapUserIp
              _qrmfapKey
              _qrmfapOauthToken
              _qrmfapFields
              _qrmfapAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QuestsResetMultipleForAllPlayersAPI)
                      r
                      u
