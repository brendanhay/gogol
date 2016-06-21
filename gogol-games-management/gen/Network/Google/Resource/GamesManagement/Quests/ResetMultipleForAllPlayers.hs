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
-- Module      : Network.Google.Resource.GamesManagement.Quests.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets quests with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft quests
-- may be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.quests.resetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Quests.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      QuestsResetMultipleForAllPlayersResource

    -- * Creating a Request
    , questsResetMultipleForAllPlayers
    , QuestsResetMultipleForAllPlayers

    -- * Request Lenses
    , qrmfapPayload
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.quests.resetMultipleForAllPlayers@ method which the
-- 'QuestsResetMultipleForAllPlayers' request conforms to.
type QuestsResetMultipleForAllPlayersResource =
     "games" :>
       "v1management" :>
         "quests" :>
           "resetMultipleForAllPlayers" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] QuestsResetMultipleForAllRequest :>
                 Post '[JSON] ()

-- | Resets quests with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft quests
-- may be reset.
--
-- /See:/ 'questsResetMultipleForAllPlayers' smart constructor.
newtype QuestsResetMultipleForAllPlayers = QuestsResetMultipleForAllPlayers'
    { _qrmfapPayload :: QuestsResetMultipleForAllRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetMultipleForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrmfapPayload'
questsResetMultipleForAllPlayers
    :: QuestsResetMultipleForAllRequest -- ^ 'qrmfapPayload'
    -> QuestsResetMultipleForAllPlayers
questsResetMultipleForAllPlayers pQrmfapPayload_ =
    QuestsResetMultipleForAllPlayers'
    { _qrmfapPayload = pQrmfapPayload_
    }

-- | Multipart request metadata.
qrmfapPayload :: Lens' QuestsResetMultipleForAllPlayers QuestsResetMultipleForAllRequest
qrmfapPayload
  = lens _qrmfapPayload
      (\ s a -> s{_qrmfapPayload = a})

instance GoogleRequest
         QuestsResetMultipleForAllPlayers where
        type Rs QuestsResetMultipleForAllPlayers = ()
        type Scopes QuestsResetMultipleForAllPlayers =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient QuestsResetMultipleForAllPlayers'{..}
          = go (Just AltJSON) _qrmfapPayload
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy QuestsResetMultipleForAllPlayersResource)
                      mempty
