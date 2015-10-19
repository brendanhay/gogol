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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsDecline@.
module Network.Google.Resource.Games.Rooms.Decline
    (
    -- * REST Resource
      RoomsDeclineResource

    -- * Creating a Request
    , roomsDecline'
    , RoomsDecline'

    -- * Request Lenses
    , rdRoomId
    , rdLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsDecline@ method which the
-- 'RoomsDecline'' request conforms to.
type RoomsDeclineResource =
     "rooms" :>
       Capture "roomId" Text :>
         "decline" :>
           QueryParam "language" Text :>
             QueryParam "alt" AltJSON :> Post '[JSON] Room

-- | Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDecline'' smart constructor.
data RoomsDecline' = RoomsDecline'
    { _rdRoomId   :: !Text
    , _rdLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDecline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRoomId'
--
-- * 'rdLanguage'
roomsDecline'
    :: Text -- ^ 'roomId'
    -> RoomsDecline'
roomsDecline' pRdRoomId_ =
    RoomsDecline'
    { _rdRoomId = pRdRoomId_
    , _rdLanguage = Nothing
    }

-- | The ID of the room.
rdRoomId :: Lens' RoomsDecline' Text
rdRoomId = lens _rdRoomId (\ s a -> s{_rdRoomId = a})

-- | The preferred language to use for strings returned by this method.
rdLanguage :: Lens' RoomsDecline' (Maybe Text)
rdLanguage
  = lens _rdLanguage (\ s a -> s{_rdLanguage = a})

instance GoogleRequest RoomsDecline' where
        type Rs RoomsDecline' = Room
        requestClient RoomsDecline'{..}
          = go _rdRoomId _rdLanguage (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsDeclineResource)
                      mempty
