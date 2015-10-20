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
-- Module      : Network.Google.Resource.GamesManagement.Rooms.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes rooms where the only room participants are from whitelisted
-- tester accounts for your application. This method is only available to
-- user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.rooms.resetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Rooms.ResetForAllPlayers
    (
    -- * REST Resource
      RoomsResetForAllPlayersResource

    -- * Creating a Request
    , roomsResetForAllPlayers
    , RoomsResetForAllPlayers

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.rooms.resetForAllPlayers@ method which the
-- 'RoomsResetForAllPlayers' request conforms to.
type RoomsResetForAllPlayersResource =
     "rooms" :>
       "resetForAllPlayers" :>
         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Deletes rooms where the only room participants are from whitelisted
-- tester accounts for your application. This method is only available to
-- user accounts for your developer console.
--
-- /See:/ 'roomsResetForAllPlayers' smart constructor.
data RoomsResetForAllPlayers =
    RoomsResetForAllPlayers
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsResetForAllPlayers' with the minimum fields required to make a request.
--
roomsResetForAllPlayers
    :: RoomsResetForAllPlayers
roomsResetForAllPlayers = RoomsResetForAllPlayers

instance GoogleRequest RoomsResetForAllPlayers where
        type Rs RoomsResetForAllPlayers = ()
        requestClient RoomsResetForAllPlayers{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy RoomsResetForAllPlayersResource)
                      mempty
