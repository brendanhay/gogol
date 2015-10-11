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
    , qrmfapPayload
    , qrmfapKey
    , qrmfapOAuthToken
    , qrmfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetMultipleForAllPlayers@ method which the
-- 'QuestsResetMultipleForAllPlayers'' request conforms to.
type QuestsResetMultipleForAllPlayersResource =
     "quests" :>
       "resetMultipleForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] QuestsResetMultipleForAllRequest :>
                         Post '[JSON] ()

-- | Resets quests with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft quests
-- may be reset.
--
-- /See:/ 'questsResetMultipleForAllPlayers'' smart constructor.
data QuestsResetMultipleForAllPlayers' = QuestsResetMultipleForAllPlayers'
    { _qrmfapQuotaUser   :: !(Maybe Text)
    , _qrmfapPrettyPrint :: !Bool
    , _qrmfapUserIP      :: !(Maybe Text)
    , _qrmfapPayload     :: !QuestsResetMultipleForAllRequest
    , _qrmfapKey         :: !(Maybe AuthKey)
    , _qrmfapOAuthToken  :: !(Maybe OAuthToken)
    , _qrmfapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'qrmfapPayload'
--
-- * 'qrmfapKey'
--
-- * 'qrmfapOAuthToken'
--
-- * 'qrmfapFields'
questsResetMultipleForAllPlayers'
    :: QuestsResetMultipleForAllRequest -- ^ 'payload'
    -> QuestsResetMultipleForAllPlayers'
questsResetMultipleForAllPlayers' pQrmfapPayload_ =
    QuestsResetMultipleForAllPlayers'
    { _qrmfapQuotaUser = Nothing
    , _qrmfapPrettyPrint = True
    , _qrmfapUserIP = Nothing
    , _qrmfapPayload = pQrmfapPayload_
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
qrmfapPayload :: Lens' QuestsResetMultipleForAllPlayers' QuestsResetMultipleForAllRequest
qrmfapPayload
  = lens _qrmfapPayload
      (\ s a -> s{_qrmfapPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrmfapKey :: Lens' QuestsResetMultipleForAllPlayers' (Maybe AuthKey)
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
        _AuthKey = qrmfapKey . _Just
        _AuthToken = qrmfapOAuthToken . _Just

instance GoogleRequest
         QuestsResetMultipleForAllPlayers' where
        type Rs QuestsResetMultipleForAllPlayers' = ()
        request = requestWith gamesManagementRequest
        requestWith rq QuestsResetMultipleForAllPlayers'{..}
          = go _qrmfapQuotaUser (Just _qrmfapPrettyPrint)
              _qrmfapUserIP
              _qrmfapFields
              _qrmfapKey
              _qrmfapOAuthToken
              (Just AltJSON)
              _qrmfapPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy QuestsResetMultipleForAllPlayersResource)
                      rq
