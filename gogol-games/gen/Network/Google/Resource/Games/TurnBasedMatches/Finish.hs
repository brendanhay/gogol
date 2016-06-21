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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Finish
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finish a turn-based match. Each player should make this call once, after
-- all results are in. Only the player whose turn it is may make the first
-- call to Finish, and can pass in the final match state.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.finish@.
module Network.Google.Resource.Games.TurnBasedMatches.Finish
    (
    -- * REST Resource
      TurnBasedMatchesFinishResource

    -- * Creating a Request
    , turnBasedMatchesFinish
    , TurnBasedMatchesFinish

    -- * Request Lenses
    , tbmfConsistencyToken
    , tbmfPayload
    , tbmfLanguage
    , tbmfMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.finish@ method which the
-- 'TurnBasedMatchesFinish' request conforms to.
type TurnBasedMatchesFinishResource =
     "games" :>
       "v1" :>
         "turnbasedmatches" :>
           Capture "matchId" Text :>
             "finish" :>
               QueryParam "consistencyToken" (Textual Int64) :>
                 QueryParam "language" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TurnBasedMatchResults :>
                       Put '[JSON] TurnBasedMatch

-- | Finish a turn-based match. Each player should make this call once, after
-- all results are in. Only the player whose turn it is may make the first
-- call to Finish, and can pass in the final match state.
--
-- /See:/ 'turnBasedMatchesFinish' smart constructor.
data TurnBasedMatchesFinish = TurnBasedMatchesFinish'
    { _tbmfConsistencyToken :: !(Maybe (Textual Int64))
    , _tbmfPayload          :: !TurnBasedMatchResults
    , _tbmfLanguage         :: !(Maybe Text)
    , _tbmfMatchId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesFinish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmfConsistencyToken'
--
-- * 'tbmfPayload'
--
-- * 'tbmfLanguage'
--
-- * 'tbmfMatchId'
turnBasedMatchesFinish
    :: TurnBasedMatchResults -- ^ 'tbmfPayload'
    -> Text -- ^ 'tbmfMatchId'
    -> TurnBasedMatchesFinish
turnBasedMatchesFinish pTbmfPayload_ pTbmfMatchId_ =
    TurnBasedMatchesFinish'
    { _tbmfConsistencyToken = Nothing
    , _tbmfPayload = pTbmfPayload_
    , _tbmfLanguage = Nothing
    , _tbmfMatchId = pTbmfMatchId_
    }

-- | The last-seen mutation timestamp.
tbmfConsistencyToken :: Lens' TurnBasedMatchesFinish (Maybe Int64)
tbmfConsistencyToken
  = lens _tbmfConsistencyToken
      (\ s a -> s{_tbmfConsistencyToken = a})
      . mapping _Coerce

-- | Multipart request metadata.
tbmfPayload :: Lens' TurnBasedMatchesFinish TurnBasedMatchResults
tbmfPayload
  = lens _tbmfPayload (\ s a -> s{_tbmfPayload = a})

-- | The preferred language to use for strings returned by this method.
tbmfLanguage :: Lens' TurnBasedMatchesFinish (Maybe Text)
tbmfLanguage
  = lens _tbmfLanguage (\ s a -> s{_tbmfLanguage = a})

-- | The ID of the match.
tbmfMatchId :: Lens' TurnBasedMatchesFinish Text
tbmfMatchId
  = lens _tbmfMatchId (\ s a -> s{_tbmfMatchId = a})

instance GoogleRequest TurnBasedMatchesFinish where
        type Rs TurnBasedMatchesFinish = TurnBasedMatch
        type Scopes TurnBasedMatchesFinish =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient TurnBasedMatchesFinish'{..}
          = go _tbmfMatchId _tbmfConsistencyToken _tbmfLanguage
              (Just AltJSON)
              _tbmfPayload
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesFinishResource)
                      mempty
