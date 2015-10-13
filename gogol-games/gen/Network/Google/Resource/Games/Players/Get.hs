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
-- Module      : Network.Google.Resource.Games.Players.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the Player resource with the given ID. To retrieve the player
-- for the currently authenticated user, set playerId to me.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesPlayersGet@.
module Network.Google.Resource.Games.Players.Get
    (
    -- * REST Resource
      PlayersGetResource

    -- * Creating a Request
    , playersGet'
    , PlayersGet'

    -- * Request Lenses
    , pgLanguage
    , pgPlayerId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesPlayersGet@ method which the
-- 'PlayersGet'' request conforms to.
type PlayersGetResource =
     "players" :>
       Capture "playerId" Text :>
         QueryParam "language" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Player

-- | Retrieves the Player resource with the given ID. To retrieve the player
-- for the currently authenticated user, set playerId to me.
--
-- /See:/ 'playersGet'' smart constructor.
data PlayersGet' = PlayersGet'
    { _pgLanguage :: !(Maybe Text)
    , _pgPlayerId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgLanguage'
--
-- * 'pgPlayerId'
playersGet'
    :: Text -- ^ 'playerId'
    -> PlayersGet'
playersGet' pPgPlayerId_ =
    PlayersGet'
    { _pgLanguage = Nothing
    , _pgPlayerId = pPgPlayerId_
    }

-- | The preferred language to use for strings returned by this method.
pgLanguage :: Lens' PlayersGet' (Maybe Text)
pgLanguage
  = lens _pgLanguage (\ s a -> s{_pgLanguage = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
pgPlayerId :: Lens' PlayersGet' Text
pgPlayerId
  = lens _pgPlayerId (\ s a -> s{_pgPlayerId = a})

instance GoogleRequest PlayersGet' where
        type Rs PlayersGet' = Player
        requestClient PlayersGet'{..}
          = go _pgPlayerId _pgLanguage (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy PlayersGetResource)
                      mempty
