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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unlocks this achievement for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.unlock@.
module Network.Google.Resource.Games.Achievements.Unlock
    (
    -- * REST Resource
      AchievementsUnlockResource

    -- * Creating a Request
    , achievementsUnlock
    , AchievementsUnlock

    -- * Request Lenses
    , auAchievementId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.achievements.unlock@ method which the
-- 'AchievementsUnlock' request conforms to.
type AchievementsUnlockResource =
     "games" :>
       "v1" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "unlock" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] AchievementUnlockResponse

-- | Unlocks this achievement for the currently authenticated player.
--
-- /See:/ 'achievementsUnlock' smart constructor.
newtype AchievementsUnlock = AchievementsUnlock
    { _auAchievementId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsUnlock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auAchievementId'
achievementsUnlock
    :: Text -- ^ 'auAchievementId'
    -> AchievementsUnlock
achievementsUnlock pAuAchievementId_ =
    AchievementsUnlock
    { _auAchievementId = pAuAchievementId_
    }

-- | The ID of the achievement used by this method.
auAchievementId :: Lens' AchievementsUnlock Text
auAchievementId
  = lens _auAchievementId
      (\ s a -> s{_auAchievementId = a})

instance GoogleRequest AchievementsUnlock where
        type Rs AchievementsUnlock =
             AchievementUnlockResponse
        requestClient AchievementsUnlock{..}
          = go _auAchievementId (Just AltJSON) gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsUnlockResource)
                      mempty
