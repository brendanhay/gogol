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
-- Module      : Network.Google.Resource.GamesManagement.Quests.ResetAllForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all draft quests for all players. This method is only available
-- to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.quests.resetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Quests.ResetAllForAllPlayers
    (
    -- * REST Resource
      QuestsResetAllForAllPlayersResource

    -- * Creating a Request
    , questsResetAllForAllPlayers
    , QuestsResetAllForAllPlayers

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.quests.resetAllForAllPlayers@ method which the
-- 'QuestsResetAllForAllPlayers' request conforms to.
type QuestsResetAllForAllPlayersResource =
     "quests" :>
       "resetAllForAllPlayers" :>
         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all draft quests for all players. This method is only available
-- to user accounts for your developer console.
--
-- /See:/ 'questsResetAllForAllPlayers' smart constructor.
data QuestsResetAllForAllPlayers =
    QuestsResetAllForAllPlayers
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetAllForAllPlayers' with the minimum fields required to make a request.
--
questsResetAllForAllPlayers
    :: QuestsResetAllForAllPlayers
questsResetAllForAllPlayers = QuestsResetAllForAllPlayers

instance GoogleRequest QuestsResetAllForAllPlayers
         where
        type Rs QuestsResetAllForAllPlayers = ()
        requestClient QuestsResetAllForAllPlayers{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy QuestsResetAllForAllPlayersResource)
                      mempty
