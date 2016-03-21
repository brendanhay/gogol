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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.achievements.resetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Achievements.ResetAllForAllPlayers
    (
    -- * REST Resource
      AchievementsResetAllForAllPlayersResource

    -- * Creating a Request
    , achievementsResetAllForAllPlayers
    , AchievementsResetAllForAllPlayers

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.achievements.resetAllForAllPlayers@ method which the
-- 'AchievementsResetAllForAllPlayers' request conforms to.
type AchievementsResetAllForAllPlayersResource =
     "games" :>
       "v1management" :>
         "achievements" :>
           "resetAllForAllPlayers" :>
             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ 'achievementsResetAllForAllPlayers' smart constructor.
data AchievementsResetAllForAllPlayers =
    AchievementsResetAllForAllPlayers'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetAllForAllPlayers' with the minimum fields required to make a request.
--
achievementsResetAllForAllPlayers
    :: AchievementsResetAllForAllPlayers
achievementsResetAllForAllPlayers = AchievementsResetAllForAllPlayers'

instance GoogleRequest
         AchievementsResetAllForAllPlayers where
        type Rs AchievementsResetAllForAllPlayers = ()
        type Scopes AchievementsResetAllForAllPlayers =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient AchievementsResetAllForAllPlayers'{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementsResetAllForAllPlayersResource)
                      mempty
