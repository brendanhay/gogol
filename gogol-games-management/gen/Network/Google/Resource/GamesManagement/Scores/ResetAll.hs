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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetAll
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all scores for all leaderboards for the currently authenticated
-- players. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.scores.resetAll@.
module Network.Google.Resource.GamesManagement.Scores.ResetAll
    (
    -- * REST Resource
      ScoresResetAllResource

    -- * Creating a Request
    , scoresResetAll
    , ScoresResetAll

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.resetAll@ method which the
-- 'ScoresResetAll' request conforms to.
type ScoresResetAllResource =
     "games" :>
       "v1management" :>
         "scores" :>
           "reset" :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] PlayerScoreResetAllResponse

-- | Resets all scores for all leaderboards for the currently authenticated
-- players. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'scoresResetAll' smart constructor.
data ScoresResetAll =
    ScoresResetAll'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetAll' with the minimum fields required to make a request.
--
scoresResetAll
    :: ScoresResetAll
scoresResetAll = ScoresResetAll'

instance GoogleRequest ScoresResetAll where
        type Rs ScoresResetAll = PlayerScoreResetAllResponse
        type Scopes ScoresResetAll =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient ScoresResetAll'{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy ScoresResetAllResource)
                      mempty
