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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetAllForAllPlayers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for all draft leaderboards for all players. This method is
-- only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.scores.resetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetAllForAllPlayers
    (
    -- * REST Resource
      ScoresResetAllForAllPlayersResource

    -- * Creating a Request
    , scoresResetAllForAllPlayers
    , ScoresResetAllForAllPlayers

    -- * Request Lenses
    , srafapXgafv
    , srafapUploadProtocol
    , srafapAccessToken
    , srafapUploadType
    , srafapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.resetAllForAllPlayers@ method which the
-- 'ScoresResetAllForAllPlayers' request conforms to.
type ScoresResetAllForAllPlayersResource =
     "games" :>
       "v1management" :>
         "scores" :>
           "resetAllForAllPlayers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets scores for all draft leaderboards for all players. This method is
-- only available to user accounts for your developer console.
--
-- /See:/ 'scoresResetAllForAllPlayers' smart constructor.
data ScoresResetAllForAllPlayers =
  ScoresResetAllForAllPlayers'
    { _srafapXgafv :: !(Maybe Xgafv)
    , _srafapUploadProtocol :: !(Maybe Text)
    , _srafapAccessToken :: !(Maybe Text)
    , _srafapUploadType :: !(Maybe Text)
    , _srafapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresResetAllForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srafapXgafv'
--
-- * 'srafapUploadProtocol'
--
-- * 'srafapAccessToken'
--
-- * 'srafapUploadType'
--
-- * 'srafapCallback'
scoresResetAllForAllPlayers
    :: ScoresResetAllForAllPlayers
scoresResetAllForAllPlayers =
  ScoresResetAllForAllPlayers'
    { _srafapXgafv = Nothing
    , _srafapUploadProtocol = Nothing
    , _srafapAccessToken = Nothing
    , _srafapUploadType = Nothing
    , _srafapCallback = Nothing
    }


-- | V1 error format.
srafapXgafv :: Lens' ScoresResetAllForAllPlayers (Maybe Xgafv)
srafapXgafv
  = lens _srafapXgafv (\ s a -> s{_srafapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srafapUploadProtocol :: Lens' ScoresResetAllForAllPlayers (Maybe Text)
srafapUploadProtocol
  = lens _srafapUploadProtocol
      (\ s a -> s{_srafapUploadProtocol = a})

-- | OAuth access token.
srafapAccessToken :: Lens' ScoresResetAllForAllPlayers (Maybe Text)
srafapAccessToken
  = lens _srafapAccessToken
      (\ s a -> s{_srafapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srafapUploadType :: Lens' ScoresResetAllForAllPlayers (Maybe Text)
srafapUploadType
  = lens _srafapUploadType
      (\ s a -> s{_srafapUploadType = a})

-- | JSONP
srafapCallback :: Lens' ScoresResetAllForAllPlayers (Maybe Text)
srafapCallback
  = lens _srafapCallback
      (\ s a -> s{_srafapCallback = a})

instance GoogleRequest ScoresResetAllForAllPlayers
         where
        type Rs ScoresResetAllForAllPlayers = ()
        type Scopes ScoresResetAllForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresResetAllForAllPlayers'{..}
          = go _srafapXgafv _srafapUploadProtocol
              _srafapAccessToken
              _srafapUploadType
              _srafapCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ScoresResetAllForAllPlayersResource)
                      mempty
