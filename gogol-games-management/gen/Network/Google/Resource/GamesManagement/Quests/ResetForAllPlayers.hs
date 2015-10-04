{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Quests.ResetForAllPlayers
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
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementQuestsResetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Quests.ResetForAllPlayers
    (
    -- * REST Resource
      QuestsResetForAllPlayersResource

    -- * Creating a Request
    , questsResetForAllPlayers'
    , QuestsResetForAllPlayers'

    -- * Request Lenses
    , qrfapQuotaUser
    , qrfapPrettyPrint
    , qrfapUserIP
    , qrfapKey
    , qrfapOAuthToken
    , qrfapQuestId
    , qrfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetForAllPlayers@ which the
-- 'QuestsResetForAllPlayers'' request conforms to.
type QuestsResetForAllPlayersResource =
     "quests" :>
       Capture "questId" Text :>
         "resetForAllPlayers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on the quest with the given ID for all
-- players. This method is only available to user accounts for your
-- developer console. Only draft quests can be reset.
--
-- /See:/ 'questsResetForAllPlayers'' smart constructor.
data QuestsResetForAllPlayers' = QuestsResetForAllPlayers'
    { _qrfapQuotaUser   :: !(Maybe Text)
    , _qrfapPrettyPrint :: !Bool
    , _qrfapUserIP      :: !(Maybe Text)
    , _qrfapKey         :: !(Maybe Key)
    , _qrfapOAuthToken  :: !(Maybe OAuthToken)
    , _qrfapQuestId     :: !Text
    , _qrfapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrfapQuotaUser'
--
-- * 'qrfapPrettyPrint'
--
-- * 'qrfapUserIP'
--
-- * 'qrfapKey'
--
-- * 'qrfapOAuthToken'
--
-- * 'qrfapQuestId'
--
-- * 'qrfapFields'
questsResetForAllPlayers'
    :: Text -- ^ 'questId'
    -> QuestsResetForAllPlayers'
questsResetForAllPlayers' pQrfapQuestId_ =
    QuestsResetForAllPlayers'
    { _qrfapQuotaUser = Nothing
    , _qrfapPrettyPrint = True
    , _qrfapUserIP = Nothing
    , _qrfapKey = Nothing
    , _qrfapOAuthToken = Nothing
    , _qrfapQuestId = pQrfapQuestId_
    , _qrfapFields = Nothing
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
qrfapUserIP :: Lens' QuestsResetForAllPlayers' (Maybe Text)
qrfapUserIP
  = lens _qrfapUserIP (\ s a -> s{_qrfapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrfapKey :: Lens' QuestsResetForAllPlayers' (Maybe Key)
qrfapKey = lens _qrfapKey (\ s a -> s{_qrfapKey = a})

-- | OAuth 2.0 token for the current user.
qrfapOAuthToken :: Lens' QuestsResetForAllPlayers' (Maybe OAuthToken)
qrfapOAuthToken
  = lens _qrfapOAuthToken
      (\ s a -> s{_qrfapOAuthToken = a})

-- | The ID of the quest.
qrfapQuestId :: Lens' QuestsResetForAllPlayers' Text
qrfapQuestId
  = lens _qrfapQuestId (\ s a -> s{_qrfapQuestId = a})

-- | Selector specifying which fields to include in a partial response.
qrfapFields :: Lens' QuestsResetForAllPlayers' (Maybe Text)
qrfapFields
  = lens _qrfapFields (\ s a -> s{_qrfapFields = a})

instance GoogleAuth QuestsResetForAllPlayers' where
        authKey = qrfapKey . _Just
        authToken = qrfapOAuthToken . _Just

instance GoogleRequest QuestsResetForAllPlayers'
         where
        type Rs QuestsResetForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u QuestsResetForAllPlayers'{..}
          = go _qrfapQuestId _qrfapQuotaUser
              (Just _qrfapPrettyPrint)
              _qrfapUserIP
              _qrfapFields
              _qrfapKey
              _qrfapOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QuestsResetForAllPlayersResource)
                      r
                      u
