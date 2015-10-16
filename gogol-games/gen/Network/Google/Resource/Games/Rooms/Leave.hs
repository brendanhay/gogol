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
-- Module      : Network.Google.Resource.Games.Rooms.Leave
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Leave a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsLeave@.
module Network.Google.Resource.Games.Rooms.Leave
    (
    -- * REST Resource
      RoomsLeaveResource

    -- * Creating a Request
    , roomsLeave'
    , RoomsLeave'

    -- * Request Lenses
    , rlPayload
    , rlRoomId
    , rlLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsLeave@ method which the
-- 'RoomsLeave'' request conforms to.
type RoomsLeaveResource =
     "rooms" :>
       Capture "roomId" Text :>
         "leave" :>
           QueryParam "language" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] RoomLeaveRequest :> Post '[JSON] Room

-- | Leave a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ 'roomsLeave'' smart constructor.
data RoomsLeave' = RoomsLeave'
    { _rlPayload  :: !RoomLeaveRequest
    , _rlRoomId   :: !Text
    , _rlLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsLeave'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlPayload'
--
-- * 'rlRoomId'
--
-- * 'rlLanguage'
roomsLeave'
    :: RoomLeaveRequest -- ^ 'payload'
    -> Text -- ^ 'roomId'
    -> RoomsLeave'
roomsLeave' pRlPayload_ pRlRoomId_ =
    RoomsLeave'
    { _rlPayload = pRlPayload_
    , _rlRoomId = pRlRoomId_
    , _rlLanguage = Nothing
    }

-- | Multipart request metadata.
rlPayload :: Lens' RoomsLeave' RoomLeaveRequest
rlPayload
  = lens _rlPayload (\ s a -> s{_rlPayload = a})

-- | The ID of the room.
rlRoomId :: Lens' RoomsLeave' Text
rlRoomId = lens _rlRoomId (\ s a -> s{_rlRoomId = a})

-- | The preferred language to use for strings returned by this method.
rlLanguage :: Lens' RoomsLeave' (Maybe Text)
rlLanguage
  = lens _rlLanguage (\ s a -> s{_rlLanguage = a})

instance GoogleRequest RoomsLeave' where
        type Rs RoomsLeave' = Room
        requestClient RoomsLeave'{..}
          = go _rlRoomId _rlLanguage (Just AltJSON) _rlPayload
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsLeaveResource)
                      mempty
