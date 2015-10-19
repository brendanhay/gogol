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
-- Module      : Network.Google.Resource.GamesManagement.Quests.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all player progress on the quest with the given ID for all
-- players. This method is only available to user accounts for your
-- developer console. Only draft quests can be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementQuestsResetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Quests.ResetForAllPlayers
    (
    -- * REST Resource
      QuestsResetForAllPlayersResource

    -- * Creating a Request
    , questsResetForAllPlayers'
    , QuestsResetForAllPlayers'

    -- * Request Lenses
    , qrfapQuestId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetForAllPlayers@ method which the
-- 'QuestsResetForAllPlayers'' request conforms to.
type QuestsResetForAllPlayersResource =
     "quests" :>
       Capture "questId" Text :>
         "resetForAllPlayers" :>
           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on the quest with the given ID for all
-- players. This method is only available to user accounts for your
-- developer console. Only draft quests can be reset.
--
-- /See:/ 'questsResetForAllPlayers'' smart constructor.
newtype QuestsResetForAllPlayers' = QuestsResetForAllPlayers'
    { _qrfapQuestId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrfapQuestId'
questsResetForAllPlayers'
    :: Text -- ^ 'questId'
    -> QuestsResetForAllPlayers'
questsResetForAllPlayers' pQrfapQuestId_ =
    QuestsResetForAllPlayers'
    { _qrfapQuestId = pQrfapQuestId_
    }

-- | The ID of the quest.
qrfapQuestId :: Lens' QuestsResetForAllPlayers' Text
qrfapQuestId
  = lens _qrfapQuestId (\ s a -> s{_qrfapQuestId = a})

instance GoogleRequest QuestsResetForAllPlayers'
         where
        type Rs QuestsResetForAllPlayers' = ()
        requestClient QuestsResetForAllPlayers'{..}
          = go _qrfapQuestId (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy QuestsResetForAllPlayersResource)
                      mempty
