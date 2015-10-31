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
-- Module      : Network.Google.Resource.Games.Rooms.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.create@.
module Network.Google.Resource.Games.Rooms.Create
    (
    -- * REST Resource
      RoomsCreateResource

    -- * Creating a Request
    , roomsCreate
    , RoomsCreate

    -- * Request Lenses
    , rcPayload
    , rcLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.rooms.create@ method which the
-- 'RoomsCreate' request conforms to.
type RoomsCreateResource =
     "games" :>
       "v1" :>
         "rooms" :>
           "create" :>
             QueryParam "language" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] RoomCreateRequest :>
                   Post '[JSON] Room

-- | Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ 'roomsCreate' smart constructor.
data RoomsCreate = RoomsCreate
    { _rcPayload  :: !RoomCreateRequest
    , _rcLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcPayload'
--
-- * 'rcLanguage'
roomsCreate
    :: RoomCreateRequest -- ^ 'rcPayload'
    -> RoomsCreate
roomsCreate pRcPayload_ =
    RoomsCreate
    { _rcPayload = pRcPayload_
    , _rcLanguage = Nothing
    }

-- | Multipart request metadata.
rcPayload :: Lens' RoomsCreate RoomCreateRequest
rcPayload
  = lens _rcPayload (\ s a -> s{_rcPayload = a})

-- | The preferred language to use for strings returned by this method.
rcLanguage :: Lens' RoomsCreate (Maybe Text)
rcLanguage
  = lens _rcLanguage (\ s a -> s{_rcLanguage = a})

instance GoogleRequest RoomsCreate where
        type Rs RoomsCreate = Room
        type Scopes RoomsCreate =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient RoomsCreate{..}
          = go _rcLanguage (Just AltJSON) _rcPayload
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsCreateResource)
                      mempty
