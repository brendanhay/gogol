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
-- Module      : Network.Google.Resource.GamesManagement.Scores.Reset
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for the leaderboard with the given ID for the currently
-- authenticated player. This method is only accessible to whitelisted
-- tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.scores.reset@.
module Network.Google.Resource.GamesManagement.Scores.Reset
    (
    -- * REST Resource
      ScoresResetResource

    -- * Creating a Request
    , scoresReset
    , ScoresReset

    -- * Request Lenses
    , srXgafv
    , srUploadProtocol
    , srAccessToken
    , srUploadType
    , srLeaderboardId
    , srCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.reset@ method which the
-- 'ScoresReset' request conforms to.
type ScoresResetResource =
     "games" :>
       "v1management" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               "reset" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] PlayerScoreResetResponse

-- | Resets scores for the leaderboard with the given ID for the currently
-- authenticated player. This method is only accessible to whitelisted
-- tester accounts for your application.
--
-- /See:/ 'scoresReset' smart constructor.
data ScoresReset =
  ScoresReset'
    { _srXgafv :: !(Maybe Xgafv)
    , _srUploadProtocol :: !(Maybe Text)
    , _srAccessToken :: !(Maybe Text)
    , _srUploadType :: !(Maybe Text)
    , _srLeaderboardId :: !Text
    , _srCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srXgafv'
--
-- * 'srUploadProtocol'
--
-- * 'srAccessToken'
--
-- * 'srUploadType'
--
-- * 'srLeaderboardId'
--
-- * 'srCallback'
scoresReset
    :: Text -- ^ 'srLeaderboardId'
    -> ScoresReset
scoresReset pSrLeaderboardId_ =
  ScoresReset'
    { _srXgafv = Nothing
    , _srUploadProtocol = Nothing
    , _srAccessToken = Nothing
    , _srUploadType = Nothing
    , _srLeaderboardId = pSrLeaderboardId_
    , _srCallback = Nothing
    }


-- | V1 error format.
srXgafv :: Lens' ScoresReset (Maybe Xgafv)
srXgafv = lens _srXgafv (\ s a -> s{_srXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srUploadProtocol :: Lens' ScoresReset (Maybe Text)
srUploadProtocol
  = lens _srUploadProtocol
      (\ s a -> s{_srUploadProtocol = a})

-- | OAuth access token.
srAccessToken :: Lens' ScoresReset (Maybe Text)
srAccessToken
  = lens _srAccessToken
      (\ s a -> s{_srAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srUploadType :: Lens' ScoresReset (Maybe Text)
srUploadType
  = lens _srUploadType (\ s a -> s{_srUploadType = a})

-- | The ID of the leaderboard.
srLeaderboardId :: Lens' ScoresReset Text
srLeaderboardId
  = lens _srLeaderboardId
      (\ s a -> s{_srLeaderboardId = a})

-- | JSONP
srCallback :: Lens' ScoresReset (Maybe Text)
srCallback
  = lens _srCallback (\ s a -> s{_srCallback = a})

instance GoogleRequest ScoresReset where
        type Rs ScoresReset = PlayerScoreResetResponse
        type Scopes ScoresReset =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresReset'{..}
          = go _srLeaderboardId _srXgafv _srUploadProtocol
              _srAccessToken
              _srUploadType
              _srCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy ScoresResetResource)
                      mempty
