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
-- Module      : Network.Google.Resource.Games.Achievements.SetStepsAtLeast
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
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesAchievementsSetStepsAtLeast@.
module Network.Google.Resource.Games.Achievements.SetStepsAtLeast
    (
    -- * REST Resource
      AchievementsSetStepsAtLeastResource

    -- * Creating a Request
    , achievementsSetStepsAtLeast'
    , AchievementsSetStepsAtLeast'

    -- * Request Lenses
    , assalQuotaUser
    , assalPrettyPrint
    , assalAchievementId
    , assalUserIP
    , assalSteps
    , assalKey
    , assalOAuthToken
    , assalFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementsSetStepsAtLeast@ which the
-- 'AchievementsSetStepsAtLeast'' request conforms to.
type AchievementsSetStepsAtLeastResource =
     "achievements" :>
       Capture "achievementId" Text :>
         "setStepsAtLeast" :>
           QueryParam "steps" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
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
    , _assalUserIP        :: !(Maybe Text)
    , _assalSteps         :: !Int32
    , _assalKey           :: !(Maybe Key)
    , _assalOAuthToken    :: !(Maybe OAuthToken)
    , _assalFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'assalUserIP'
--
-- * 'assalSteps'
--
-- * 'assalKey'
--
-- * 'assalOAuthToken'
--
-- * 'assalFields'
achievementsSetStepsAtLeast'
    :: Text -- ^ 'achievementId'
    -> Int32 -- ^ 'steps'
    -> AchievementsSetStepsAtLeast'
achievementsSetStepsAtLeast' pAssalAchievementId_ pAssalSteps_ =
    AchievementsSetStepsAtLeast'
    { _assalQuotaUser = Nothing
    , _assalPrettyPrint = True
    , _assalAchievementId = pAssalAchievementId_
    , _assalUserIP = Nothing
    , _assalSteps = pAssalSteps_
    , _assalKey = Nothing
    , _assalOAuthToken = Nothing
    , _assalFields = Nothing
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
assalUserIP :: Lens' AchievementsSetStepsAtLeast' (Maybe Text)
assalUserIP
  = lens _assalUserIP (\ s a -> s{_assalUserIP = a})

-- | The minimum value to set the steps to.
assalSteps :: Lens' AchievementsSetStepsAtLeast' Int32
assalSteps
  = lens _assalSteps (\ s a -> s{_assalSteps = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assalKey :: Lens' AchievementsSetStepsAtLeast' (Maybe Key)
assalKey = lens _assalKey (\ s a -> s{_assalKey = a})

-- | OAuth 2.0 token for the current user.
assalOAuthToken :: Lens' AchievementsSetStepsAtLeast' (Maybe OAuthToken)
assalOAuthToken
  = lens _assalOAuthToken
      (\ s a -> s{_assalOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
assalFields :: Lens' AchievementsSetStepsAtLeast' (Maybe Text)
assalFields
  = lens _assalFields (\ s a -> s{_assalFields = a})

instance GoogleAuth AchievementsSetStepsAtLeast'
         where
        authKey = assalKey . _Just
        authToken = assalOAuthToken . _Just

instance GoogleRequest AchievementsSetStepsAtLeast'
         where
        type Rs AchievementsSetStepsAtLeast' =
             AchievementSetStepsAtLeastResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsSetStepsAtLeast'{..}
          = go _assalAchievementId (Just _assalSteps)
              _assalQuotaUser
              (Just _assalPrettyPrint)
              _assalUserIP
              _assalFields
              _assalKey
              _assalOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsSetStepsAtLeastResource)
                      r
                      u
