{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Quests.ResetAllForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all draft quests for all players. This method is only available
-- to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementQuestsResetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Quests.ResetAllForAllPlayers
    (
    -- * REST Resource
      QuestsResetAllForAllPlayersResource

    -- * Creating a Request
    , questsResetAllForAllPlayers'
    , QuestsResetAllForAllPlayers'

    -- * Request Lenses
    , qrafapQuotaUser
    , qrafapPrettyPrint
    , qrafapUserIP
    , qrafapKey
    , qrafapOAuthToken
    , qrafapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetAllForAllPlayers@ method which the
-- 'QuestsResetAllForAllPlayers'' request conforms to.
type QuestsResetAllForAllPlayersResource =
     "quests" :>
       "resetAllForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all draft quests for all players. This method is only available
-- to user accounts for your developer console.
--
-- /See:/ 'questsResetAllForAllPlayers'' smart constructor.
data QuestsResetAllForAllPlayers' = QuestsResetAllForAllPlayers'
    { _qrafapQuotaUser   :: !(Maybe Text)
    , _qrafapPrettyPrint :: !Bool
    , _qrafapUserIP      :: !(Maybe Text)
    , _qrafapKey         :: !(Maybe AuthKey)
    , _qrafapOAuthToken  :: !(Maybe OAuthToken)
    , _qrafapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetAllForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrafapQuotaUser'
--
-- * 'qrafapPrettyPrint'
--
-- * 'qrafapUserIP'
--
-- * 'qrafapKey'
--
-- * 'qrafapOAuthToken'
--
-- * 'qrafapFields'
questsResetAllForAllPlayers'
    :: QuestsResetAllForAllPlayers'
questsResetAllForAllPlayers' =
    QuestsResetAllForAllPlayers'
    { _qrafapQuotaUser = Nothing
    , _qrafapPrettyPrint = True
    , _qrafapUserIP = Nothing
    , _qrafapKey = Nothing
    , _qrafapOAuthToken = Nothing
    , _qrafapFields = Nothing
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
qrafapUserIP :: Lens' QuestsResetAllForAllPlayers' (Maybe Text)
qrafapUserIP
  = lens _qrafapUserIP (\ s a -> s{_qrafapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrafapKey :: Lens' QuestsResetAllForAllPlayers' (Maybe AuthKey)
qrafapKey
  = lens _qrafapKey (\ s a -> s{_qrafapKey = a})

-- | OAuth 2.0 token for the current user.
qrafapOAuthToken :: Lens' QuestsResetAllForAllPlayers' (Maybe OAuthToken)
qrafapOAuthToken
  = lens _qrafapOAuthToken
      (\ s a -> s{_qrafapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qrafapFields :: Lens' QuestsResetAllForAllPlayers' (Maybe Text)
qrafapFields
  = lens _qrafapFields (\ s a -> s{_qrafapFields = a})

instance GoogleAuth QuestsResetAllForAllPlayers'
         where
        _AuthKey = qrafapKey . _Just
        _AuthToken = qrafapOAuthToken . _Just

instance GoogleRequest QuestsResetAllForAllPlayers'
         where
        type Rs QuestsResetAllForAllPlayers' = ()
        request = requestWith gamesManagementRequest
        requestWith rq QuestsResetAllForAllPlayers'{..}
          = go _qrafapQuotaUser (Just _qrafapPrettyPrint)
              _qrafapUserIP
              _qrafapFields
              _qrafapKey
              _qrafapOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy QuestsResetAllForAllPlayersResource)
                      rq
