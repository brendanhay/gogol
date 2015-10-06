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
-- Module      : Network.Google.Resource.Games.Achievements.Reveal
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the state of the achievement with the given ID to REVEALED for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesAchievementsReveal@.
module Network.Google.Resource.Games.Achievements.Reveal
    (
    -- * REST Resource
      AchievementsRevealResource

    -- * Creating a Request
    , achievementsReveal'
    , AchievementsReveal'

    -- * Request Lenses
    , arQuotaUser
    , arPrettyPrint
    , arAchievementId
    , arUserIP
    , arKey
    , arOAuthToken
    , arFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementsReveal@ which the
-- 'AchievementsReveal'' request conforms to.
type AchievementsRevealResource =
     "achievements" :>
       Capture "achievementId" Text :>
         "reveal" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] AchievementRevealResponse

-- | Sets the state of the achievement with the given ID to REVEALED for the
-- currently authenticated player.
--
-- /See:/ 'achievementsReveal'' smart constructor.
data AchievementsReveal' = AchievementsReveal'
    { _arQuotaUser     :: !(Maybe Text)
    , _arPrettyPrint   :: !Bool
    , _arAchievementId :: !Text
    , _arUserIP        :: !(Maybe Text)
    , _arKey           :: !(Maybe AuthKey)
    , _arOAuthToken    :: !(Maybe OAuthToken)
    , _arFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'arUserIP'
--
-- * 'arKey'
--
-- * 'arOAuthToken'
--
-- * 'arFields'
achievementsReveal'
    :: Text -- ^ 'achievementId'
    -> AchievementsReveal'
achievementsReveal' pArAchievementId_ =
    AchievementsReveal'
    { _arQuotaUser = Nothing
    , _arPrettyPrint = True
    , _arAchievementId = pArAchievementId_
    , _arUserIP = Nothing
    , _arKey = Nothing
    , _arOAuthToken = Nothing
    , _arFields = Nothing
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
arUserIP :: Lens' AchievementsReveal' (Maybe Text)
arUserIP = lens _arUserIP (\ s a -> s{_arUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arKey :: Lens' AchievementsReveal' (Maybe AuthKey)
arKey = lens _arKey (\ s a -> s{_arKey = a})

-- | OAuth 2.0 token for the current user.
arOAuthToken :: Lens' AchievementsReveal' (Maybe OAuthToken)
arOAuthToken
  = lens _arOAuthToken (\ s a -> s{_arOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
arFields :: Lens' AchievementsReveal' (Maybe Text)
arFields = lens _arFields (\ s a -> s{_arFields = a})

instance GoogleAuth AchievementsReveal' where
        _AuthKey = arKey . _Just
        _AuthToken = arOAuthToken . _Just

instance GoogleRequest AchievementsReveal' where
        type Rs AchievementsReveal' =
             AchievementRevealResponse
        request = requestWith gamesRequest
        requestWith rq AchievementsReveal'{..}
          = go _arAchievementId _arQuotaUser
              (Just _arPrettyPrint)
              _arUserIP
              _arFields
              _arKey
              _arOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AchievementsRevealResource)
                      rq
