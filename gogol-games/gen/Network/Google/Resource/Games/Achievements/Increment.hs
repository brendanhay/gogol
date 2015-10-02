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
-- Module      : Network.Google.Resource.Games.Achievements.Increment
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Increments the steps of the achievement with the given ID for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesAchievementsIncrement@.
module Network.Google.Resource.Games.Achievements.Increment
    (
    -- * REST Resource
      AchievementsIncrementResource

    -- * Creating a Request
    , achievementsIncrement'
    , AchievementsIncrement'

    -- * Request Lenses
    , aiRequestId
    , aiQuotaUser
    , aiPrettyPrint
    , aiAchievementId
    , aiUserIP
    , aiKey
    , aiOAuthToken
    , aiStepsToIncrement
    , aiFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementsIncrement@ which the
-- 'AchievementsIncrement'' request conforms to.
type AchievementsIncrementResource =
     "achievements" :>
       Capture "achievementId" Text :>
         "increment" :>
           QueryParam "requestId" Int64 :>
             QueryParam "stepsToIncrement" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
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
    , _aiUserIP           :: !(Maybe Text)
    , _aiKey              :: !(Maybe Key)
    , _aiOAuthToken       :: !(Maybe OAuthToken)
    , _aiStepsToIncrement :: !Int32
    , _aiFields           :: !(Maybe Text)
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
-- * 'aiUserIP'
--
-- * 'aiKey'
--
-- * 'aiOAuthToken'
--
-- * 'aiStepsToIncrement'
--
-- * 'aiFields'
achievementsIncrement'
    :: Text -- ^ 'achievementId'
    -> Int32 -- ^ 'stepsToIncrement'
    -> AchievementsIncrement'
achievementsIncrement' pAiAchievementId_ pAiStepsToIncrement_ =
    AchievementsIncrement'
    { _aiRequestId = Nothing
    , _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiAchievementId = pAiAchievementId_
    , _aiUserIP = Nothing
    , _aiKey = Nothing
    , _aiOAuthToken = Nothing
    , _aiStepsToIncrement = pAiStepsToIncrement_
    , _aiFields = Nothing
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
aiUserIP :: Lens' AchievementsIncrement' (Maybe Text)
aiUserIP = lens _aiUserIP (\ s a -> s{_aiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AchievementsIncrement' (Maybe Key)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOAuthToken :: Lens' AchievementsIncrement' (Maybe OAuthToken)
aiOAuthToken
  = lens _aiOAuthToken (\ s a -> s{_aiOAuthToken = a})

-- | The number of steps to increment.
aiStepsToIncrement :: Lens' AchievementsIncrement' Int32
aiStepsToIncrement
  = lens _aiStepsToIncrement
      (\ s a -> s{_aiStepsToIncrement = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AchievementsIncrement' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

instance GoogleAuth AchievementsIncrement' where
        authKey = aiKey . _Just
        authToken = aiOAuthToken . _Just

instance GoogleRequest AchievementsIncrement' where
        type Rs AchievementsIncrement' =
             AchievementIncrementResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsIncrement'{..}
          = go _aiRequestId _aiAchievementId
              (Just _aiStepsToIncrement)
              _aiQuotaUser
              (Just _aiPrettyPrint)
              _aiUserIP
              _aiFields
              _aiKey
              _aiOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsIncrementResource)
                      r
                      u
