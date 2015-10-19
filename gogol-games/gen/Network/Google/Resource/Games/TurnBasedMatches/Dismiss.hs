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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Dismiss
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.dismiss@.
module Network.Google.Resource.Games.TurnBasedMatches.Dismiss
    (
    -- * REST Resource
      TurnBasedMatchesDismissResource

    -- * Creating a Request
    , turnBasedMatchesDismiss'
    , TurnBasedMatchesDismiss'

    -- * Request Lenses
    , tbmdMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.dismiss@ method which the
-- 'TurnBasedMatchesDismiss'' request conforms to.
type TurnBasedMatchesDismissResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "dismiss" :>
           QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
--
-- /See:/ 'turnBasedMatchesDismiss'' smart constructor.
newtype TurnBasedMatchesDismiss' = TurnBasedMatchesDismiss'
    { _tbmdMatchId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmdMatchId'
turnBasedMatchesDismiss'
    :: Text -- ^ 'tbmdMatchId'
    -> TurnBasedMatchesDismiss'
turnBasedMatchesDismiss' pTbmdMatchId_ =
    TurnBasedMatchesDismiss'
    { _tbmdMatchId = pTbmdMatchId_
    }

-- | The ID of the match.
tbmdMatchId :: Lens' TurnBasedMatchesDismiss' Text
tbmdMatchId
  = lens _tbmdMatchId (\ s a -> s{_tbmdMatchId = a})

instance GoogleRequest TurnBasedMatchesDismiss' where
        type Rs TurnBasedMatchesDismiss' = ()
        requestClient TurnBasedMatchesDismiss'{..}
          = go _tbmdMatchId (Just AltJSON) gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesDismissResource)
                      mempty
