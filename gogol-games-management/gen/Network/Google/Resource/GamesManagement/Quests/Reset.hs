{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Quests.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all player progress on the quest with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementQuestsReset@.
module Network.Google.Resource.GamesManagement.Quests.Reset
    (
    -- * REST Resource
      QuestsResetResource

    -- * Creating a Request
    , questsReset'
    , QuestsReset'

    -- * Request Lenses
    , qrQuotaUser
    , qrPrettyPrint
    , qrUserIP
    , qrKey
    , qrOAuthToken
    , qrQuestId
    , qrFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsReset@ which the
-- 'QuestsReset'' request conforms to.
type QuestsResetResource =
     "quests" :>
       Capture "questId" Text :>
         "reset" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on the quest with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application.
--
-- /See:/ 'questsReset'' smart constructor.
data QuestsReset' = QuestsReset'
    { _qrQuotaUser   :: !(Maybe Text)
    , _qrPrettyPrint :: !Bool
    , _qrUserIP      :: !(Maybe Text)
    , _qrKey         :: !(Maybe Key)
    , _qrOAuthToken  :: !(Maybe OAuthToken)
    , _qrQuestId     :: !Text
    , _qrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrQuotaUser'
--
-- * 'qrPrettyPrint'
--
-- * 'qrUserIP'
--
-- * 'qrKey'
--
-- * 'qrOAuthToken'
--
-- * 'qrQuestId'
--
-- * 'qrFields'
questsReset'
    :: Text -- ^ 'questId'
    -> QuestsReset'
questsReset' pQrQuestId_ =
    QuestsReset'
    { _qrQuotaUser = Nothing
    , _qrPrettyPrint = True
    , _qrUserIP = Nothing
    , _qrKey = Nothing
    , _qrOAuthToken = Nothing
    , _qrQuestId = pQrQuestId_
    , _qrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qrQuotaUser :: Lens' QuestsReset' (Maybe Text)
qrQuotaUser
  = lens _qrQuotaUser (\ s a -> s{_qrQuotaUser = a})

-- | Returns response with indentations and line breaks.
qrPrettyPrint :: Lens' QuestsReset' Bool
qrPrettyPrint
  = lens _qrPrettyPrint
      (\ s a -> s{_qrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qrUserIP :: Lens' QuestsReset' (Maybe Text)
qrUserIP = lens _qrUserIP (\ s a -> s{_qrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrKey :: Lens' QuestsReset' (Maybe Key)
qrKey = lens _qrKey (\ s a -> s{_qrKey = a})

-- | OAuth 2.0 token for the current user.
qrOAuthToken :: Lens' QuestsReset' (Maybe OAuthToken)
qrOAuthToken
  = lens _qrOAuthToken (\ s a -> s{_qrOAuthToken = a})

-- | The ID of the quest.
qrQuestId :: Lens' QuestsReset' Text
qrQuestId
  = lens _qrQuestId (\ s a -> s{_qrQuestId = a})

-- | Selector specifying which fields to include in a partial response.
qrFields :: Lens' QuestsReset' (Maybe Text)
qrFields = lens _qrFields (\ s a -> s{_qrFields = a})

instance GoogleAuth QuestsReset' where
        authKey = qrKey . _Just
        authToken = qrOAuthToken . _Just

instance GoogleRequest QuestsReset' where
        type Rs QuestsReset' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u QuestsReset'{..}
          = go _qrQuestId _qrQuotaUser (Just _qrPrettyPrint)
              _qrUserIP
              _qrFields
              _qrKey
              _qrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QuestsResetResource)
                      r
                      u
