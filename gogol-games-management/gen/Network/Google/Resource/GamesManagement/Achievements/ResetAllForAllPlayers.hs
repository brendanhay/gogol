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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.ResetAllForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementAchievementsResetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Achievements.ResetAllForAllPlayers
    (
    -- * REST Resource
      AchievementsResetAllForAllPlayersResource

    -- * Creating a Request
    , achievementsResetAllForAllPlayers'
    , AchievementsResetAllForAllPlayers'

    -- * Request Lenses
    , arafapQuotaUser
    , arafapPrettyPrint
    , arafapUserIP
    , arafapKey
    , arafapOAuthToken
    , arafapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementAchievementsResetAllForAllPlayers@ which the
-- 'AchievementsResetAllForAllPlayers'' request conforms to.
type AchievementsResetAllForAllPlayersResource =
     "achievements" :>
       "resetAllForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ 'achievementsResetAllForAllPlayers'' smart constructor.
data AchievementsResetAllForAllPlayers' = AchievementsResetAllForAllPlayers'
    { _arafapQuotaUser   :: !(Maybe Text)
    , _arafapPrettyPrint :: !Bool
    , _arafapUserIP      :: !(Maybe Text)
    , _arafapKey         :: !(Maybe Key)
    , _arafapOAuthToken  :: !(Maybe OAuthToken)
    , _arafapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetAllForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arafapQuotaUser'
--
-- * 'arafapPrettyPrint'
--
-- * 'arafapUserIP'
--
-- * 'arafapKey'
--
-- * 'arafapOAuthToken'
--
-- * 'arafapFields'
achievementsResetAllForAllPlayers'
    :: AchievementsResetAllForAllPlayers'
achievementsResetAllForAllPlayers' =
    AchievementsResetAllForAllPlayers'
    { _arafapQuotaUser = Nothing
    , _arafapPrettyPrint = True
    , _arafapUserIP = Nothing
    , _arafapKey = Nothing
    , _arafapOAuthToken = Nothing
    , _arafapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
arafapQuotaUser :: Lens' AchievementsResetAllForAllPlayers' (Maybe Text)
arafapQuotaUser
  = lens _arafapQuotaUser
      (\ s a -> s{_arafapQuotaUser = a})

-- | Returns response with indentations and line breaks.
arafapPrettyPrint :: Lens' AchievementsResetAllForAllPlayers' Bool
arafapPrettyPrint
  = lens _arafapPrettyPrint
      (\ s a -> s{_arafapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
arafapUserIP :: Lens' AchievementsResetAllForAllPlayers' (Maybe Text)
arafapUserIP
  = lens _arafapUserIP (\ s a -> s{_arafapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arafapKey :: Lens' AchievementsResetAllForAllPlayers' (Maybe Key)
arafapKey
  = lens _arafapKey (\ s a -> s{_arafapKey = a})

-- | OAuth 2.0 token for the current user.
arafapOAuthToken :: Lens' AchievementsResetAllForAllPlayers' (Maybe OAuthToken)
arafapOAuthToken
  = lens _arafapOAuthToken
      (\ s a -> s{_arafapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
arafapFields :: Lens' AchievementsResetAllForAllPlayers' (Maybe Text)
arafapFields
  = lens _arafapFields (\ s a -> s{_arafapFields = a})

instance GoogleAuth
         AchievementsResetAllForAllPlayers' where
        authKey = arafapKey . _Just
        authToken = arafapOAuthToken . _Just

instance GoogleRequest
         AchievementsResetAllForAllPlayers' where
        type Rs AchievementsResetAllForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          AchievementsResetAllForAllPlayers'{..}
          = go _arafapQuotaUser (Just _arafapPrettyPrint)
              _arafapUserIP
              _arafapFields
              _arafapKey
              _arafapOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AchievementsResetAllForAllPlayersResource)
                      r
                      u
