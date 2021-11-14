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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all scores for all leaderboards for the currently authenticated
-- players. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.scores.resetAll@.
module Network.Google.Resource.GamesManagement.Scores.ResetAll
    (
    -- * REST Resource
      ScoresResetAllResource

    -- * Creating a Request
    , scoresResetAll
    , ScoresResetAll

    -- * Request Lenses
    , sraXgafv
    , sraUploadProtocol
    , sraAccessToken
    , sraUploadType
    , sraCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.resetAll@ method which the
-- 'ScoresResetAll' request conforms to.
type ScoresResetAllResource =
     "games" :>
       "v1management" :>
         "scores" :>
           "reset" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] PlayerScoreResetAllResponse

-- | Resets all scores for all leaderboards for the currently authenticated
-- players. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'scoresResetAll' smart constructor.
data ScoresResetAll =
  ScoresResetAll'
    { _sraXgafv :: !(Maybe Xgafv)
    , _sraUploadProtocol :: !(Maybe Text)
    , _sraAccessToken :: !(Maybe Text)
    , _sraUploadType :: !(Maybe Text)
    , _sraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresResetAll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sraXgafv'
--
-- * 'sraUploadProtocol'
--
-- * 'sraAccessToken'
--
-- * 'sraUploadType'
--
-- * 'sraCallback'
scoresResetAll
    :: ScoresResetAll
scoresResetAll =
  ScoresResetAll'
    { _sraXgafv = Nothing
    , _sraUploadProtocol = Nothing
    , _sraAccessToken = Nothing
    , _sraUploadType = Nothing
    , _sraCallback = Nothing
    }


-- | V1 error format.
sraXgafv :: Lens' ScoresResetAll (Maybe Xgafv)
sraXgafv = lens _sraXgafv (\ s a -> s{_sraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sraUploadProtocol :: Lens' ScoresResetAll (Maybe Text)
sraUploadProtocol
  = lens _sraUploadProtocol
      (\ s a -> s{_sraUploadProtocol = a})

-- | OAuth access token.
sraAccessToken :: Lens' ScoresResetAll (Maybe Text)
sraAccessToken
  = lens _sraAccessToken
      (\ s a -> s{_sraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sraUploadType :: Lens' ScoresResetAll (Maybe Text)
sraUploadType
  = lens _sraUploadType
      (\ s a -> s{_sraUploadType = a})

-- | JSONP
sraCallback :: Lens' ScoresResetAll (Maybe Text)
sraCallback
  = lens _sraCallback (\ s a -> s{_sraCallback = a})

instance GoogleRequest ScoresResetAll where
        type Rs ScoresResetAll = PlayerScoreResetAllResponse
        type Scopes ScoresResetAll =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresResetAll'{..}
          = go _sraXgafv _sraUploadProtocol _sraAccessToken
              _sraUploadType
              _sraCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy ScoresResetAllResource)
                      mempty
