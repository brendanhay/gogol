{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Achievements.Reveal
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the state of the achievement with the given ID to REVEALED for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.reveal@.
module Network.Google.API.Games.Achievements.Reveal
    (
    -- * REST Resource
      AchievementsRevealAPI

    -- * Creating a Request
    , achievementsReveal'
    , AchievementsReveal'

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

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.achievements.reveal which the
-- 'AchievementsReveal'' request conforms to.
type AchievementsRevealAPI =
     "achievements" :>
       Capture "achievementId" Text :>
         "reveal" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] AchievementRevealResponse

-- | Sets the state of the achievement with the given ID to REVEALED for the
-- currently authenticated player.
--
-- /See:/ 'achievementsReveal'' smart constructor.
data AchievementsReveal' = AchievementsReveal'
    { _arQuotaUser     :: !(Maybe Text)
    , _arPrettyPrint   :: !Bool
    , _arAchievementId :: !Text
    , _arUserIp        :: !(Maybe Text)
    , _arKey           :: !(Maybe Text)
    , _arOauthToken    :: !(Maybe Text)
    , _arFields        :: !(Maybe Text)
    , _arAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsReveal'' with the minimum fields required to make a request.
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
achievementsReveal'
    :: Text -- ^ 'achievementId'
    -> AchievementsReveal'
achievementsReveal' pArAchievementId_ =
    AchievementsReveal'
    { _arQuotaUser = Nothing
    , _arPrettyPrint = True
    , _arAchievementId = pArAchievementId_
    , _arUserIp = Nothing
    , _arKey = Nothing
    , _arOauthToken = Nothing
    , _arFields = Nothing
    , _arAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
arQuotaUser :: Lens' AchievementsReveal' (Maybe Text)
arQuotaUser
  = lens _arQuotaUser (\ s a -> s{_arQuotaUser = a})

-- | Returns response with indentations and line breaks.
arPrettyPrint :: Lens' AchievementsReveal' Bool
arPrettyPrint
  = lens _arPrettyPrint
      (\ s a -> s{_arPrettyPrint = a})

-- | The ID of the achievement used by this method.
arAchievementId :: Lens' AchievementsReveal' Text
arAchievementId
  = lens _arAchievementId
      (\ s a -> s{_arAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
arUserIp :: Lens' AchievementsReveal' (Maybe Text)
arUserIp = lens _arUserIp (\ s a -> s{_arUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arKey :: Lens' AchievementsReveal' (Maybe Text)
arKey = lens _arKey (\ s a -> s{_arKey = a})

-- | OAuth 2.0 token for the current user.
arOauthToken :: Lens' AchievementsReveal' (Maybe Text)
arOauthToken
  = lens _arOauthToken (\ s a -> s{_arOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
arFields :: Lens' AchievementsReveal' (Maybe Text)
arFields = lens _arFields (\ s a -> s{_arFields = a})

-- | Data format for the response.
arAlt :: Lens' AchievementsReveal' Alt
arAlt = lens _arAlt (\ s a -> s{_arAlt = a})

instance GoogleRequest AchievementsReveal' where
        type Rs AchievementsReveal' =
             AchievementRevealResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsReveal'{..}
          = go _arQuotaUser (Just _arPrettyPrint)
              _arAchievementId
              _arUserIp
              _arKey
              _arOauthToken
              _arFields
              (Just _arAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsRevealAPI)
                      r
                      u
