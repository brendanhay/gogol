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
-- Module      : Network.Google.Resource.Games.Rooms.Join
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Join a room. For internal use by the Games SDK only. Calling this method
-- directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.join@.
module Network.Google.Resource.Games.Rooms.Join
    (
    -- * REST Resource
      RoomsJoinResource

    -- * Creating a Request
    , roomsJoin
    , RoomsJoin

    -- * Request Lenses
    , rjPayload
    , rjRoomId
    , rjLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.rooms.join@ method which the
-- 'RoomsJoin' request conforms to.
type RoomsJoinResource =
     "games" :>
       "v1" :>
         "rooms" :>
           Capture "roomId" Text :>
             "join" :>
               QueryParam "language" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] RoomJoinRequest :> Post '[JSON] Room

-- | Join a room. For internal use by the Games SDK only. Calling this method
-- directly is unsupported.
--
-- /See:/ 'roomsJoin' smart constructor.
data RoomsJoin = RoomsJoin
    { _rjPayload  :: !RoomJoinRequest
    , _rjRoomId   :: !Text
    , _rjLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsJoin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rjPayload'
--
-- * 'rjRoomId'
--
-- * 'rjLanguage'
roomsJoin
    :: RoomJoinRequest -- ^ 'rjPayload'
    -> Text -- ^ 'rjRoomId'
    -> RoomsJoin
roomsJoin pRjPayload_ pRjRoomId_ =
    RoomsJoin
    { _rjPayload = pRjPayload_
    , _rjRoomId = pRjRoomId_
    , _rjLanguage = Nothing
    }

-- | Multipart request metadata.
rjPayload :: Lens' RoomsJoin RoomJoinRequest
rjPayload
  = lens _rjPayload (\ s a -> s{_rjPayload = a})

-- | The ID of the room.
rjRoomId :: Lens' RoomsJoin Text
rjRoomId = lens _rjRoomId (\ s a -> s{_rjRoomId = a})

-- | The preferred language to use for strings returned by this method.
rjLanguage :: Lens' RoomsJoin (Maybe Text)
rjLanguage
  = lens _rjLanguage (\ s a -> s{_rjLanguage = a})

instance GoogleRequest RoomsJoin where
        type Rs RoomsJoin = Room
        requestClient RoomsJoin{..}
          = go _rjRoomId _rjLanguage (Just AltJSON) _rjPayload
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsJoinResource)
                      mempty
