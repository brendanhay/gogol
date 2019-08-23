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
-- Module      : Network.Google.Resource.Games.Players.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the collection of players for the currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.players.list@.
module Network.Google.Resource.Games.Players.List
    (
    -- * REST Resource
      PlayersListResource

    -- * Creating a Request
    , playersList
    , PlayersList

    -- * Request Lenses
    , plCollection
    , plLanguage
    , plPageToken
    , plMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.players.list@ method which the
-- 'PlayersList' request conforms to.
type PlayersListResource =
     "games" :>
       "v1" :>
         "players" :>
           "me" :>
             "players" :>
               Capture "collection" PlayersListCollection :>
                 QueryParam "language" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PlayerListResponse

-- | Get the collection of players for the currently authenticated user.
--
-- /See:/ 'playersList' smart constructor.
data PlayersList =
  PlayersList'
    { _plCollection :: !PlayersListCollection
    , _plLanguage   :: !(Maybe Text)
    , _plPageToken  :: !(Maybe Text)
    , _plMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plCollection'
--
-- * 'plLanguage'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
playersList
    :: PlayersListCollection -- ^ 'plCollection'
    -> PlayersList
playersList pPlCollection_ =
  PlayersList'
    { _plCollection = pPlCollection_
    , _plLanguage = Nothing
    , _plPageToken = Nothing
    , _plMaxResults = Nothing
    }


-- | Collection of players being retrieved
plCollection :: Lens' PlayersList PlayersListCollection
plCollection
  = lens _plCollection (\ s a -> s{_plCollection = a})

-- | The preferred language to use for strings returned by this method.
plLanguage :: Lens' PlayersList (Maybe Text)
plLanguage
  = lens _plLanguage (\ s a -> s{_plLanguage = a})

-- | The token returned by the previous request.
plPageToken :: Lens' PlayersList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | The maximum number of player resources to return in the response, used
-- for paging. For any response, the actual number of player resources
-- returned may be less than the specified maxResults.
plMaxResults :: Lens' PlayersList (Maybe Int32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

instance GoogleRequest PlayersList where
        type Rs PlayersList = PlayerListResponse
        type Scopes PlayersList =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient PlayersList'{..}
          = go _plCollection _plLanguage _plPageToken
              _plMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy PlayersListResource)
                      mempty
