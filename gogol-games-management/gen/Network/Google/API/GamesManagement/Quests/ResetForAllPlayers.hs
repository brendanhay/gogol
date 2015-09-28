{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesManagement.Quests.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all player progress on the quest with the given ID for all
-- players. This method is only available to user accounts for your
-- developer console. Only draft quests can be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.quests.resetForAllPlayers@.
module Network.Google.API.GamesManagement.Quests.ResetForAllPlayers
    (
    -- * REST Resource
      QuestsResetForAllPlayersAPI

    -- * Creating a Request
    , questsResetForAllPlayers'
    , QuestsResetForAllPlayers'

    -- * Request Lenses
    , qrfapQuotaUser
    , qrfapPrettyPrint
    , qrfapUserIp
    , qrfapKey
    , qrfapOauthToken
    , qrfapQuestId
    , qrfapFields
    , qrfapAlt
    ) where

import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

-- | A resource alias for gamesManagement.quests.resetForAllPlayers which the
-- 'QuestsResetForAllPlayers'' request conforms to.
type QuestsResetForAllPlayersAPI =
     "quests" :>
       Capture "questId" Text :>
         "resetForAllPlayers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets all player progress on the quest with the given ID for all
-- players. This method is only available to user accounts for your
-- developer console. Only draft quests can be reset.
--
-- /See:/ 'questsResetForAllPlayers'' smart constructor.
data QuestsResetForAllPlayers' = QuestsResetForAllPlayers'
    { _qrfapQuotaUser   :: !(Maybe Text)
    , _qrfapPrettyPrint :: !Bool
    , _qrfapUserIp      :: !(Maybe Text)
    , _qrfapKey         :: !(Maybe Text)
    , _qrfapOauthToken  :: !(Maybe Text)
    , _qrfapQuestId     :: !Text
    , _qrfapFields      :: !(Maybe Text)
    , _qrfapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrfapQuotaUser'
--
-- * 'qrfapPrettyPrint'
--
-- * 'qrfapUserIp'
--
-- * 'qrfapKey'
--
-- * 'qrfapOauthToken'
--
-- * 'qrfapQuestId'
--
-- * 'qrfapFields'
--
-- * 'qrfapAlt'
questsResetForAllPlayers'
    :: Text -- ^ 'questId'
    -> QuestsResetForAllPlayers'
questsResetForAllPlayers' pQrfapQuestId_ =
    QuestsResetForAllPlayers'
    { _qrfapQuotaUser = Nothing
    , _qrfapPrettyPrint = True
    , _qrfapUserIp = Nothing
    , _qrfapKey = Nothing
    , _qrfapOauthToken = Nothing
    , _qrfapQuestId = pQrfapQuestId_
    , _qrfapFields = Nothing
    , _qrfapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qrfapQuotaUser :: Lens' QuestsResetForAllPlayers' (Maybe Text)
qrfapQuotaUser
  = lens _qrfapQuotaUser
      (\ s a -> s{_qrfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
qrfapPrettyPrint :: Lens' QuestsResetForAllPlayers' Bool
qrfapPrettyPrint
  = lens _qrfapPrettyPrint
      (\ s a -> s{_qrfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qrfapUserIp :: Lens' QuestsResetForAllPlayers' (Maybe Text)
qrfapUserIp
  = lens _qrfapUserIp (\ s a -> s{_qrfapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrfapKey :: Lens' QuestsResetForAllPlayers' (Maybe Text)
qrfapKey = lens _qrfapKey (\ s a -> s{_qrfapKey = a})

-- | OAuth 2.0 token for the current user.
qrfapOauthToken :: Lens' QuestsResetForAllPlayers' (Maybe Text)
qrfapOauthToken
  = lens _qrfapOauthToken
      (\ s a -> s{_qrfapOauthToken = a})

-- | The ID of the quest.
qrfapQuestId :: Lens' QuestsResetForAllPlayers' Text
qrfapQuestId
  = lens _qrfapQuestId (\ s a -> s{_qrfapQuestId = a})

-- | Selector specifying which fields to include in a partial response.
qrfapFields :: Lens' QuestsResetForAllPlayers' (Maybe Text)
qrfapFields
  = lens _qrfapFields (\ s a -> s{_qrfapFields = a})

-- | Data format for the response.
qrfapAlt :: Lens' QuestsResetForAllPlayers' Alt
qrfapAlt = lens _qrfapAlt (\ s a -> s{_qrfapAlt = a})

instance GoogleRequest QuestsResetForAllPlayers'
         where
        type Rs QuestsResetForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u QuestsResetForAllPlayers'{..}
          = go _qrfapQuotaUser (Just _qrfapPrettyPrint)
              _qrfapUserIp
              _qrfapKey
              _qrfapOauthToken
              _qrfapQuestId
              _qrfapFields
              (Just _qrfapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QuestsResetForAllPlayersAPI)
                      r
                      u
