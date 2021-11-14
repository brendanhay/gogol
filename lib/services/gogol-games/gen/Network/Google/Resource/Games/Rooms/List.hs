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
-- Module      : Network.Google.Resource.Games.Rooms.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns invitations to join rooms.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.list@.
module Network.Google.Resource.Games.Rooms.List
    (
    -- * REST Resource
      RoomsListResource

    -- * Creating a Request
    , roomsList
    , RoomsList

    -- * Request Lenses
    , rLanguage
    , rPageToken
    , rMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.rooms.list@ method which the
-- 'RoomsList' request conforms to.
type RoomsListResource =
     "games" :>
       "v1" :>
         "rooms" :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (Textual Int32) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] RoomList

-- | Returns invitations to join rooms.
--
-- /See:/ 'roomsList' smart constructor.
data RoomsList =
  RoomsList'
    { _rLanguage   :: !(Maybe Text)
    , _rPageToken  :: !(Maybe Text)
    , _rMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoomsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rLanguage'
--
-- * 'rPageToken'
--
-- * 'rMaxResults'
roomsList
    :: RoomsList
roomsList =
  RoomsList'
    {_rLanguage = Nothing, _rPageToken = Nothing, _rMaxResults = Nothing}


-- | The preferred language to use for strings returned by this method.
rLanguage :: Lens' RoomsList (Maybe Text)
rLanguage
  = lens _rLanguage (\ s a -> s{_rLanguage = a})

-- | The token returned by the previous request.
rPageToken :: Lens' RoomsList (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | The maximum number of rooms to return in the response, used for paging.
-- For any response, the actual number of rooms to return may be less than
-- the specified maxResults.
rMaxResults :: Lens' RoomsList (Maybe Int32)
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a}) .
      mapping _Coerce

instance GoogleRequest RoomsList where
        type Rs RoomsList = RoomList
        type Scopes RoomsList =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient RoomsList'{..}
          = go _rLanguage _rPageToken _rMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RoomsListResource)
                      mempty
