{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Achievements.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets the achievement with the given ID for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementAchievementsReset@.
module GamesManagement.Achievements.Reset
    (
    -- * REST Resource
      AchievementsResetAPI

    -- * Creating a Request
    , achievementsReset
    , AchievementsReset

    -- * Request Lenses
    , arQuotaUser
    , arPrettyPrint
    , arAchievementId
    , arUserIp
    , arKey
    , arOauthToken
    , arFields
    , arAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementAchievementsReset@ which the
-- 'AchievementsReset' request conforms to.
type AchievementsResetAPI =
     "achievements" :>
       Capture "achievementId" Text :>
         "reset" :> Post '[JSON] AchievementResetResponse

-- | Resets the achievement with the given ID for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'achievementsReset' smart constructor.
data AchievementsReset = AchievementsReset
    { _arQuotaUser     :: !(Maybe Text)
    , _arPrettyPrint   :: !Bool
    , _arAchievementId :: !Text
    , _arUserIp        :: !(Maybe Text)
    , _arKey           :: !(Maybe Text)
    , _arOauthToken    :: !(Maybe Text)
    , _arFields        :: !(Maybe Text)
    , _arAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arQuotaUser'
--
-- * 'arPrettyPrint'
--
-- * 'arAchievementId'
--
-- * 'arUserIp'
--
-- * 'arKey'
--
-- * 'arOauthToken'
--
-- * 'arFields'
--
-- * 'arAlt'
achievementsReset
    :: Text -- ^ 'achievementId'
    -> AchievementsReset
achievementsReset pArAchievementId_ =
    AchievementsReset
    { _arQuotaUser = Nothing
    , _arPrettyPrint = True
    , _arAchievementId = pArAchievementId_
    , _arUserIp = Nothing
    , _arKey = Nothing
    , _arOauthToken = Nothing
    , _arFields = Nothing
    , _arAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
arQuotaUser :: Lens' AchievementsReset' (Maybe Text)
arQuotaUser
  = lens _arQuotaUser (\ s a -> s{_arQuotaUser = a})

-- | Returns response with indentations and line breaks.
arPrettyPrint :: Lens' AchievementsReset' Bool
arPrettyPrint
  = lens _arPrettyPrint
      (\ s a -> s{_arPrettyPrint = a})

-- | The ID of the achievement used by this method.
arAchievementId :: Lens' AchievementsReset' Text
arAchievementId
  = lens _arAchievementId
      (\ s a -> s{_arAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
arUserIp :: Lens' AchievementsReset' (Maybe Text)
arUserIp = lens _arUserIp (\ s a -> s{_arUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arKey :: Lens' AchievementsReset' (Maybe Text)
arKey = lens _arKey (\ s a -> s{_arKey = a})

-- | OAuth 2.0 token for the current user.
arOauthToken :: Lens' AchievementsReset' (Maybe Text)
arOauthToken
  = lens _arOauthToken (\ s a -> s{_arOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
arFields :: Lens' AchievementsReset' (Maybe Text)
arFields = lens _arFields (\ s a -> s{_arFields = a})

-- | Data format for the response.
arAlt :: Lens' AchievementsReset' Text
arAlt = lens _arAlt (\ s a -> s{_arAlt = a})

instance GoogleRequest AchievementsReset' where
        type Rs AchievementsReset' = AchievementResetResponse
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u AchievementsReset{..}
          = go _arQuotaUser _arPrettyPrint _arAchievementId
              _arUserIp
              _arKey
              _arOauthToken
              _arFields
              _arAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsResetAPI)
                      r
                      u
