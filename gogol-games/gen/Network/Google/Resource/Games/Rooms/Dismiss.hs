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
-- Module      : Network.Google.Resource.Games.Rooms.Dismiss
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsDismiss@.
module Network.Google.Resource.Games.Rooms.Dismiss
    (
    -- * REST Resource
      RoomsDismissResource

    -- * Creating a Request
    , roomsDismiss'
    , RoomsDismiss'

    -- * Request Lenses
    , rooRoomId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsDismiss@ method which the
-- 'RoomsDismiss'' request conforms to.
type RoomsDismissResource =
     "rooms" :>
       Capture "roomId" Text :>
         "dismiss" :>
           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDismiss'' smart constructor.
newtype RoomsDismiss' = RoomsDismiss'
    { _rooRoomId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rooRoomId'
roomsDismiss'
    :: Text -- ^ 'roomId'
    -> RoomsDismiss'
roomsDismiss' pRooRoomId_ =
    RoomsDismiss'
    { _rooRoomId = pRooRoomId_
    }

-- | The ID of the room.
rooRoomId :: Lens' RoomsDismiss' Text
rooRoomId
  = lens _rooRoomId (\ s a -> s{_rooRoomId = a})

instance GoogleRequest RoomsDismiss' where
        type Rs RoomsDismiss' = ()
        requestClient RoomsDismiss'{..}
          = go _rooRoomId (Just AltJSON) gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsDismissResource)
                      mempty
