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
-- Module      : Network.Google.Resource.GamesManagement.TurnBasedMatches.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reset all turn-based match data for a user. This method is only
-- accessible to whitelisted tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.turnBasedMatches.reset@.
module Network.Google.Resource.GamesManagement.TurnBasedMatches.Reset
    (
    -- * REST Resource
      TurnBasedMatchesResetResource

    -- * Creating a Request
    , turnBasedMatchesReset
    , TurnBasedMatchesReset

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.turnBasedMatches.reset@ method which the
-- 'TurnBasedMatchesReset' request conforms to.
type TurnBasedMatchesResetResource =
     "turnbasedmatches" :>
       "reset" :>
         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Reset all turn-based match data for a user. This method is only
-- accessible to whitelisted tester accounts for your application.
--
-- /See:/ 'turnBasedMatchesReset' smart constructor.
data TurnBasedMatchesReset =
    TurnBasedMatchesReset
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesReset' with the minimum fields required to make a request.
--
turnBasedMatchesReset
    :: TurnBasedMatchesReset
turnBasedMatchesReset = TurnBasedMatchesReset

instance GoogleRequest TurnBasedMatchesReset where
        type Rs TurnBasedMatchesReset = ()
        requestClient TurnBasedMatchesReset{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesResetResource)
                      mempty
