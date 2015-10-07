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
-- Module      : Network.Google.Resource.Games.Achievements.Unlock
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unlocks this achievement for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesAchievementsUnlock@.
module Network.Google.Resource.Games.Achievements.Unlock
    (
    -- * REST Resource
      AchievementsUnlockResource

    -- * Creating a Request
    , achievementsUnlock'
    , AchievementsUnlock'

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auAchievementId
    , auUserIP
    , auKey
    , auOAuthToken
    , auFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementsUnlock@ method which the
-- 'AchievementsUnlock'' request conforms to.
type AchievementsUnlockResource =
     "achievements" :>
       Capture "achievementId" Text :>
         "unlock" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] AchievementUnlockResponse

-- | Unlocks this achievement for the currently authenticated player.
--
-- /See:/ 'achievementsUnlock'' smart constructor.
data AchievementsUnlock' = AchievementsUnlock'
    { _auQuotaUser     :: !(Maybe Text)
    , _auPrettyPrint   :: !Bool
    , _auAchievementId :: !Text
    , _auUserIP        :: !(Maybe Text)
    , _auKey           :: !(Maybe AuthKey)
    , _auOAuthToken    :: !(Maybe OAuthToken)
    , _auFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsUnlock'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auAchievementId'
--
-- * 'auUserIP'
--
-- * 'auKey'
--
-- * 'auOAuthToken'
--
-- * 'auFields'
achievementsUnlock'
    :: Text -- ^ 'achievementId'
    -> AchievementsUnlock'
achievementsUnlock' pAuAchievementId_ =
    AchievementsUnlock'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auAchievementId = pAuAchievementId_
    , _auUserIP = Nothing
    , _auKey = Nothing
    , _auOAuthToken = Nothing
    , _auFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AchievementsUnlock' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AchievementsUnlock' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | The ID of the achievement used by this method.
auAchievementId :: Lens' AchievementsUnlock' Text
auAchievementId
  = lens _auAchievementId
      (\ s a -> s{_auAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIP :: Lens' AchievementsUnlock' (Maybe Text)
auUserIP = lens _auUserIP (\ s a -> s{_auUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AchievementsUnlock' (Maybe AuthKey)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | OAuth 2.0 token for the current user.
auOAuthToken :: Lens' AchievementsUnlock' (Maybe OAuthToken)
auOAuthToken
  = lens _auOAuthToken (\ s a -> s{_auOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AchievementsUnlock' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

instance GoogleAuth AchievementsUnlock' where
        _AuthKey = auKey . _Just
        _AuthToken = auOAuthToken . _Just

instance GoogleRequest AchievementsUnlock' where
        type Rs AchievementsUnlock' =
             AchievementUnlockResponse
        request = requestWith gamesRequest
        requestWith rq AchievementsUnlock'{..}
          = go _auAchievementId _auQuotaUser
              (Just _auPrettyPrint)
              _auUserIP
              _auFields
              _auKey
              _auOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AchievementsUnlockResource)
                      rq
