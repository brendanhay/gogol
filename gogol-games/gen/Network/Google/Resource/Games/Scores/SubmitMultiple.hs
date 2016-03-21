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
-- Module      : Network.Google.Resource.Games.Scores.SubmitMultiple
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits multiple scores to leaderboards.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.scores.submitMultiple@.
module Network.Google.Resource.Games.Scores.SubmitMultiple
    (
    -- * REST Resource
      ScoresSubmitMultipleResource

    -- * Creating a Request
    , scoresSubmitMultiple
    , ScoresSubmitMultiple

    -- * Request Lenses
    , ssmPayload
    , ssmLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.scores.submitMultiple@ method which the
-- 'ScoresSubmitMultiple' request conforms to.
type ScoresSubmitMultipleResource =
     "games" :>
       "v1" :>
         "leaderboards" :>
           "scores" :>
             QueryParam "language" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] PlayerScoreSubmissionList :>
                   Post '[JSON] PlayerScoreListResponse

-- | Submits multiple scores to leaderboards.
--
-- /See:/ 'scoresSubmitMultiple' smart constructor.
data ScoresSubmitMultiple = ScoresSubmitMultiple'
    { _ssmPayload  :: !PlayerScoreSubmissionList
    , _ssmLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresSubmitMultiple' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssmPayload'
--
-- * 'ssmLanguage'
scoresSubmitMultiple
    :: PlayerScoreSubmissionList -- ^ 'ssmPayload'
    -> ScoresSubmitMultiple
scoresSubmitMultiple pSsmPayload_ =
    ScoresSubmitMultiple'
    { _ssmPayload = pSsmPayload_
    , _ssmLanguage = Nothing
    }

-- | Multipart request metadata.
ssmPayload :: Lens' ScoresSubmitMultiple PlayerScoreSubmissionList
ssmPayload
  = lens _ssmPayload (\ s a -> s{_ssmPayload = a})

-- | The preferred language to use for strings returned by this method.
ssmLanguage :: Lens' ScoresSubmitMultiple (Maybe Text)
ssmLanguage
  = lens _ssmLanguage (\ s a -> s{_ssmLanguage = a})

instance GoogleRequest ScoresSubmitMultiple where
        type Rs ScoresSubmitMultiple =
             PlayerScoreListResponse
        type Scopes ScoresSubmitMultiple =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient ScoresSubmitMultiple'{..}
          = go _ssmLanguage (Just AltJSON) _ssmPayload
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ScoresSubmitMultipleResource)
                      mempty
