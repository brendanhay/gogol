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
-- Module      : Network.Google.Resource.Games.Scores.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.list@.
module Network.Google.Resource.Games.Scores.List
    (
    -- * REST Resource
      ScoresListResource

    -- * Creating a Request
    , scoresList
    , ScoresList

    -- * Request Lenses
    , sllXgafv
    , sllUploadProtocol
    , sllAccessToken
    , sllUploadType
    , sllCollection
    , sllTimeSpan
    , sllLeaderboardId
    , sllLanguage
    , sllPageToken
    , sllMaxResults
    , sllCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.scores.list@ method which the
-- 'ScoresList' request conforms to.
type ScoresListResource =
     "games" :>
       "v1" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               Capture "collection" ScoresListCollection :>
                 QueryParam "timeSpan" ScoresListTimeSpan :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "language" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] LeaderboardScores

-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ 'scoresList' smart constructor.
data ScoresList =
  ScoresList'
    { _sllXgafv :: !(Maybe Xgafv)
    , _sllUploadProtocol :: !(Maybe Text)
    , _sllAccessToken :: !(Maybe Text)
    , _sllUploadType :: !(Maybe Text)
    , _sllCollection :: !ScoresListCollection
    , _sllTimeSpan :: !ScoresListTimeSpan
    , _sllLeaderboardId :: !Text
    , _sllLanguage :: !(Maybe Text)
    , _sllPageToken :: !(Maybe Text)
    , _sllMaxResults :: !(Maybe (Textual Int32))
    , _sllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sllXgafv'
--
-- * 'sllUploadProtocol'
--
-- * 'sllAccessToken'
--
-- * 'sllUploadType'
--
-- * 'sllCollection'
--
-- * 'sllTimeSpan'
--
-- * 'sllLeaderboardId'
--
-- * 'sllLanguage'
--
-- * 'sllPageToken'
--
-- * 'sllMaxResults'
--
-- * 'sllCallback'
scoresList
    :: ScoresListCollection -- ^ 'sllCollection'
    -> ScoresListTimeSpan -- ^ 'sllTimeSpan'
    -> Text -- ^ 'sllLeaderboardId'
    -> ScoresList
scoresList pSllCollection_ pSllTimeSpan_ pSllLeaderboardId_ =
  ScoresList'
    { _sllXgafv = Nothing
    , _sllUploadProtocol = Nothing
    , _sllAccessToken = Nothing
    , _sllUploadType = Nothing
    , _sllCollection = pSllCollection_
    , _sllTimeSpan = pSllTimeSpan_
    , _sllLeaderboardId = pSllLeaderboardId_
    , _sllLanguage = Nothing
    , _sllPageToken = Nothing
    , _sllMaxResults = Nothing
    , _sllCallback = Nothing
    }


-- | V1 error format.
sllXgafv :: Lens' ScoresList (Maybe Xgafv)
sllXgafv = lens _sllXgafv (\ s a -> s{_sllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sllUploadProtocol :: Lens' ScoresList (Maybe Text)
sllUploadProtocol
  = lens _sllUploadProtocol
      (\ s a -> s{_sllUploadProtocol = a})

-- | OAuth access token.
sllAccessToken :: Lens' ScoresList (Maybe Text)
sllAccessToken
  = lens _sllAccessToken
      (\ s a -> s{_sllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sllUploadType :: Lens' ScoresList (Maybe Text)
sllUploadType
  = lens _sllUploadType
      (\ s a -> s{_sllUploadType = a})

-- | The collection of scores you\'re requesting.
sllCollection :: Lens' ScoresList ScoresListCollection
sllCollection
  = lens _sllCollection
      (\ s a -> s{_sllCollection = a})

-- | The time span for the scores and ranks you\'re requesting.
sllTimeSpan :: Lens' ScoresList ScoresListTimeSpan
sllTimeSpan
  = lens _sllTimeSpan (\ s a -> s{_sllTimeSpan = a})

-- | The ID of the leaderboard.
sllLeaderboardId :: Lens' ScoresList Text
sllLeaderboardId
  = lens _sllLeaderboardId
      (\ s a -> s{_sllLeaderboardId = a})

-- | The preferred language to use for strings returned by this method.
sllLanguage :: Lens' ScoresList (Maybe Text)
sllLanguage
  = lens _sllLanguage (\ s a -> s{_sllLanguage = a})

-- | The token returned by the previous request.
sllPageToken :: Lens' ScoresList (Maybe Text)
sllPageToken
  = lens _sllPageToken (\ s a -> s{_sllPageToken = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified \`maxResults\`.
sllMaxResults :: Lens' ScoresList (Maybe Int32)
sllMaxResults
  = lens _sllMaxResults
      (\ s a -> s{_sllMaxResults = a})
      . mapping _Coerce

-- | JSONP
sllCallback :: Lens' ScoresList (Maybe Text)
sllCallback
  = lens _sllCallback (\ s a -> s{_sllCallback = a})

instance GoogleRequest ScoresList where
        type Rs ScoresList = LeaderboardScores
        type Scopes ScoresList =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresList'{..}
          = go _sllLeaderboardId _sllCollection
              (Just _sllTimeSpan)
              _sllXgafv
              _sllUploadProtocol
              _sllAccessToken
              _sllUploadType
              _sllLanguage
              _sllPageToken
              _sllMaxResults
              _sllCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy ScoresListResource)
                      mempty
