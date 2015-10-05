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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets the achievement with the given ID for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements can be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementAchievementsResetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Achievements.ResetForAllPlayers
    (
    -- * REST Resource
      AchievementsResetForAllPlayersResource

    -- * Creating a Request
    , achievementsResetForAllPlayers'
    , AchievementsResetForAllPlayers'

    -- * Request Lenses
    , arfapQuotaUser
    , arfapPrettyPrint
    , arfapAchievementId
    , arfapUserIP
    , arfapKey
    , arfapOAuthToken
    , arfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementAchievementsResetForAllPlayers@ which the
-- 'AchievementsResetForAllPlayers'' request conforms to.
type AchievementsResetForAllPlayersResource =
     "achievements" :>
       Capture "achievementId" Text :>
         "resetForAllPlayers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets the achievement with the given ID for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements can be reset.
--
-- /See:/ 'achievementsResetForAllPlayers'' smart constructor.
data AchievementsResetForAllPlayers' = AchievementsResetForAllPlayers'
    { _arfapQuotaUser     :: !(Maybe Text)
    , _arfapPrettyPrint   :: !Bool
    , _arfapAchievementId :: !Text
    , _arfapUserIP        :: !(Maybe Text)
    , _arfapKey           :: !(Maybe AuthKey)
    , _arfapOAuthToken    :: !(Maybe OAuthToken)
    , _arfapFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arfapQuotaUser'
--
-- * 'arfapPrettyPrint'
--
-- * 'arfapAchievementId'
--
-- * 'arfapUserIP'
--
-- * 'arfapKey'
--
-- * 'arfapOAuthToken'
--
-- * 'arfapFields'
achievementsResetForAllPlayers'
    :: Text -- ^ 'achievementId'
    -> AchievementsResetForAllPlayers'
achievementsResetForAllPlayers' pArfapAchievementId_ =
    AchievementsResetForAllPlayers'
    { _arfapQuotaUser = Nothing
    , _arfapPrettyPrint = True
    , _arfapAchievementId = pArfapAchievementId_
    , _arfapUserIP = Nothing
    , _arfapKey = Nothing
    , _arfapOAuthToken = Nothing
    , _arfapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
arfapQuotaUser :: Lens' AchievementsResetForAllPlayers' (Maybe Text)
arfapQuotaUser
  = lens _arfapQuotaUser
      (\ s a -> s{_arfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
arfapPrettyPrint :: Lens' AchievementsResetForAllPlayers' Bool
arfapPrettyPrint
  = lens _arfapPrettyPrint
      (\ s a -> s{_arfapPrettyPrint = a})

-- | The ID of the achievement used by this method.
arfapAchievementId :: Lens' AchievementsResetForAllPlayers' Text
arfapAchievementId
  = lens _arfapAchievementId
      (\ s a -> s{_arfapAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
arfapUserIP :: Lens' AchievementsResetForAllPlayers' (Maybe Text)
arfapUserIP
  = lens _arfapUserIP (\ s a -> s{_arfapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arfapKey :: Lens' AchievementsResetForAllPlayers' (Maybe AuthKey)
arfapKey = lens _arfapKey (\ s a -> s{_arfapKey = a})

-- | OAuth 2.0 token for the current user.
arfapOAuthToken :: Lens' AchievementsResetForAllPlayers' (Maybe OAuthToken)
arfapOAuthToken
  = lens _arfapOAuthToken
      (\ s a -> s{_arfapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
arfapFields :: Lens' AchievementsResetForAllPlayers' (Maybe Text)
arfapFields
  = lens _arfapFields (\ s a -> s{_arfapFields = a})

instance GoogleAuth AchievementsResetForAllPlayers'
         where
        authKey = arfapKey . _Just
        authToken = arfapOAuthToken . _Just

instance GoogleRequest
         AchievementsResetForAllPlayers' where
        type Rs AchievementsResetForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          AchievementsResetForAllPlayers'{..}
          = go _arfapAchievementId _arfapQuotaUser
              (Just _arfapPrettyPrint)
              _arfapUserIP
              _arfapFields
              _arfapKey
              _arfapOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AchievementsResetForAllPlayersResource)
                      r
                      u
