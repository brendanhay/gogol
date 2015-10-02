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
-- Module      : Network.Google.Resource.Games.Achievements.UpdateMultiple
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates multiple achievements for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesAchievementsUpdateMultiple@.
module Network.Google.Resource.Games.Achievements.UpdateMultiple
    (
    -- * REST Resource
      AchievementsUpdateMultipleResource

    -- * Creating a Request
    , achievementsUpdateMultiple'
    , AchievementsUpdateMultiple'

    -- * Request Lenses
    , aumQuotaUser
    , aumPrettyPrint
    , aumUserIP
    , aumKey
    , aumAchievementUpdateMultipleRequest
    , aumOAuthToken
    , aumFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementsUpdateMultiple@ which the
-- 'AchievementsUpdateMultiple'' request conforms to.
type AchievementsUpdateMultipleResource =
     "achievements" :>
       "updateMultiple" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AchievementUpdateMultipleRequest :>
                         Post '[JSON] AchievementUpdateMultipleResponse

-- | Updates multiple achievements for the currently authenticated player.
--
-- /See:/ 'achievementsUpdateMultiple'' smart constructor.
data AchievementsUpdateMultiple' = AchievementsUpdateMultiple'
    { _aumQuotaUser                        :: !(Maybe Text)
    , _aumPrettyPrint                      :: !Bool
    , _aumUserIP                           :: !(Maybe Text)
    , _aumKey                              :: !(Maybe Key)
    , _aumAchievementUpdateMultipleRequest :: !AchievementUpdateMultipleRequest
    , _aumOAuthToken                       :: !(Maybe OAuthToken)
    , _aumFields                           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsUpdateMultiple'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aumQuotaUser'
--
-- * 'aumPrettyPrint'
--
-- * 'aumUserIP'
--
-- * 'aumKey'
--
-- * 'aumAchievementUpdateMultipleRequest'
--
-- * 'aumOAuthToken'
--
-- * 'aumFields'
achievementsUpdateMultiple'
    :: AchievementUpdateMultipleRequest -- ^ 'AchievementUpdateMultipleRequest'
    -> AchievementsUpdateMultiple'
achievementsUpdateMultiple' pAumAchievementUpdateMultipleRequest_ =
    AchievementsUpdateMultiple'
    { _aumQuotaUser = Nothing
    , _aumPrettyPrint = True
    , _aumUserIP = Nothing
    , _aumKey = Nothing
    , _aumAchievementUpdateMultipleRequest = pAumAchievementUpdateMultipleRequest_
    , _aumOAuthToken = Nothing
    , _aumFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aumQuotaUser :: Lens' AchievementsUpdateMultiple' (Maybe Text)
aumQuotaUser
  = lens _aumQuotaUser (\ s a -> s{_aumQuotaUser = a})

-- | Returns response with indentations and line breaks.
aumPrettyPrint :: Lens' AchievementsUpdateMultiple' Bool
aumPrettyPrint
  = lens _aumPrettyPrint
      (\ s a -> s{_aumPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aumUserIP :: Lens' AchievementsUpdateMultiple' (Maybe Text)
aumUserIP
  = lens _aumUserIP (\ s a -> s{_aumUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aumKey :: Lens' AchievementsUpdateMultiple' (Maybe Key)
aumKey = lens _aumKey (\ s a -> s{_aumKey = a})

-- | Multipart request metadata.
aumAchievementUpdateMultipleRequest :: Lens' AchievementsUpdateMultiple' AchievementUpdateMultipleRequest
aumAchievementUpdateMultipleRequest
  = lens _aumAchievementUpdateMultipleRequest
      (\ s a ->
         s{_aumAchievementUpdateMultipleRequest = a})

-- | OAuth 2.0 token for the current user.
aumOAuthToken :: Lens' AchievementsUpdateMultiple' (Maybe OAuthToken)
aumOAuthToken
  = lens _aumOAuthToken
      (\ s a -> s{_aumOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aumFields :: Lens' AchievementsUpdateMultiple' (Maybe Text)
aumFields
  = lens _aumFields (\ s a -> s{_aumFields = a})

instance GoogleAuth AchievementsUpdateMultiple' where
        authKey = aumKey . _Just
        authToken = aumOAuthToken . _Just

instance GoogleRequest AchievementsUpdateMultiple'
         where
        type Rs AchievementsUpdateMultiple' =
             AchievementUpdateMultipleResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsUpdateMultiple'{..}
          = go _aumQuotaUser (Just _aumPrettyPrint) _aumUserIP
              _aumKey
              _aumOAuthToken
              _aumFields
              (Just AltJSON)
              _aumAchievementUpdateMultipleRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsUpdateMultipleResource)
                      r
                      u
