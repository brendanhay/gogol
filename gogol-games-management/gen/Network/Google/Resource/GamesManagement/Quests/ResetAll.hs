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
module Network.Google.Resource.GamesManagement.Quests.ResetAll
    (
    -- * REST Resource
      QuestsResetAllResource

    -- * Creating a Request
    , questsResetAll'
    , QuestsResetAll'

    -- * Request Lenses
    , qraQuotaUser
    , qraPrettyPrint
    , qraUserIP
    , qraKey
    , qraOAuthToken
    , qraFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetAll@ which the
-- 'QuestsResetAll'' request conforms to.
type QuestsResetAllResource =
     "quests" :>
       "reset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on all quests for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'questsResetAll'' smart constructor.
data QuestsResetAll' = QuestsResetAll'
    { _qraQuotaUser   :: !(Maybe Text)
    , _qraPrettyPrint :: !Bool
    , _qraUserIP      :: !(Maybe Text)
    , _qraKey         :: !(Maybe Key)
    , _qraOAuthToken  :: !(Maybe OAuthToken)
    , _qraFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qraQuotaUser'
--
-- * 'qraPrettyPrint'
--
-- * 'qraUserIP'
--
-- * 'qraKey'
--
-- * 'qraOAuthToken'
--
-- * 'qraFields'
questsResetAll'
    :: QuestsResetAll'
questsResetAll' =
    QuestsResetAll'
    { _qraQuotaUser = Nothing
    , _qraPrettyPrint = True
    , _qraUserIP = Nothing
    , _qraKey = Nothing
    , _qraOAuthToken = Nothing
    , _qraFields = Nothing
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
qraUserIP :: Lens' QuestsResetAll' (Maybe Text)
qraUserIP
  = lens _qraUserIP (\ s a -> s{_qraUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qraKey :: Lens' QuestsResetAll' (Maybe Key)
qraKey = lens _qraKey (\ s a -> s{_qraKey = a})

-- | OAuth 2.0 token for the current user.
qraOAuthToken :: Lens' QuestsResetAll' (Maybe OAuthToken)
qraOAuthToken
  = lens _qraOAuthToken
      (\ s a -> s{_qraOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qraFields :: Lens' QuestsResetAll' (Maybe Text)
qraFields
  = lens _qraFields (\ s a -> s{_qraFields = a})

instance GoogleAuth QuestsResetAll' where
        authKey = qraKey . _Just
        authToken = qraOAuthToken . _Just

instance GoogleRequest QuestsResetAll' where
        type Rs QuestsResetAll' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u QuestsResetAll'{..}
          = go _qraQuotaUser (Just _qraPrettyPrint) _qraUserIP
              _qraKey
              _qraOAuthToken
              _qraFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QuestsResetAllResource)
                      r
                      u
