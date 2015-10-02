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
module Network.Google.Resource.GamesManagement.Quests.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      QuestsResetMultipleForAllPlayersResource

    -- * Creating a Request
    , questsResetMultipleForAllPlayers'
    , QuestsResetMultipleForAllPlayers'

    -- * Request Lenses
    , qrmfapQuotaUser
    , qrmfapPrettyPrint
    , qrmfapUserIP
    , qrmfapQuestsResetMultipleForAllRequest
    , qrmfapKey
    , qrmfapOAuthToken
    , qrmfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetMultipleForAllPlayers@ which the
-- 'QuestsResetMultipleForAllPlayers'' request conforms to.
type QuestsResetMultipleForAllPlayersResource =
     "quests" :>
       "resetMultipleForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] QuestsResetMultipleForAllRequest :>
                         Post '[JSON] ()

-- | Resets quests with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft quests
-- may be reset.
--
-- /See:/ 'questsResetMultipleForAllPlayers'' smart constructor.
data QuestsResetMultipleForAllPlayers' = QuestsResetMultipleForAllPlayers'
    { _qrmfapQuotaUser                        :: !(Maybe Text)
    , _qrmfapPrettyPrint                      :: !Bool
    , _qrmfapUserIP                           :: !(Maybe Text)
    , _qrmfapQuestsResetMultipleForAllRequest :: !QuestsResetMultipleForAllRequest
    , _qrmfapKey                              :: !(Maybe Key)
    , _qrmfapOAuthToken                       :: !(Maybe OAuthToken)
    , _qrmfapFields                           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetMultipleForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrmfapQuotaUser'
--
-- * 'qrmfapPrettyPrint'
--
-- * 'qrmfapUserIP'
--
-- * 'qrmfapQuestsResetMultipleForAllRequest'
--
-- * 'qrmfapKey'
--
-- * 'qrmfapOAuthToken'
--
-- * 'qrmfapFields'
questsResetMultipleForAllPlayers'
    :: QuestsResetMultipleForAllRequest -- ^ 'QuestsResetMultipleForAllRequest'
    -> QuestsResetMultipleForAllPlayers'
questsResetMultipleForAllPlayers' pQrmfapQuestsResetMultipleForAllRequest_ =
    QuestsResetMultipleForAllPlayers'
    { _qrmfapQuotaUser = Nothing
    , _qrmfapPrettyPrint = True
    , _qrmfapUserIP = Nothing
    , _qrmfapQuestsResetMultipleForAllRequest = pQrmfapQuestsResetMultipleForAllRequest_
    , _qrmfapKey = Nothing
    , _qrmfapOAuthToken = Nothing
    , _qrmfapFields = Nothing
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
qrmfapUserIP :: Lens' QuestsResetMultipleForAllPlayers' (Maybe Text)
qrmfapUserIP
  = lens _qrmfapUserIP (\ s a -> s{_qrmfapUserIP = a})

-- | Multipart request metadata.
qrmfapQuestsResetMultipleForAllRequest :: Lens' QuestsResetMultipleForAllPlayers' QuestsResetMultipleForAllRequest
qrmfapQuestsResetMultipleForAllRequest
  = lens _qrmfapQuestsResetMultipleForAllRequest
      (\ s a ->
         s{_qrmfapQuestsResetMultipleForAllRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrmfapKey :: Lens' QuestsResetMultipleForAllPlayers' (Maybe Key)
qrmfapKey
  = lens _qrmfapKey (\ s a -> s{_qrmfapKey = a})

-- | OAuth 2.0 token for the current user.
qrmfapOAuthToken :: Lens' QuestsResetMultipleForAllPlayers' (Maybe OAuthToken)
qrmfapOAuthToken
  = lens _qrmfapOAuthToken
      (\ s a -> s{_qrmfapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qrmfapFields :: Lens' QuestsResetMultipleForAllPlayers' (Maybe Text)
qrmfapFields
  = lens _qrmfapFields (\ s a -> s{_qrmfapFields = a})

instance GoogleAuth QuestsResetMultipleForAllPlayers'
         where
        authKey = qrmfapKey . _Just
        authToken = qrmfapOAuthToken . _Just

instance GoogleRequest
         QuestsResetMultipleForAllPlayers' where
        type Rs QuestsResetMultipleForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          QuestsResetMultipleForAllPlayers'{..}
          = go _qrmfapQuotaUser (Just _qrmfapPrettyPrint)
              _qrmfapUserIP
              _qrmfapFields
              _qrmfapKey
              _qrmfapOAuthToken
              (Just AltJSON)
              _qrmfapQuestsResetMultipleForAllRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy QuestsResetMultipleForAllPlayersResource)
                      r
                      u
