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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the state of the achievement with the given ID to REVEALED for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.reveal@.
module Network.Google.Resource.Games.Achievements.Reveal
    (
    -- * REST Resource
      AchievementsRevealResource

    -- * Creating a Request
    , achievementsReveal
    , AchievementsReveal

    -- * Request Lenses
    , arAchievementId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.achievements.reveal@ method which the
-- 'AchievementsReveal' request conforms to.
type AchievementsRevealResource =
     "games" :>
       "v1" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "reveal" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] AchievementRevealResponse

-- | Sets the state of the achievement with the given ID to REVEALED for the
-- currently authenticated player.
--
-- /See:/ 'achievementsReveal' smart constructor.
newtype AchievementsReveal =
  AchievementsReveal'
    { _arAchievementId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsReveal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arAchievementId'
achievementsReveal
    :: Text -- ^ 'arAchievementId'
    -> AchievementsReveal
achievementsReveal pArAchievementId_ =
  AchievementsReveal' {_arAchievementId = pArAchievementId_}


-- | The ID of the achievement used by this method.
arAchievementId :: Lens' AchievementsReveal Text
arAchievementId
  = lens _arAchievementId
      (\ s a -> s{_arAchievementId = a})

instance GoogleRequest AchievementsReveal where
        type Rs AchievementsReveal =
             AchievementRevealResponse
        type Scopes AchievementsReveal =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient AchievementsReveal'{..}
          = go _arAchievementId (Just AltJSON) gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsRevealResource)
                      mempty
