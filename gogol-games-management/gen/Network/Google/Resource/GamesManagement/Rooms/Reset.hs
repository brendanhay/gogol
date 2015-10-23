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
-- Module      : Network.Google.Resource.GamesManagement.Rooms.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reset all rooms for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.rooms.reset@.
module Network.Google.Resource.GamesManagement.Rooms.Reset
    (
    -- * REST Resource
      RoomsResetResource

    -- * Creating a Request
    , roomsReset
    , RoomsReset

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.rooms.reset@ method which the
-- 'RoomsReset' request conforms to.
type RoomsResetResource =
     "games" :>
       "v1management" :>
         "rooms" :>
           "reset" :>
             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Reset all rooms for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ 'roomsReset' smart constructor.
data RoomsReset =
    RoomsReset
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsReset' with the minimum fields required to make a request.
--
roomsReset
    :: RoomsReset
roomsReset = RoomsReset

instance GoogleRequest RoomsReset where
        type Rs RoomsReset = ()
        requestClient RoomsReset{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy RoomsResetResource)
                      mempty
