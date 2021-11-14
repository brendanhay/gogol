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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for the leaderboard with the given ID for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards can be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.scores.resetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers
    (
    -- * REST Resource
      ScoresResetForAllPlayersResource

    -- * Creating a Request
    , scoresResetForAllPlayers
    , ScoresResetForAllPlayers

    -- * Request Lenses
    , srfapXgafv
    , srfapUploadProtocol
    , srfapAccessToken
    , srfapUploadType
    , srfapLeaderboardId
    , srfapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.resetForAllPlayers@ method which the
-- 'ScoresResetForAllPlayers' request conforms to.
type ScoresResetForAllPlayersResource =
     "games" :>
       "v1management" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               "resetForAllPlayers" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets scores for the leaderboard with the given ID for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards can be reset.
--
-- /See:/ 'scoresResetForAllPlayers' smart constructor.
data ScoresResetForAllPlayers =
  ScoresResetForAllPlayers'
    { _srfapXgafv :: !(Maybe Xgafv)
    , _srfapUploadProtocol :: !(Maybe Text)
    , _srfapAccessToken :: !(Maybe Text)
    , _srfapUploadType :: !(Maybe Text)
    , _srfapLeaderboardId :: !Text
    , _srfapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresResetForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srfapXgafv'
--
-- * 'srfapUploadProtocol'
--
-- * 'srfapAccessToken'
--
-- * 'srfapUploadType'
--
-- * 'srfapLeaderboardId'
--
-- * 'srfapCallback'
scoresResetForAllPlayers
    :: Text -- ^ 'srfapLeaderboardId'
    -> ScoresResetForAllPlayers
scoresResetForAllPlayers pSrfapLeaderboardId_ =
  ScoresResetForAllPlayers'
    { _srfapXgafv = Nothing
    , _srfapUploadProtocol = Nothing
    , _srfapAccessToken = Nothing
    , _srfapUploadType = Nothing
    , _srfapLeaderboardId = pSrfapLeaderboardId_
    , _srfapCallback = Nothing
    }


-- | V1 error format.
srfapXgafv :: Lens' ScoresResetForAllPlayers (Maybe Xgafv)
srfapXgafv
  = lens _srfapXgafv (\ s a -> s{_srfapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srfapUploadProtocol :: Lens' ScoresResetForAllPlayers (Maybe Text)
srfapUploadProtocol
  = lens _srfapUploadProtocol
      (\ s a -> s{_srfapUploadProtocol = a})

-- | OAuth access token.
srfapAccessToken :: Lens' ScoresResetForAllPlayers (Maybe Text)
srfapAccessToken
  = lens _srfapAccessToken
      (\ s a -> s{_srfapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srfapUploadType :: Lens' ScoresResetForAllPlayers (Maybe Text)
srfapUploadType
  = lens _srfapUploadType
      (\ s a -> s{_srfapUploadType = a})

-- | The ID of the leaderboard.
srfapLeaderboardId :: Lens' ScoresResetForAllPlayers Text
srfapLeaderboardId
  = lens _srfapLeaderboardId
      (\ s a -> s{_srfapLeaderboardId = a})

-- | JSONP
srfapCallback :: Lens' ScoresResetForAllPlayers (Maybe Text)
srfapCallback
  = lens _srfapCallback
      (\ s a -> s{_srfapCallback = a})

instance GoogleRequest ScoresResetForAllPlayers where
        type Rs ScoresResetForAllPlayers = ()
        type Scopes ScoresResetForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresResetForAllPlayers'{..}
          = go _srfapLeaderboardId _srfapXgafv
              _srfapUploadProtocol
              _srfapAccessToken
              _srfapUploadType
              _srfapCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ScoresResetForAllPlayersResource)
                      mempty
