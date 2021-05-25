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
-- Module      : Network.Google.Resource.Games.Scores.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, \`leaderboardId\` can be
-- set to \`ALL\` to retrieve data for all leaderboards in a given time
-- span. \`NOTE: You cannot ask for \'ALL\' leaderboards and \'ALL\'
-- timeSpans in the same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.get@.
module Network.Google.Resource.Games.Scores.Get
    (
    -- * REST Resource
      ScoresGetResource

    -- * Creating a Request
    , scoresGet
    , ScoresGet

    -- * Request Lenses
    , sXgafv
    , sUploadProtocol
    , sAccessToken
    , sUploadType
    , sTimeSpan
    , sLeaderboardId
    , sIncludeRankType
    , sLanguage
    , sPageToken
    , sPlayerId
    , sMaxResults
    , sCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.scores.get@ method which the
-- 'ScoresGet' request conforms to.
type ScoresGetResource =
     "games" :>
       "v1" :>
         "players" :>
           Capture "playerId" Text :>
             "leaderboards" :>
               Capture "leaderboardId" Text :>
                 "scores" :>
                   Capture "timeSpan" ScoresGetTimeSpan :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "includeRankType"
                               ScoresGetIncludeRankType
                               :>
                               QueryParam "language" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "maxResults" (Textual Int32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON]
                                           PlayerLeaderboardScoreListResponse

-- | Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, \`leaderboardId\` can be
-- set to \`ALL\` to retrieve data for all leaderboards in a given time
-- span. \`NOTE: You cannot ask for \'ALL\' leaderboards and \'ALL\'
-- timeSpans in the same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ 'scoresGet' smart constructor.
data ScoresGet =
  ScoresGet'
    { _sXgafv :: !(Maybe Xgafv)
    , _sUploadProtocol :: !(Maybe Text)
    , _sAccessToken :: !(Maybe Text)
    , _sUploadType :: !(Maybe Text)
    , _sTimeSpan :: !ScoresGetTimeSpan
    , _sLeaderboardId :: !Text
    , _sIncludeRankType :: !(Maybe ScoresGetIncludeRankType)
    , _sLanguage :: !(Maybe Text)
    , _sPageToken :: !(Maybe Text)
    , _sPlayerId :: !Text
    , _sMaxResults :: !(Maybe (Textual Int32))
    , _sCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sXgafv'
--
-- * 'sUploadProtocol'
--
-- * 'sAccessToken'
--
-- * 'sUploadType'
--
-- * 'sTimeSpan'
--
-- * 'sLeaderboardId'
--
-- * 'sIncludeRankType'
--
-- * 'sLanguage'
--
-- * 'sPageToken'
--
-- * 'sPlayerId'
--
-- * 'sMaxResults'
--
-- * 'sCallback'
scoresGet
    :: ScoresGetTimeSpan -- ^ 'sTimeSpan'
    -> Text -- ^ 'sLeaderboardId'
    -> Text -- ^ 'sPlayerId'
    -> ScoresGet
scoresGet pSTimeSpan_ pSLeaderboardId_ pSPlayerId_ =
  ScoresGet'
    { _sXgafv = Nothing
    , _sUploadProtocol = Nothing
    , _sAccessToken = Nothing
    , _sUploadType = Nothing
    , _sTimeSpan = pSTimeSpan_
    , _sLeaderboardId = pSLeaderboardId_
    , _sIncludeRankType = Nothing
    , _sLanguage = Nothing
    , _sPageToken = Nothing
    , _sPlayerId = pSPlayerId_
    , _sMaxResults = Nothing
    , _sCallback = Nothing
    }


-- | V1 error format.
sXgafv :: Lens' ScoresGet (Maybe Xgafv)
sXgafv = lens _sXgafv (\ s a -> s{_sXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sUploadProtocol :: Lens' ScoresGet (Maybe Text)
sUploadProtocol
  = lens _sUploadProtocol
      (\ s a -> s{_sUploadProtocol = a})

-- | OAuth access token.
sAccessToken :: Lens' ScoresGet (Maybe Text)
sAccessToken
  = lens _sAccessToken (\ s a -> s{_sAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sUploadType :: Lens' ScoresGet (Maybe Text)
sUploadType
  = lens _sUploadType (\ s a -> s{_sUploadType = a})

-- | The time span for the scores and ranks you\'re requesting.
sTimeSpan :: Lens' ScoresGet ScoresGetTimeSpan
sTimeSpan
  = lens _sTimeSpan (\ s a -> s{_sTimeSpan = a})

-- | The ID of the leaderboard. Can be set to \'ALL\' to retrieve data for
-- all leaderboards for this application.
sLeaderboardId :: Lens' ScoresGet Text
sLeaderboardId
  = lens _sLeaderboardId
      (\ s a -> s{_sLeaderboardId = a})

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
sIncludeRankType :: Lens' ScoresGet (Maybe ScoresGetIncludeRankType)
sIncludeRankType
  = lens _sIncludeRankType
      (\ s a -> s{_sIncludeRankType = a})

-- | The preferred language to use for strings returned by this method.
sLanguage :: Lens' ScoresGet (Maybe Text)
sLanguage
  = lens _sLanguage (\ s a -> s{_sLanguage = a})

-- | The token returned by the previous request.
sPageToken :: Lens' ScoresGet (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | A player ID. A value of \`me\` may be used in place of the authenticated
-- player\'s ID.
sPlayerId :: Lens' ScoresGet Text
sPlayerId
  = lens _sPlayerId (\ s a -> s{_sPlayerId = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified \`maxResults\`.
sMaxResults :: Lens' ScoresGet (Maybe Int32)
sMaxResults
  = lens _sMaxResults (\ s a -> s{_sMaxResults = a}) .
      mapping _Coerce

-- | JSONP
sCallback :: Lens' ScoresGet (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest ScoresGet where
        type Rs ScoresGet =
             PlayerLeaderboardScoreListResponse
        type Scopes ScoresGet =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresGet'{..}
          = go _sPlayerId _sLeaderboardId _sTimeSpan _sXgafv
              _sUploadProtocol
              _sAccessToken
              _sUploadType
              _sIncludeRankType
              _sLanguage
              _sPageToken
              _sMaxResults
              _sCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy ScoresGetResource)
                      mempty
