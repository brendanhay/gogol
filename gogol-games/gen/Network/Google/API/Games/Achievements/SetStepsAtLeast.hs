{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Achievements.SetStepsAtLeast
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the steps for the currently authenticated player towards unlocking
-- an achievement. If the steps parameter is less than the current number
-- of steps that the player already gained for the achievement, the
-- achievement is not modified.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.setStepsAtLeast@.
module Network.Google.API.Games.Achievements.SetStepsAtLeast
    (
    -- * REST Resource
      AchievementsSetStepsAtLeastAPI

    -- * Creating a Request
    , achievementsSetStepsAtLeast'
    , AchievementsSetStepsAtLeast'

    -- * Request Lenses
    , assalQuotaUser
    , assalPrettyPrint
    , assalAchievementId
    , assalUserIp
    , assalSteps
    , assalKey
    , assalOauthToken
    , assalFields
    , assalAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.achievements.setStepsAtLeast which the
-- 'AchievementsSetStepsAtLeast'' request conforms to.
type AchievementsSetStepsAtLeastAPI =
     "achievements" :>
       Capture "achievementId" Text :>
         "setStepsAtLeast" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "steps" Nat :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] AchievementSetStepsAtLeastResponse

-- | Sets the steps for the currently authenticated player towards unlocking
-- an achievement. If the steps parameter is less than the current number
-- of steps that the player already gained for the achievement, the
-- achievement is not modified.
--
-- /See:/ 'achievementsSetStepsAtLeast'' smart constructor.
data AchievementsSetStepsAtLeast' = AchievementsSetStepsAtLeast'
    { _assalQuotaUser     :: !(Maybe Text)
    , _assalPrettyPrint   :: !Bool
    , _assalAchievementId :: !Text
    , _assalUserIp        :: !(Maybe Text)
    , _assalSteps         :: !Nat
    , _assalKey           :: !(Maybe Text)
    , _assalOauthToken    :: !(Maybe Text)
    , _assalFields        :: !(Maybe Text)
    , _assalAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsSetStepsAtLeast'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assalQuotaUser'
--
-- * 'assalPrettyPrint'
--
-- * 'assalAchievementId'
--
-- * 'assalUserIp'
--
-- * 'assalSteps'
--
-- * 'assalKey'
--
-- * 'assalOauthToken'
--
-- * 'assalFields'
--
-- * 'assalAlt'
achievementsSetStepsAtLeast'
    :: Text -- ^ 'achievementId'
    -> Natural -- ^ 'steps'
    -> AchievementsSetStepsAtLeast'
achievementsSetStepsAtLeast' pAssalAchievementId_ pAssalSteps_ =
    AchievementsSetStepsAtLeast'
    { _assalQuotaUser = Nothing
    , _assalPrettyPrint = True
    , _assalAchievementId = pAssalAchievementId_
    , _assalUserIp = Nothing
    , _assalSteps = pAssalSteps_
    , _assalKey = Nothing
    , _assalOauthToken = Nothing
    , _assalFields = Nothing
    , _assalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
assalQuotaUser :: Lens' AchievementsSetStepsAtLeast' (Maybe Text)
assalQuotaUser
  = lens _assalQuotaUser
      (\ s a -> s{_assalQuotaUser = a})

-- | Returns response with indentations and line breaks.
assalPrettyPrint :: Lens' AchievementsSetStepsAtLeast' Bool
assalPrettyPrint
  = lens _assalPrettyPrint
      (\ s a -> s{_assalPrettyPrint = a})

-- | The ID of the achievement used by this method.
assalAchievementId :: Lens' AchievementsSetStepsAtLeast' Text
assalAchievementId
  = lens _assalAchievementId
      (\ s a -> s{_assalAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
assalUserIp :: Lens' AchievementsSetStepsAtLeast' (Maybe Text)
assalUserIp
  = lens _assalUserIp (\ s a -> s{_assalUserIp = a})

-- | The minimum value to set the steps to.
assalSteps :: Lens' AchievementsSetStepsAtLeast' Natural
assalSteps
  = lens _assalSteps (\ s a -> s{_assalSteps = a}) .
      _Nat

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assalKey :: Lens' AchievementsSetStepsAtLeast' (Maybe Text)
assalKey = lens _assalKey (\ s a -> s{_assalKey = a})

-- | OAuth 2.0 token for the current user.
assalOauthToken :: Lens' AchievementsSetStepsAtLeast' (Maybe Text)
assalOauthToken
  = lens _assalOauthToken
      (\ s a -> s{_assalOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
assalFields :: Lens' AchievementsSetStepsAtLeast' (Maybe Text)
assalFields
  = lens _assalFields (\ s a -> s{_assalFields = a})

-- | Data format for the response.
assalAlt :: Lens' AchievementsSetStepsAtLeast' Alt
assalAlt = lens _assalAlt (\ s a -> s{_assalAlt = a})

instance GoogleRequest AchievementsSetStepsAtLeast'
         where
        type Rs AchievementsSetStepsAtLeast' =
             AchievementSetStepsAtLeastResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsSetStepsAtLeast'{..}
          = go _assalQuotaUser (Just _assalPrettyPrint)
              _assalAchievementId
              _assalUserIp
              (Just _assalSteps)
              _assalKey
              _assalOauthToken
              _assalFields
              (Just _assalAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsSetStepsAtLeastAPI)
                      r
                      u
