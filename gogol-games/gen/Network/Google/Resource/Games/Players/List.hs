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
-- Module      : Network.Google.Resource.Games.Players.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the collection of players for the currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.players.list@.
module Network.Google.Resource.Games.Players.List
    (
    -- * REST Resource
      PlayersListResource

    -- * Creating a Request
    , playersList
    , PlayersList

    -- * Request Lenses
    , plXgafv
    , plUploadProtocol
    , plAccessToken
    , plUploadType
    , plCollection
    , plLanguage
    , plPageToken
    , plMaxResults
    , plCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.players.list@ method which the
-- 'PlayersList' request conforms to.
type PlayersListResource =
     "games" :>
       "v1" :>
         "players" :>
           "me" :>
             "players" :>
               Capture "collection" PlayersListCollection :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "language" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] PlayerListResponse

-- | Get the collection of players for the currently authenticated user.
--
-- /See:/ 'playersList' smart constructor.
data PlayersList =
  PlayersList'
    { _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plAccessToken :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plCollection :: !PlayersListCollection
    , _plLanguage :: !(Maybe Text)
    , _plPageToken :: !(Maybe Text)
    , _plMaxResults :: !(Maybe (Textual Int32))
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plCollection'
--
-- * 'plLanguage'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
--
-- * 'plCallback'
playersList
    :: PlayersListCollection -- ^ 'plCollection'
    -> PlayersList
playersList pPlCollection_ =
  PlayersList'
    { _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plCollection = pPlCollection_
    , _plLanguage = Nothing
    , _plPageToken = Nothing
    , _plMaxResults = Nothing
    , _plCallback = Nothing
    }


-- | V1 error format.
plXgafv :: Lens' PlayersList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' PlayersList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | OAuth access token.
plAccessToken :: Lens' PlayersList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' PlayersList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | Collection of players being retrieved
plCollection :: Lens' PlayersList PlayersListCollection
plCollection
  = lens _plCollection (\ s a -> s{_plCollection = a})

-- | The preferred language to use for strings returned by this method.
plLanguage :: Lens' PlayersList (Maybe Text)
plLanguage
  = lens _plLanguage (\ s a -> s{_plLanguage = a})

-- | The token returned by the previous request.
plPageToken :: Lens' PlayersList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | The maximum number of player resources to return in the response, used
-- for paging. For any response, the actual number of player resources
-- returned may be less than the specified \`maxResults\`.
plMaxResults :: Lens' PlayersList (Maybe Int32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

-- | JSONP
plCallback :: Lens' PlayersList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest PlayersList where
        type Rs PlayersList = PlayerListResponse
        type Scopes PlayersList =
             '["https://www.googleapis.com/auth/games"]
        requestClient PlayersList'{..}
          = go _plCollection _plXgafv _plUploadProtocol
              _plAccessToken
              _plUploadType
              _plLanguage
              _plPageToken
              _plMaxResults
              _plCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy PlayersListResource)
                      mempty
