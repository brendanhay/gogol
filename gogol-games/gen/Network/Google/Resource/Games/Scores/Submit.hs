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
-- Module      : Network.Google.Resource.Games.Scores.Submit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a score to the specified leaderboard.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.submit@.
module Network.Google.Resource.Games.Scores.Submit
    (
    -- * REST Resource
      ScoresSubmitResource

    -- * Creating a Request
    , scoresSubmit
    , ScoresSubmit

    -- * Request Lenses
    , ssXgafv
    , ssUploadProtocol
    , ssScoreTag
    , ssScore
    , ssAccessToken
    , ssUploadType
    , ssLeaderboardId
    , ssLanguage
    , ssCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.scores.submit@ method which the
-- 'ScoresSubmit' request conforms to.
type ScoresSubmitResource =
     "games" :>
       "v1" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               QueryParam "score" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "scoreTag" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "language" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] PlayerScoreResponse

-- | Submits a score to the specified leaderboard.
--
-- /See:/ 'scoresSubmit' smart constructor.
data ScoresSubmit =
  ScoresSubmit'
    { _ssXgafv :: !(Maybe Xgafv)
    , _ssUploadProtocol :: !(Maybe Text)
    , _ssScoreTag :: !(Maybe Text)
    , _ssScore :: !(Textual Int64)
    , _ssAccessToken :: !(Maybe Text)
    , _ssUploadType :: !(Maybe Text)
    , _ssLeaderboardId :: !Text
    , _ssLanguage :: !(Maybe Text)
    , _ssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresSubmit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssXgafv'
--
-- * 'ssUploadProtocol'
--
-- * 'ssScoreTag'
--
-- * 'ssScore'
--
-- * 'ssAccessToken'
--
-- * 'ssUploadType'
--
-- * 'ssLeaderboardId'
--
-- * 'ssLanguage'
--
-- * 'ssCallback'
scoresSubmit
    :: Int64 -- ^ 'ssScore'
    -> Text -- ^ 'ssLeaderboardId'
    -> ScoresSubmit
scoresSubmit pSsScore_ pSsLeaderboardId_ =
  ScoresSubmit'
    { _ssXgafv = Nothing
    , _ssUploadProtocol = Nothing
    , _ssScoreTag = Nothing
    , _ssScore = _Coerce # pSsScore_
    , _ssAccessToken = Nothing
    , _ssUploadType = Nothing
    , _ssLeaderboardId = pSsLeaderboardId_
    , _ssLanguage = Nothing
    , _ssCallback = Nothing
    }


-- | V1 error format.
ssXgafv :: Lens' ScoresSubmit (Maybe Xgafv)
ssXgafv = lens _ssXgafv (\ s a -> s{_ssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssUploadProtocol :: Lens' ScoresSubmit (Maybe Text)
ssUploadProtocol
  = lens _ssUploadProtocol
      (\ s a -> s{_ssUploadProtocol = a})

-- | Additional information about the score you\'re submitting. Values must
-- contain no more than 64 URI-safe characters as defined by section 2.3 of
-- RFC 3986.
ssScoreTag :: Lens' ScoresSubmit (Maybe Text)
ssScoreTag
  = lens _ssScoreTag (\ s a -> s{_ssScoreTag = a})

-- | The score you\'re submitting. The submitted score is ignored if it is
-- worse than a previously submitted score, where worse depends on the
-- leaderboard sort order. The meaning of the score value depends on the
-- leaderboard format type. For fixed-point, the score represents the raw
-- value. For time, the score represents elapsed time in milliseconds. For
-- currency, the score represents a value in micro units.
ssScore :: Lens' ScoresSubmit Int64
ssScore
  = lens _ssScore (\ s a -> s{_ssScore = a}) . _Coerce

-- | OAuth access token.
ssAccessToken :: Lens' ScoresSubmit (Maybe Text)
ssAccessToken
  = lens _ssAccessToken
      (\ s a -> s{_ssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssUploadType :: Lens' ScoresSubmit (Maybe Text)
ssUploadType
  = lens _ssUploadType (\ s a -> s{_ssUploadType = a})

-- | The ID of the leaderboard.
ssLeaderboardId :: Lens' ScoresSubmit Text
ssLeaderboardId
  = lens _ssLeaderboardId
      (\ s a -> s{_ssLeaderboardId = a})

-- | The preferred language to use for strings returned by this method.
ssLanguage :: Lens' ScoresSubmit (Maybe Text)
ssLanguage
  = lens _ssLanguage (\ s a -> s{_ssLanguage = a})

-- | JSONP
ssCallback :: Lens' ScoresSubmit (Maybe Text)
ssCallback
  = lens _ssCallback (\ s a -> s{_ssCallback = a})

instance GoogleRequest ScoresSubmit where
        type Rs ScoresSubmit = PlayerScoreResponse
        type Scopes ScoresSubmit =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresSubmit'{..}
          = go _ssLeaderboardId (Just _ssScore) _ssXgafv
              _ssUploadProtocol
              _ssScoreTag
              _ssAccessToken
              _ssUploadType
              _ssLanguage
              _ssCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy ScoresSubmitResource)
                      mempty
