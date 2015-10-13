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
-- Module      : Network.Google.Resource.GamesManagement.Players.Hide
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Hide the given player\'s leaderboard scores from the given application.
-- This method is only available to user accounts for your developer
-- console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementPlayersHide@.
module Network.Google.Resource.GamesManagement.Players.Hide
    (
    -- * REST Resource
      PlayersHideResource

    -- * Creating a Request
    , playersHide'
    , PlayersHide'

    -- * Request Lenses
    , phApplicationId
    , phPlayerId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementPlayersHide@ method which the
-- 'PlayersHide'' request conforms to.
type PlayersHideResource =
     "applications" :>
       Capture "applicationId" Text :>
         "players" :>
           "hidden" :>
             Capture "playerId" Text :>
               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Hide the given player\'s leaderboard scores from the given application.
-- This method is only available to user accounts for your developer
-- console.
--
-- /See:/ 'playersHide'' smart constructor.
data PlayersHide' = PlayersHide'
    { _phApplicationId :: !Text
    , _phPlayerId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersHide'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phApplicationId'
--
-- * 'phPlayerId'
playersHide'
    :: Text -- ^ 'applicationId'
    -> Text -- ^ 'playerId'
    -> PlayersHide'
playersHide' pPhApplicationId_ pPhPlayerId_ =
    PlayersHide'
    { _phApplicationId = pPhApplicationId_
    , _phPlayerId = pPhPlayerId_
    }

-- | The application ID from the Google Play developer console.
phApplicationId :: Lens' PlayersHide' Text
phApplicationId
  = lens _phApplicationId
      (\ s a -> s{_phApplicationId = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
phPlayerId :: Lens' PlayersHide' Text
phPlayerId
  = lens _phPlayerId (\ s a -> s{_phPlayerId = a})

instance GoogleRequest PlayersHide' where
        type Rs PlayersHide' = ()
        requestClient PlayersHide'{..}
          = go _phApplicationId _phPlayerId (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy PlayersHideResource)
                      mempty
