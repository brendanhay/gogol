{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Achievements.ResetAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all achievements for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementAchievementsResetAll@.
module Network.Google.Resource.GamesManagement.Achievements.ResetAll
    (
    -- * REST Resource
      AchievementsResetAllResource

    -- * Creating a Request
    , achievementsResetAll'
    , AchievementsResetAll'

    -- * Request Lenses
    , araQuotaUser
    , araPrettyPrint
    , araUserIP
    , araKey
    , araOAuthToken
    , araFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementAchievementsResetAll@ which the
-- 'AchievementsResetAll'' request conforms to.
type AchievementsResetAllResource =
     "achievements" :>
       "reset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Post '[JSON] AchievementResetAllResponse

-- | Resets all achievements for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ 'achievementsResetAll'' smart constructor.
data AchievementsResetAll' = AchievementsResetAll'
    { _araQuotaUser   :: !(Maybe Text)
    , _araPrettyPrint :: !Bool
    , _araUserIP      :: !(Maybe Text)
    , _araKey         :: !(Maybe Key)
    , _araOAuthToken  :: !(Maybe OAuthToken)
    , _araFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'araQuotaUser'
--
-- * 'araPrettyPrint'
--
-- * 'araUserIP'
--
-- * 'araKey'
--
-- * 'araOAuthToken'
--
-- * 'araFields'
achievementsResetAll'
    :: AchievementsResetAll'
achievementsResetAll' =
    AchievementsResetAll'
    { _araQuotaUser = Nothing
    , _araPrettyPrint = True
    , _araUserIP = Nothing
    , _araKey = Nothing
    , _araOAuthToken = Nothing
    , _araFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
araQuotaUser :: Lens' AchievementsResetAll' (Maybe Text)
araQuotaUser
  = lens _araQuotaUser (\ s a -> s{_araQuotaUser = a})

-- | Returns response with indentations and line breaks.
araPrettyPrint :: Lens' AchievementsResetAll' Bool
araPrettyPrint
  = lens _araPrettyPrint
      (\ s a -> s{_araPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
araUserIP :: Lens' AchievementsResetAll' (Maybe Text)
araUserIP
  = lens _araUserIP (\ s a -> s{_araUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
araKey :: Lens' AchievementsResetAll' (Maybe Key)
araKey = lens _araKey (\ s a -> s{_araKey = a})

-- | OAuth 2.0 token for the current user.
araOAuthToken :: Lens' AchievementsResetAll' (Maybe OAuthToken)
araOAuthToken
  = lens _araOAuthToken
      (\ s a -> s{_araOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
araFields :: Lens' AchievementsResetAll' (Maybe Text)
araFields
  = lens _araFields (\ s a -> s{_araFields = a})

instance GoogleAuth AchievementsResetAll' where
        authKey = araKey . _Just
        authToken = araOAuthToken . _Just

instance GoogleRequest AchievementsResetAll' where
        type Rs AchievementsResetAll' =
             AchievementResetAllResponse
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u AchievementsResetAll'{..}
          = go _araQuotaUser (Just _araPrettyPrint) _araUserIP
              _araFields
              _araKey
              _araOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsResetAllResource)
                      r
                      u
