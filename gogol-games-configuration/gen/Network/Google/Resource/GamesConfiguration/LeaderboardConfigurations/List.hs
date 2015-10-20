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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the leaderboard configurations in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.list@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
    (
    -- * REST Resource
      LeaderboardConfigurationsListResource

    -- * Creating a Request
    , leaderboardConfigurationsList
    , LeaderboardConfigurationsList

    -- * Request Lenses
    , lclApplicationId
    , lclPageToken
    , lclMaxResults
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.list@ method which the
-- 'LeaderboardConfigurationsList' request conforms to.
type LeaderboardConfigurationsListResource =
     "applications" :>
       Capture "applicationId" Text :>
         "leaderboards" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] LeaderboardConfigurationListResponse

-- | Returns a list of the leaderboard configurations in this application.
--
-- /See:/ 'leaderboardConfigurationsList' smart constructor.
data LeaderboardConfigurationsList = LeaderboardConfigurationsList
    { _lclApplicationId :: !Text
    , _lclPageToken     :: !(Maybe Text)
    , _lclMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lclApplicationId'
--
-- * 'lclPageToken'
--
-- * 'lclMaxResults'
leaderboardConfigurationsList
    :: Text -- ^ 'lclApplicationId'
    -> LeaderboardConfigurationsList
leaderboardConfigurationsList pLclApplicationId_ =
    LeaderboardConfigurationsList
    { _lclApplicationId = pLclApplicationId_
    , _lclPageToken = Nothing
    , _lclMaxResults = Nothing
    }

-- | The application ID from the Google Play developer console.
lclApplicationId :: Lens' LeaderboardConfigurationsList Text
lclApplicationId
  = lens _lclApplicationId
      (\ s a -> s{_lclApplicationId = a})

-- | The token returned by the previous request.
lclPageToken :: Lens' LeaderboardConfigurationsList (Maybe Text)
lclPageToken
  = lens _lclPageToken (\ s a -> s{_lclPageToken = a})

-- | The maximum number of resource configurations to return in the response,
-- used for paging. For any response, the actual number of resources
-- returned may be less than the specified maxResults.
lclMaxResults :: Lens' LeaderboardConfigurationsList (Maybe Int32)
lclMaxResults
  = lens _lclMaxResults
      (\ s a -> s{_lclMaxResults = a})

instance GoogleRequest LeaderboardConfigurationsList
         where
        type Rs LeaderboardConfigurationsList =
             LeaderboardConfigurationListResponse
        requestClient LeaderboardConfigurationsList{..}
          = go _lclApplicationId _lclPageToken _lclMaxResults
              (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LeaderboardConfigurationsListResource)
                      mempty
