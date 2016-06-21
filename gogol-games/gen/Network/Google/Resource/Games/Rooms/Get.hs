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
-- Module      : Network.Google.Resource.Games.Rooms.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the data for a room.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.get@.
module Network.Google.Resource.Games.Rooms.Get
    (
    -- * REST Resource
      RoomsGetResource

    -- * Creating a Request
    , roomsGet
    , RoomsGet

    -- * Request Lenses
    , rgConsistencyToken
    , rgRoomId
    , rgLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.rooms.get@ method which the
-- 'RoomsGet' request conforms to.
type RoomsGetResource =
     "games" :>
       "v1" :>
         "rooms" :>
           Capture "roomId" Text :>
             QueryParam "consistencyToken" (Textual Int64) :>
               QueryParam "language" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Room

-- | Get the data for a room.
--
-- /See:/ 'roomsGet' smart constructor.
data RoomsGet = RoomsGet'
    { _rgConsistencyToken :: !(Maybe (Textual Int64))
    , _rgRoomId           :: !Text
    , _rgLanguage         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgConsistencyToken'
--
-- * 'rgRoomId'
--
-- * 'rgLanguage'
roomsGet
    :: Text -- ^ 'rgRoomId'
    -> RoomsGet
roomsGet pRgRoomId_ =
    RoomsGet'
    { _rgConsistencyToken = Nothing
    , _rgRoomId = pRgRoomId_
    , _rgLanguage = Nothing
    }

-- | The last-seen mutation timestamp.
rgConsistencyToken :: Lens' RoomsGet (Maybe Int64)
rgConsistencyToken
  = lens _rgConsistencyToken
      (\ s a -> s{_rgConsistencyToken = a})
      . mapping _Coerce

-- | The ID of the room.
rgRoomId :: Lens' RoomsGet Text
rgRoomId = lens _rgRoomId (\ s a -> s{_rgRoomId = a})

-- | The preferred language to use for strings returned by this method.
rgLanguage :: Lens' RoomsGet (Maybe Text)
rgLanguage
  = lens _rgLanguage (\ s a -> s{_rgLanguage = a})

instance GoogleRequest RoomsGet where
        type Rs RoomsGet = Room
        type Scopes RoomsGet =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient RoomsGet'{..}
          = go _rgRoomId _rgConsistencyToken _rgLanguage
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsGetResource)
                      mempty
