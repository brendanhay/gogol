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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Rematch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a rematch of a match that was previously completed, with the same
-- participants. This can be called by only one player on a match still in
-- their list; the player must have called Finish first. Returns the newly
-- created match; it will be the caller\'s turn.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.rematch@.
module Network.Google.Resource.Games.TurnBasedMatches.Rematch
    (
    -- * REST Resource
      TurnBasedMatchesRematchResource

    -- * Creating a Request
    , turnBasedMatchesRematch
    , TurnBasedMatchesRematch

    -- * Request Lenses
    , tbmrRequestId
    , tbmrLanguage
    , tbmrMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.rematch@ method which the
-- 'TurnBasedMatchesRematch' request conforms to.
type TurnBasedMatchesRematchResource =
     "games" :>
       "v1" :>
         "turnbasedmatches" :>
           Capture "matchId" Text :>
             "rematch" :>
               QueryParam "requestId" (JSONText Int64) :>
                 QueryParam "language" Text :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] TurnBasedMatchRematch

-- | Create a rematch of a match that was previously completed, with the same
-- participants. This can be called by only one player on a match still in
-- their list; the player must have called Finish first. Returns the newly
-- created match; it will be the caller\'s turn.
--
-- /See:/ 'turnBasedMatchesRematch' smart constructor.
data TurnBasedMatchesRematch = TurnBasedMatchesRematch
    { _tbmrRequestId :: !(Maybe (JSONText Int64))
    , _tbmrLanguage  :: !(Maybe Text)
    , _tbmrMatchId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesRematch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmrRequestId'
--
-- * 'tbmrLanguage'
--
-- * 'tbmrMatchId'
turnBasedMatchesRematch
    :: Text -- ^ 'tbmrMatchId'
    -> TurnBasedMatchesRematch
turnBasedMatchesRematch pTbmrMatchId_ =
    TurnBasedMatchesRematch
    { _tbmrRequestId = Nothing
    , _tbmrLanguage = Nothing
    , _tbmrMatchId = pTbmrMatchId_
    }

-- | A randomly generated numeric ID for each request specified by the
-- caller. This number is used at the server to ensure that the request is
-- handled correctly across retries.
tbmrRequestId :: Lens' TurnBasedMatchesRematch (Maybe Int64)
tbmrRequestId
  = lens _tbmrRequestId
      (\ s a -> s{_tbmrRequestId = a})
      . mapping _Coerce

-- | The preferred language to use for strings returned by this method.
tbmrLanguage :: Lens' TurnBasedMatchesRematch (Maybe Text)
tbmrLanguage
  = lens _tbmrLanguage (\ s a -> s{_tbmrLanguage = a})

-- | The ID of the match.
tbmrMatchId :: Lens' TurnBasedMatchesRematch Text
tbmrMatchId
  = lens _tbmrMatchId (\ s a -> s{_tbmrMatchId = a})

instance GoogleRequest TurnBasedMatchesRematch where
        type Rs TurnBasedMatchesRematch =
             TurnBasedMatchRematch
        requestClient TurnBasedMatchesRematch{..}
          = go _tbmrMatchId _tbmrRequestId _tbmrLanguage
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesRematchResource)
                      mempty
