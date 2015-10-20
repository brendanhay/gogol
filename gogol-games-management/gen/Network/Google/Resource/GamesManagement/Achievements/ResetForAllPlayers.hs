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
-- Resets the achievement with the given ID for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements can be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.achievements.resetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Achievements.ResetForAllPlayers
    (
    -- * REST Resource
      AchievementsResetForAllPlayersResource

    -- * Creating a Request
    , achievementsResetForAllPlayers
    , AchievementsResetForAllPlayers

    -- * Request Lenses
    , arfapAchievementId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.achievements.resetForAllPlayers@ method which the
-- 'AchievementsResetForAllPlayers' request conforms to.
type AchievementsResetForAllPlayersResource =
     "achievements" :>
       Capture "achievementId" Text :>
         "resetForAllPlayers" :>
           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets the achievement with the given ID for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements can be reset.
--
-- /See:/ 'achievementsResetForAllPlayers' smart constructor.
newtype AchievementsResetForAllPlayers = AchievementsResetForAllPlayers
    { _arfapAchievementId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arfapAchievementId'
achievementsResetForAllPlayers
    :: Text -- ^ 'arfapAchievementId'
    -> AchievementsResetForAllPlayers
achievementsResetForAllPlayers pArfapAchievementId_ =
    AchievementsResetForAllPlayers
    { _arfapAchievementId = pArfapAchievementId_
    }

-- | The ID of the achievement used by this method.
arfapAchievementId :: Lens' AchievementsResetForAllPlayers Text
arfapAchievementId
  = lens _arfapAchievementId
      (\ s a -> s{_arfapAchievementId = a})

instance GoogleRequest AchievementsResetForAllPlayers
         where
        type Rs AchievementsResetForAllPlayers = ()
        requestClient AchievementsResetForAllPlayers{..}
          = go _arfapAchievementId (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementsResetForAllPlayersResource)
                      mempty
