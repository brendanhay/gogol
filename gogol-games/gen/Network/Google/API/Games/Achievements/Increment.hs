{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Achievements.Increment
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Increments the steps of the achievement with the given ID for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.increment@.
module Network.Google.API.Games.Achievements.Increment
    (
    -- * REST Resource
      AchievementsIncrementAPI

    -- * Creating a Request
    , achievementsIncrement'
    , AchievementsIncrement'

    -- * Request Lenses
    , aiRequestId
    , aiQuotaUser
    , aiPrettyPrint
    , aiAchievementId
    , aiUserIp
    , aiKey
    , aiOauthToken
    , aiStepsToIncrement
    , aiFields
    , aiAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.achievements.increment which the
-- 'AchievementsIncrement'' request conforms to.
type AchievementsIncrementAPI =
     "achievements" :>
       Capture "achievementId" Text :>
         "increment" :>
           QueryParam "requestId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "stepsToIncrement" Nat :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON] AchievementIncrementResponse

-- | Increments the steps of the achievement with the given ID for the
-- currently authenticated player.
--
-- /See:/ 'achievementsIncrement'' smart constructor.
data AchievementsIncrement' = AchievementsIncrement'
    { _aiRequestId        :: !(Maybe Int64)
    , _aiQuotaUser        :: !(Maybe Text)
    , _aiPrettyPrint      :: !Bool
    , _aiAchievementId    :: !Text
    , _aiUserIp           :: !(Maybe Text)
    , _aiKey              :: !(Maybe Text)
    , _aiOauthToken       :: !(Maybe Text)
    , _aiStepsToIncrement :: !Nat
    , _aiFields           :: !(Maybe Text)
    , _aiAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsIncrement'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiRequestId'
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiAchievementId'
--
-- * 'aiUserIp'
--
-- * 'aiKey'
--
-- * 'aiOauthToken'
--
-- * 'aiStepsToIncrement'
--
-- * 'aiFields'
--
-- * 'aiAlt'
achievementsIncrement'
    :: Text -- ^ 'achievementId'
    -> Natural -- ^ 'stepsToIncrement'
    -> AchievementsIncrement'
achievementsIncrement' pAiAchievementId_ pAiStepsToIncrement_ =
    AchievementsIncrement'
    { _aiRequestId = Nothing
    , _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiAchievementId = pAiAchievementId_
    , _aiUserIp = Nothing
    , _aiKey = Nothing
    , _aiOauthToken = Nothing
    , _aiStepsToIncrement = pAiStepsToIncrement_
    , _aiFields = Nothing
    , _aiAlt = JSON
    }

-- | A randomly generated numeric ID for each request specified by the
-- caller. This number is used at the server to ensure that the request is
-- handled correctly across retries.
aiRequestId :: Lens' AchievementsIncrement' (Maybe Int64)
aiRequestId
  = lens _aiRequestId (\ s a -> s{_aiRequestId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' AchievementsIncrement' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' AchievementsIncrement' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | The ID of the achievement used by this method.
aiAchievementId :: Lens' AchievementsIncrement' Text
aiAchievementId
  = lens _aiAchievementId
      (\ s a -> s{_aiAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIp :: Lens' AchievementsIncrement' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AchievementsIncrement' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' AchievementsIncrement' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | The number of steps to increment.
aiStepsToIncrement :: Lens' AchievementsIncrement' Natural
aiStepsToIncrement
  = lens _aiStepsToIncrement
      (\ s a -> s{_aiStepsToIncrement = a})
      . _Nat

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AchievementsIncrement' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' AchievementsIncrement' Alt
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest AchievementsIncrement' where
        type Rs AchievementsIncrement' =
             AchievementIncrementResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsIncrement'{..}
          = go _aiRequestId _aiQuotaUser (Just _aiPrettyPrint)
              _aiAchievementId
              _aiUserIp
              _aiKey
              _aiOauthToken
              (Just _aiStepsToIncrement)
              _aiFields
              (Just _aiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsIncrementAPI)
                      r
                      u
