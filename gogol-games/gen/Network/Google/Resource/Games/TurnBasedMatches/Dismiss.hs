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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , turnBasedMatchesDismiss
    , TurnBasedMatchesDismiss

    -- * Request Lenses
    , tbmdsConsistencyToken
    , tbmdsMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.dismiss@ method which the
-- 'TurnBasedMatchesDismiss' request conforms to.
type TurnBasedMatchesDismissResource =
     "games" :>
       "v1" :>
         "turnbasedmatches" :>
           Capture "matchId" Text :>
             "dismiss" :>
               QueryParam "consistencyToken" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
--
-- /See:/ 'turnBasedMatchesDismiss' smart constructor.
data TurnBasedMatchesDismiss = TurnBasedMatchesDismiss'
    { _tbmdsConsistencyToken :: !(Maybe (Textual Int64))
    , _tbmdsMatchId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDismiss' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmdsConsistencyToken'
--
-- * 'tbmdsMatchId'
turnBasedMatchesDismiss
    :: Text -- ^ 'tbmdsMatchId'
    -> TurnBasedMatchesDismiss
turnBasedMatchesDismiss pTbmdsMatchId_ =
    TurnBasedMatchesDismiss'
    { _tbmdsConsistencyToken = Nothing
    , _tbmdsMatchId = pTbmdsMatchId_
    }

-- | The last-seen mutation timestamp.
tbmdsConsistencyToken :: Lens' TurnBasedMatchesDismiss (Maybe Int64)
tbmdsConsistencyToken
  = lens _tbmdsConsistencyToken
      (\ s a -> s{_tbmdsConsistencyToken = a})
      . mapping _Coerce

-- | The ID of the match.
tbmdsMatchId :: Lens' TurnBasedMatchesDismiss Text
tbmdsMatchId
  = lens _tbmdsMatchId (\ s a -> s{_tbmdsMatchId = a})

instance GoogleRequest TurnBasedMatchesDismiss where
        type Rs TurnBasedMatchesDismiss = ()
        type Scopes TurnBasedMatchesDismiss =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient TurnBasedMatchesDismiss'{..}
          = go _tbmdsMatchId _tbmdsConsistencyToken
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesDismissResource)
                      mempty
