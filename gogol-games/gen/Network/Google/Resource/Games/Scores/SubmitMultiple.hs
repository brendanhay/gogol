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
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.submitMultiple@.
module Network.Google.Resource.Games.Scores.SubmitMultiple
    (
    -- * REST Resource
      ScoresSubmitMultipleResource

    -- * Creating a Request
    , scoresSubmitMultiple
    , ScoresSubmitMultiple

    -- * Request Lenses
    , ssmXgafv
    , ssmUploadProtocol
    , ssmAccessToken
    , ssmUploadType
    , ssmPayload
    , ssmLanguage
    , ssmCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.scores.submitMultiple@ method which the
-- 'ScoresSubmitMultiple' request conforms to.
type ScoresSubmitMultipleResource =
     "games" :>
       "v1" :>
         "leaderboards" :>
           "scores" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "language" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlayerScoreSubmissionList :>
                             Post '[JSON] PlayerScoreListResponse

-- | Submits multiple scores to leaderboards.
--
-- /See:/ 'scoresSubmitMultiple' smart constructor.
data ScoresSubmitMultiple =
  ScoresSubmitMultiple'
    { _ssmXgafv :: !(Maybe Xgafv)
    , _ssmUploadProtocol :: !(Maybe Text)
    , _ssmAccessToken :: !(Maybe Text)
    , _ssmUploadType :: !(Maybe Text)
    , _ssmPayload :: !PlayerScoreSubmissionList
    , _ssmLanguage :: !(Maybe Text)
    , _ssmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresSubmitMultiple' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssmXgafv'
--
-- * 'ssmUploadProtocol'
--
-- * 'ssmAccessToken'
--
-- * 'ssmUploadType'
--
-- * 'ssmPayload'
--
-- * 'ssmLanguage'
--
-- * 'ssmCallback'
scoresSubmitMultiple
    :: PlayerScoreSubmissionList -- ^ 'ssmPayload'
    -> ScoresSubmitMultiple
scoresSubmitMultiple pSsmPayload_ =
  ScoresSubmitMultiple'
    { _ssmXgafv = Nothing
    , _ssmUploadProtocol = Nothing
    , _ssmAccessToken = Nothing
    , _ssmUploadType = Nothing
    , _ssmPayload = pSsmPayload_
    , _ssmLanguage = Nothing
    , _ssmCallback = Nothing
    }


-- | V1 error format.
ssmXgafv :: Lens' ScoresSubmitMultiple (Maybe Xgafv)
ssmXgafv = lens _ssmXgafv (\ s a -> s{_ssmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssmUploadProtocol :: Lens' ScoresSubmitMultiple (Maybe Text)
ssmUploadProtocol
  = lens _ssmUploadProtocol
      (\ s a -> s{_ssmUploadProtocol = a})

-- | OAuth access token.
ssmAccessToken :: Lens' ScoresSubmitMultiple (Maybe Text)
ssmAccessToken
  = lens _ssmAccessToken
      (\ s a -> s{_ssmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssmUploadType :: Lens' ScoresSubmitMultiple (Maybe Text)
ssmUploadType
  = lens _ssmUploadType
      (\ s a -> s{_ssmUploadType = a})

-- | Multipart request metadata.
ssmPayload :: Lens' ScoresSubmitMultiple PlayerScoreSubmissionList
ssmPayload
  = lens _ssmPayload (\ s a -> s{_ssmPayload = a})

-- | The preferred language to use for strings returned by this method.
ssmLanguage :: Lens' ScoresSubmitMultiple (Maybe Text)
ssmLanguage
  = lens _ssmLanguage (\ s a -> s{_ssmLanguage = a})

-- | JSONP
ssmCallback :: Lens' ScoresSubmitMultiple (Maybe Text)
ssmCallback
  = lens _ssmCallback (\ s a -> s{_ssmCallback = a})

instance GoogleRequest ScoresSubmitMultiple where
        type Rs ScoresSubmitMultiple =
             PlayerScoreListResponse
        type Scopes ScoresSubmitMultiple =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresSubmitMultiple'{..}
          = go _ssmXgafv _ssmUploadProtocol _ssmAccessToken
              _ssmUploadType
              _ssmLanguage
              _ssmCallback
              (Just AltJSON)
              _ssmPayload
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ScoresSubmitMultipleResource)
                      mempty
