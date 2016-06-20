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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.dismiss@.
module Network.Google.Resource.Games.Rooms.Dismiss
    (
    -- * REST Resource
      RoomsDismissResource

    -- * Creating a Request
    , roomsDismiss
    , RoomsDismiss

    -- * Request Lenses
    , rdConsistencyToken
    , rdRoomId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.rooms.dismiss@ method which the
-- 'RoomsDismiss' request conforms to.
type RoomsDismissResource =
     "games" :>
       "v1" :>
         "rooms" :>
           Capture "roomId" Text :>
             "dismiss" :>
               QueryParam "consistencyToken" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDismiss' smart constructor.
data RoomsDismiss = RoomsDismiss'
    { _rdConsistencyToken :: !(Maybe (Textual Int64))
    , _rdRoomId           :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDismiss' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdConsistencyToken'
--
-- * 'rdRoomId'
roomsDismiss
    :: Text -- ^ 'rdRoomId'
    -> RoomsDismiss
roomsDismiss pRdRoomId_ =
    RoomsDismiss'
    { _rdConsistencyToken = Nothing
    , _rdRoomId = pRdRoomId_
    }

-- | The last-seen mutation timestamp.
rdConsistencyToken :: Lens' RoomsDismiss (Maybe Int64)
rdConsistencyToken
  = lens _rdConsistencyToken
      (\ s a -> s{_rdConsistencyToken = a})
      . mapping _Coerce

-- | The ID of the room.
rdRoomId :: Lens' RoomsDismiss Text
rdRoomId = lens _rdRoomId (\ s a -> s{_rdRoomId = a})

instance GoogleRequest RoomsDismiss where
        type Rs RoomsDismiss = ()
        type Scopes RoomsDismiss =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient RoomsDismiss'{..}
          = go _rdRoomId _rdConsistencyToken (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsDismissResource)
                      mempty
