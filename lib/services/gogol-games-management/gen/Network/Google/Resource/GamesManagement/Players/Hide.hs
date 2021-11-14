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
-- Module      : Network.Google.Resource.GamesManagement.Players.Hide
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hide the given player\'s leaderboard scores from the given application.
-- This method is only available to user accounts for your developer
-- console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.players.hide@.
module Network.Google.Resource.GamesManagement.Players.Hide
    (
    -- * REST Resource
      PlayersHideResource

    -- * Creating a Request
    , playersHide
    , PlayersHide

    -- * Request Lenses
    , phXgafv
    , phUploadProtocol
    , phAccessToken
    , phUploadType
    , phApplicationId
    , phPlayerId
    , phCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.players.hide@ method which the
-- 'PlayersHide' request conforms to.
type PlayersHideResource =
     "games" :>
       "v1management" :>
         "applications" :>
           Capture "applicationId" Text :>
             "players" :>
               "hidden" :>
                 Capture "playerId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Hide the given player\'s leaderboard scores from the given application.
-- This method is only available to user accounts for your developer
-- console.
--
-- /See:/ 'playersHide' smart constructor.
data PlayersHide =
  PlayersHide'
    { _phXgafv :: !(Maybe Xgafv)
    , _phUploadProtocol :: !(Maybe Text)
    , _phAccessToken :: !(Maybe Text)
    , _phUploadType :: !(Maybe Text)
    , _phApplicationId :: !Text
    , _phPlayerId :: !Text
    , _phCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayersHide' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phXgafv'
--
-- * 'phUploadProtocol'
--
-- * 'phAccessToken'
--
-- * 'phUploadType'
--
-- * 'phApplicationId'
--
-- * 'phPlayerId'
--
-- * 'phCallback'
playersHide
    :: Text -- ^ 'phApplicationId'
    -> Text -- ^ 'phPlayerId'
    -> PlayersHide
playersHide pPhApplicationId_ pPhPlayerId_ =
  PlayersHide'
    { _phXgafv = Nothing
    , _phUploadProtocol = Nothing
    , _phAccessToken = Nothing
    , _phUploadType = Nothing
    , _phApplicationId = pPhApplicationId_
    , _phPlayerId = pPhPlayerId_
    , _phCallback = Nothing
    }


-- | V1 error format.
phXgafv :: Lens' PlayersHide (Maybe Xgafv)
phXgafv = lens _phXgafv (\ s a -> s{_phXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
phUploadProtocol :: Lens' PlayersHide (Maybe Text)
phUploadProtocol
  = lens _phUploadProtocol
      (\ s a -> s{_phUploadProtocol = a})

-- | OAuth access token.
phAccessToken :: Lens' PlayersHide (Maybe Text)
phAccessToken
  = lens _phAccessToken
      (\ s a -> s{_phAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
phUploadType :: Lens' PlayersHide (Maybe Text)
phUploadType
  = lens _phUploadType (\ s a -> s{_phUploadType = a})

-- | The application ID from the Google Play developer console.
phApplicationId :: Lens' PlayersHide Text
phApplicationId
  = lens _phApplicationId
      (\ s a -> s{_phApplicationId = a})

-- | A player ID. A value of \`me\` may be used in place of the authenticated
-- player\'s ID.
phPlayerId :: Lens' PlayersHide Text
phPlayerId
  = lens _phPlayerId (\ s a -> s{_phPlayerId = a})

-- | JSONP
phCallback :: Lens' PlayersHide (Maybe Text)
phCallback
  = lens _phCallback (\ s a -> s{_phCallback = a})

instance GoogleRequest PlayersHide where
        type Rs PlayersHide = ()
        type Scopes PlayersHide =
             '["https://www.googleapis.com/auth/games"]
        requestClient PlayersHide'{..}
          = go _phApplicationId _phPlayerId _phXgafv
              _phUploadProtocol
              _phAccessToken
              _phUploadType
              _phCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy PlayersHideResource)
                      mempty
