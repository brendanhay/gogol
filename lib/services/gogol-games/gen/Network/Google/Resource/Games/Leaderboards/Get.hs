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
-- Module      : Network.Google.Resource.Games.Leaderboards.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.leaderboards.get@.
module Network.Google.Resource.Games.Leaderboards.Get
    (
    -- * REST Resource
      LeaderboardsGetResource

    -- * Creating a Request
    , leaderboardsGet
    , LeaderboardsGet

    -- * Request Lenses
    , lgXgafv
    , lgUploadProtocol
    , lgAccessToken
    , lgUploadType
    , lgLeaderboardId
    , lgLanguage
    , lgCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.leaderboards.get@ method which the
-- 'LeaderboardsGet' request conforms to.
type LeaderboardsGetResource =
     "games" :>
       "v1" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "language" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Leaderboard

-- | Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ 'leaderboardsGet' smart constructor.
data LeaderboardsGet =
  LeaderboardsGet'
    { _lgXgafv :: !(Maybe Xgafv)
    , _lgUploadProtocol :: !(Maybe Text)
    , _lgAccessToken :: !(Maybe Text)
    , _lgUploadType :: !(Maybe Text)
    , _lgLeaderboardId :: !Text
    , _lgLanguage :: !(Maybe Text)
    , _lgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgXgafv'
--
-- * 'lgUploadProtocol'
--
-- * 'lgAccessToken'
--
-- * 'lgUploadType'
--
-- * 'lgLeaderboardId'
--
-- * 'lgLanguage'
--
-- * 'lgCallback'
leaderboardsGet
    :: Text -- ^ 'lgLeaderboardId'
    -> LeaderboardsGet
leaderboardsGet pLgLeaderboardId_ =
  LeaderboardsGet'
    { _lgXgafv = Nothing
    , _lgUploadProtocol = Nothing
    , _lgAccessToken = Nothing
    , _lgUploadType = Nothing
    , _lgLeaderboardId = pLgLeaderboardId_
    , _lgLanguage = Nothing
    , _lgCallback = Nothing
    }


-- | V1 error format.
lgXgafv :: Lens' LeaderboardsGet (Maybe Xgafv)
lgXgafv = lens _lgXgafv (\ s a -> s{_lgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lgUploadProtocol :: Lens' LeaderboardsGet (Maybe Text)
lgUploadProtocol
  = lens _lgUploadProtocol
      (\ s a -> s{_lgUploadProtocol = a})

-- | OAuth access token.
lgAccessToken :: Lens' LeaderboardsGet (Maybe Text)
lgAccessToken
  = lens _lgAccessToken
      (\ s a -> s{_lgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lgUploadType :: Lens' LeaderboardsGet (Maybe Text)
lgUploadType
  = lens _lgUploadType (\ s a -> s{_lgUploadType = a})

-- | The ID of the leaderboard.
lgLeaderboardId :: Lens' LeaderboardsGet Text
lgLeaderboardId
  = lens _lgLeaderboardId
      (\ s a -> s{_lgLeaderboardId = a})

-- | The preferred language to use for strings returned by this method.
lgLanguage :: Lens' LeaderboardsGet (Maybe Text)
lgLanguage
  = lens _lgLanguage (\ s a -> s{_lgLanguage = a})

-- | JSONP
lgCallback :: Lens' LeaderboardsGet (Maybe Text)
lgCallback
  = lens _lgCallback (\ s a -> s{_lgCallback = a})

instance GoogleRequest LeaderboardsGet where
        type Rs LeaderboardsGet = Leaderboard
        type Scopes LeaderboardsGet =
             '["https://www.googleapis.com/auth/games"]
        requestClient LeaderboardsGet'{..}
          = go _lgLeaderboardId _lgXgafv _lgUploadProtocol
              _lgAccessToken
              _lgUploadType
              _lgLanguage
              _lgCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy LeaderboardsGetResource)
                      mempty
