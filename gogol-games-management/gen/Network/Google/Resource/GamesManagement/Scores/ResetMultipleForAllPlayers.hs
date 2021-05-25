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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.scores.resetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      ScoresResetMultipleForAllPlayersResource

    -- * Creating a Request
    , scoresResetMultipleForAllPlayers
    , ScoresResetMultipleForAllPlayers

    -- * Request Lenses
    , srmfapXgafv
    , srmfapUploadProtocol
    , srmfapAccessToken
    , srmfapUploadType
    , srmfapPayload
    , srmfapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.resetMultipleForAllPlayers@ method which the
-- 'ScoresResetMultipleForAllPlayers' request conforms to.
type ScoresResetMultipleForAllPlayersResource =
     "games" :>
       "v1management" :>
         "scores" :>
           "resetMultipleForAllPlayers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ScoresResetMultipleForAllRequest :>
                           Post '[JSON] ()

-- | Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
--
-- /See:/ 'scoresResetMultipleForAllPlayers' smart constructor.
data ScoresResetMultipleForAllPlayers =
  ScoresResetMultipleForAllPlayers'
    { _srmfapXgafv :: !(Maybe Xgafv)
    , _srmfapUploadProtocol :: !(Maybe Text)
    , _srmfapAccessToken :: !(Maybe Text)
    , _srmfapUploadType :: !(Maybe Text)
    , _srmfapPayload :: !ScoresResetMultipleForAllRequest
    , _srmfapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresResetMultipleForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srmfapXgafv'
--
-- * 'srmfapUploadProtocol'
--
-- * 'srmfapAccessToken'
--
-- * 'srmfapUploadType'
--
-- * 'srmfapPayload'
--
-- * 'srmfapCallback'
scoresResetMultipleForAllPlayers
    :: ScoresResetMultipleForAllRequest -- ^ 'srmfapPayload'
    -> ScoresResetMultipleForAllPlayers
scoresResetMultipleForAllPlayers pSrmfapPayload_ =
  ScoresResetMultipleForAllPlayers'
    { _srmfapXgafv = Nothing
    , _srmfapUploadProtocol = Nothing
    , _srmfapAccessToken = Nothing
    , _srmfapUploadType = Nothing
    , _srmfapPayload = pSrmfapPayload_
    , _srmfapCallback = Nothing
    }


-- | V1 error format.
srmfapXgafv :: Lens' ScoresResetMultipleForAllPlayers (Maybe Xgafv)
srmfapXgafv
  = lens _srmfapXgafv (\ s a -> s{_srmfapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srmfapUploadProtocol :: Lens' ScoresResetMultipleForAllPlayers (Maybe Text)
srmfapUploadProtocol
  = lens _srmfapUploadProtocol
      (\ s a -> s{_srmfapUploadProtocol = a})

-- | OAuth access token.
srmfapAccessToken :: Lens' ScoresResetMultipleForAllPlayers (Maybe Text)
srmfapAccessToken
  = lens _srmfapAccessToken
      (\ s a -> s{_srmfapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srmfapUploadType :: Lens' ScoresResetMultipleForAllPlayers (Maybe Text)
srmfapUploadType
  = lens _srmfapUploadType
      (\ s a -> s{_srmfapUploadType = a})

-- | Multipart request metadata.
srmfapPayload :: Lens' ScoresResetMultipleForAllPlayers ScoresResetMultipleForAllRequest
srmfapPayload
  = lens _srmfapPayload
      (\ s a -> s{_srmfapPayload = a})

-- | JSONP
srmfapCallback :: Lens' ScoresResetMultipleForAllPlayers (Maybe Text)
srmfapCallback
  = lens _srmfapCallback
      (\ s a -> s{_srmfapCallback = a})

instance GoogleRequest
           ScoresResetMultipleForAllPlayers
         where
        type Rs ScoresResetMultipleForAllPlayers = ()
        type Scopes ScoresResetMultipleForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresResetMultipleForAllPlayers'{..}
          = go _srmfapXgafv _srmfapUploadProtocol
              _srmfapAccessToken
              _srmfapUploadType
              _srmfapCallback
              (Just AltJSON)
              _srmfapPayload
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ScoresResetMultipleForAllPlayersResource)
                      mempty
