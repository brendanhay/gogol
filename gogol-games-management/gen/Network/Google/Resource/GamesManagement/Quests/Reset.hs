{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module GamesManagement.Quests.Reset
    (
    -- * REST Resource
      QuestsResetAPI

    -- * Creating a Request
    , questsReset
    , QuestsReset

    -- * Request Lenses
    , qrQuotaUser
    , qrPrettyPrint
    , qrUserIp
    , qrKey
    , qrOauthToken
    , qrQuestId
    , qrFields
    , qrAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsReset@ which the
-- 'QuestsReset' request conforms to.
type QuestsResetAPI =
     "quests" :>
       Capture "questId" Text :> "reset" :> Post '[JSON] ()

-- | Resets all player progress on the quest with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application.
--
-- /See:/ 'questsReset' smart constructor.
data QuestsReset = QuestsReset
    { _qrQuotaUser   :: !(Maybe Text)
    , _qrPrettyPrint :: !Bool
    , _qrUserIp      :: !(Maybe Text)
    , _qrKey         :: !(Maybe Text)
    , _qrOauthToken  :: !(Maybe Text)
    , _qrQuestId     :: !Text
    , _qrFields      :: !(Maybe Text)
    , _qrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrQuotaUser'
--
-- * 'qrPrettyPrint'
--
-- * 'qrUserIp'
--
-- * 'qrKey'
--
-- * 'qrOauthToken'
--
-- * 'qrQuestId'
--
-- * 'qrFields'
--
-- * 'qrAlt'
questsReset
    :: Text -- ^ 'questId'
    -> QuestsReset
questsReset pQrQuestId_ =
    QuestsReset
    { _qrQuotaUser = Nothing
    , _qrPrettyPrint = True
    , _qrUserIp = Nothing
    , _qrKey = Nothing
    , _qrOauthToken = Nothing
    , _qrQuestId = pQrQuestId_
    , _qrFields = Nothing
    , _qrAlt = "json"
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
qrUserIp :: Lens' QuestsReset' (Maybe Text)
qrUserIp = lens _qrUserIp (\ s a -> s{_qrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrKey :: Lens' QuestsReset' (Maybe Text)
qrKey = lens _qrKey (\ s a -> s{_qrKey = a})

-- | OAuth 2.0 token for the current user.
qrOauthToken :: Lens' QuestsReset' (Maybe Text)
qrOauthToken
  = lens _qrOauthToken (\ s a -> s{_qrOauthToken = a})

-- | The ID of the quest.
qrQuestId :: Lens' QuestsReset' Text
qrQuestId
  = lens _qrQuestId (\ s a -> s{_qrQuestId = a})

-- | Selector specifying which fields to include in a partial response.
qrFields :: Lens' QuestsReset' (Maybe Text)
qrFields = lens _qrFields (\ s a -> s{_qrFields = a})

-- | Data format for the response.
qrAlt :: Lens' QuestsReset' Text
qrAlt = lens _qrAlt (\ s a -> s{_qrAlt = a})

instance GoogleRequest QuestsReset' where
        type Rs QuestsReset' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u QuestsReset{..}
          = go _qrQuotaUser _qrPrettyPrint _qrUserIp _qrKey
              _qrOauthToken
              _qrQuestId
              _qrFields
              _qrAlt
          where go
                  = clientWithRoute (Proxy :: Proxy QuestsResetAPI) r u
