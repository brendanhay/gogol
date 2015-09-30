{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Quests.ResetAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all player progress on all quests for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementQuestsResetAll@.
module GamesManagement.Quests.ResetAll
    (
    -- * REST Resource
      QuestsResetAllAPI

    -- * Creating a Request
    , questsResetAll
    , QuestsResetAll

    -- * Request Lenses
    , qraQuotaUser
    , qraPrettyPrint
    , qraUserIp
    , qraKey
    , qraOauthToken
    , qraFields
    , qraAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetAll@ which the
-- 'QuestsResetAll' request conforms to.
type QuestsResetAllAPI =
     "quests" :> "reset" :> Post '[JSON] ()

-- | Resets all player progress on all quests for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'questsResetAll' smart constructor.
data QuestsResetAll = QuestsResetAll
    { _qraQuotaUser   :: !(Maybe Text)
    , _qraPrettyPrint :: !Bool
    , _qraUserIp      :: !(Maybe Text)
    , _qraKey         :: !(Maybe Text)
    , _qraOauthToken  :: !(Maybe Text)
    , _qraFields      :: !(Maybe Text)
    , _qraAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qraQuotaUser'
--
-- * 'qraPrettyPrint'
--
-- * 'qraUserIp'
--
-- * 'qraKey'
--
-- * 'qraOauthToken'
--
-- * 'qraFields'
--
-- * 'qraAlt'
questsResetAll
    :: QuestsResetAll
questsResetAll =
    QuestsResetAll
    { _qraQuotaUser = Nothing
    , _qraPrettyPrint = True
    , _qraUserIp = Nothing
    , _qraKey = Nothing
    , _qraOauthToken = Nothing
    , _qraFields = Nothing
    , _qraAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qraQuotaUser :: Lens' QuestsResetAll' (Maybe Text)
qraQuotaUser
  = lens _qraQuotaUser (\ s a -> s{_qraQuotaUser = a})

-- | Returns response with indentations and line breaks.
qraPrettyPrint :: Lens' QuestsResetAll' Bool
qraPrettyPrint
  = lens _qraPrettyPrint
      (\ s a -> s{_qraPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qraUserIp :: Lens' QuestsResetAll' (Maybe Text)
qraUserIp
  = lens _qraUserIp (\ s a -> s{_qraUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qraKey :: Lens' QuestsResetAll' (Maybe Text)
qraKey = lens _qraKey (\ s a -> s{_qraKey = a})

-- | OAuth 2.0 token for the current user.
qraOauthToken :: Lens' QuestsResetAll' (Maybe Text)
qraOauthToken
  = lens _qraOauthToken
      (\ s a -> s{_qraOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
qraFields :: Lens' QuestsResetAll' (Maybe Text)
qraFields
  = lens _qraFields (\ s a -> s{_qraFields = a})

-- | Data format for the response.
qraAlt :: Lens' QuestsResetAll' Text
qraAlt = lens _qraAlt (\ s a -> s{_qraAlt = a})

instance GoogleRequest QuestsResetAll' where
        type Rs QuestsResetAll' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u QuestsResetAll{..}
          = go _qraQuotaUser _qraPrettyPrint _qraUserIp _qraKey
              _qraOauthToken
              _qraFields
              _qraAlt
          where go
                  = clientWithRoute (Proxy :: Proxy QuestsResetAllAPI)
                      r
                      u
