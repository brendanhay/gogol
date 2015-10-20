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
-- Module      : Network.Google.Resource.GamesManagement.Players.Unhide
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.players.unhide@.
module Network.Google.Resource.GamesManagement.Players.Unhide
    (
    -- * REST Resource
      PlayersUnhideResource

    -- * Creating a Request
    , playersUnhide
    , PlayersUnhide

    -- * Request Lenses
    , puApplicationId
    , puPlayerId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.players.unhide@ method which the
-- 'PlayersUnhide' request conforms to.
type PlayersUnhideResource =
     "applications" :>
       Capture "applicationId" Text :>
         "players" :>
           "hidden" :>
             Capture "playerId" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
--
-- /See:/ 'playersUnhide' smart constructor.
data PlayersUnhide = PlayersUnhide
    { _puApplicationId :: !Text
    , _puPlayerId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersUnhide' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puApplicationId'
--
-- * 'puPlayerId'
playersUnhide
    :: Text -- ^ 'puApplicationId'
    -> Text -- ^ 'puPlayerId'
    -> PlayersUnhide
playersUnhide pPuApplicationId_ pPuPlayerId_ =
    PlayersUnhide
    { _puApplicationId = pPuApplicationId_
    , _puPlayerId = pPuPlayerId_
    }

-- | The application ID from the Google Play developer console.
puApplicationId :: Lens' PlayersUnhide Text
puApplicationId
  = lens _puApplicationId
      (\ s a -> s{_puApplicationId = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
puPlayerId :: Lens' PlayersUnhide Text
puPlayerId
  = lens _puPlayerId (\ s a -> s{_puPlayerId = a})

instance GoogleRequest PlayersUnhide where
        type Rs PlayersUnhide = ()
        requestClient PlayersUnhide{..}
          = go _puApplicationId _puPlayerId (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy PlayersUnhideResource)
                      mempty
