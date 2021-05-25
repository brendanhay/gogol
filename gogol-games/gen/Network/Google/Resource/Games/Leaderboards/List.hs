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
-- Module      : Network.Google.Resource.Games.Leaderboards.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the leaderboard metadata for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.leaderboards.list@.
module Network.Google.Resource.Games.Leaderboards.List
    (
    -- * REST Resource
      LeaderboardsListResource

    -- * Creating a Request
    , leaderboardsList
    , LeaderboardsList

    -- * Request Lenses
    , llXgafv
    , llUploadProtocol
    , llAccessToken
    , llUploadType
    , llLanguage
    , llPageToken
    , llMaxResults
    , llCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.leaderboards.list@ method which the
-- 'LeaderboardsList' request conforms to.
type LeaderboardsListResource =
     "games" :>
       "v1" :>
         "leaderboards" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "language" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] LeaderboardListResponse

-- | Lists all the leaderboard metadata for your application.
--
-- /See:/ 'leaderboardsList' smart constructor.
data LeaderboardsList =
  LeaderboardsList'
    { _llXgafv :: !(Maybe Xgafv)
    , _llUploadProtocol :: !(Maybe Text)
    , _llAccessToken :: !(Maybe Text)
    , _llUploadType :: !(Maybe Text)
    , _llLanguage :: !(Maybe Text)
    , _llPageToken :: !(Maybe Text)
    , _llMaxResults :: !(Maybe (Textual Int32))
    , _llCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llXgafv'
--
-- * 'llUploadProtocol'
--
-- * 'llAccessToken'
--
-- * 'llUploadType'
--
-- * 'llLanguage'
--
-- * 'llPageToken'
--
-- * 'llMaxResults'
--
-- * 'llCallback'
leaderboardsList
    :: LeaderboardsList
leaderboardsList =
  LeaderboardsList'
    { _llXgafv = Nothing
    , _llUploadProtocol = Nothing
    , _llAccessToken = Nothing
    , _llUploadType = Nothing
    , _llLanguage = Nothing
    , _llPageToken = Nothing
    , _llMaxResults = Nothing
    , _llCallback = Nothing
    }


-- | V1 error format.
llXgafv :: Lens' LeaderboardsList (Maybe Xgafv)
llXgafv = lens _llXgafv (\ s a -> s{_llXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
llUploadProtocol :: Lens' LeaderboardsList (Maybe Text)
llUploadProtocol
  = lens _llUploadProtocol
      (\ s a -> s{_llUploadProtocol = a})

-- | OAuth access token.
llAccessToken :: Lens' LeaderboardsList (Maybe Text)
llAccessToken
  = lens _llAccessToken
      (\ s a -> s{_llAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
llUploadType :: Lens' LeaderboardsList (Maybe Text)
llUploadType
  = lens _llUploadType (\ s a -> s{_llUploadType = a})

-- | The preferred language to use for strings returned by this method.
llLanguage :: Lens' LeaderboardsList (Maybe Text)
llLanguage
  = lens _llLanguage (\ s a -> s{_llLanguage = a})

-- | The token returned by the previous request.
llPageToken :: Lens' LeaderboardsList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | The maximum number of leaderboards to return in the response. For any
-- response, the actual number of leaderboards returned may be less than
-- the specified \`maxResults\`.
llMaxResults :: Lens' LeaderboardsList (Maybe Int32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})
      . mapping _Coerce

-- | JSONP
llCallback :: Lens' LeaderboardsList (Maybe Text)
llCallback
  = lens _llCallback (\ s a -> s{_llCallback = a})

instance GoogleRequest LeaderboardsList where
        type Rs LeaderboardsList = LeaderboardListResponse
        type Scopes LeaderboardsList =
             '["https://www.googleapis.com/auth/games"]
        requestClient LeaderboardsList'{..}
          = go _llXgafv _llUploadProtocol _llAccessToken
              _llUploadType
              _llLanguage
              _llPageToken
              _llMaxResults
              _llCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy LeaderboardsListResource)
                      mempty
