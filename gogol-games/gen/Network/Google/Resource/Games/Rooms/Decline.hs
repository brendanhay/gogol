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
-- Module      : Network.Google.Resource.Games.Rooms.Decline
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.decline@.
module Network.Google.Resource.Games.Rooms.Decline
    (
    -- * REST Resource
      RoomsDeclineResource

    -- * Creating a Request
    , roomsDecline
    , RoomsDecline

    -- * Request Lenses
    , rooRoomId
    , rooLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.rooms.decline@ method which the
-- 'RoomsDecline' request conforms to.
type RoomsDeclineResource =
     "games" :>
       "v1" :>
         "rooms" :>
           Capture "roomId" Text :>
             "decline" :>
               QueryParam "language" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Room

-- | Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDecline' smart constructor.
data RoomsDecline = RoomsDecline'
    { _rooRoomId   :: !Text
    , _rooLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDecline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rooRoomId'
--
-- * 'rooLanguage'
roomsDecline
    :: Text -- ^ 'rooRoomId'
    -> RoomsDecline
roomsDecline pRooRoomId_ =
    RoomsDecline'
    { _rooRoomId = pRooRoomId_
    , _rooLanguage = Nothing
    }

-- | The ID of the room.
rooRoomId :: Lens' RoomsDecline Text
rooRoomId
  = lens _rooRoomId (\ s a -> s{_rooRoomId = a})

-- | The preferred language to use for strings returned by this method.
rooLanguage :: Lens' RoomsDecline (Maybe Text)
rooLanguage
  = lens _rooLanguage (\ s a -> s{_rooLanguage = a})

instance GoogleRequest RoomsDecline where
        type Rs RoomsDecline = Room
        type Scopes RoomsDecline =
             '["https://www.googleapis.com/auth/games"]
        requestClient RoomsDecline'{..}
          = go _rooRoomId _rooLanguage (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsDeclineResource)
                      mempty
