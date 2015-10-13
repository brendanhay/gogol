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
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of the achievement configurations in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsList@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
    (
    -- * REST Resource
      AchievementConfigurationsListResource

    -- * Creating a Request
    , achievementConfigurationsList'
    , AchievementConfigurationsList'

    -- * Request Lenses
    , aclApplicationId
    , aclPageToken
    , aclMaxResults
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsList@ method which the
-- 'AchievementConfigurationsList'' request conforms to.
type AchievementConfigurationsListResource =
     "applications" :>
       Capture "applicationId" Text :>
         "achievements" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] AchievementConfigurationListResponse

-- | Returns a list of the achievement configurations in this application.
--
-- /See:/ 'achievementConfigurationsList'' smart constructor.
data AchievementConfigurationsList' = AchievementConfigurationsList'
    { _aclApplicationId :: !Text
    , _aclPageToken     :: !(Maybe Text)
    , _aclMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclApplicationId'
--
-- * 'aclPageToken'
--
-- * 'aclMaxResults'
achievementConfigurationsList'
    :: Text -- ^ 'applicationId'
    -> AchievementConfigurationsList'
achievementConfigurationsList' pAclApplicationId_ =
    AchievementConfigurationsList'
    { _aclApplicationId = pAclApplicationId_
    , _aclPageToken = Nothing
    , _aclMaxResults = Nothing
    }

-- | The application ID from the Google Play developer console.
aclApplicationId :: Lens' AchievementConfigurationsList' Text
aclApplicationId
  = lens _aclApplicationId
      (\ s a -> s{_aclApplicationId = a})

-- | The token returned by the previous request.
aclPageToken :: Lens' AchievementConfigurationsList' (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | The maximum number of resource configurations to return in the response,
-- used for paging. For any response, the actual number of resources
-- returned may be less than the specified maxResults.
aclMaxResults :: Lens' AchievementConfigurationsList' (Maybe Int32)
aclMaxResults
  = lens _aclMaxResults
      (\ s a -> s{_aclMaxResults = a})

instance GoogleRequest AchievementConfigurationsList'
         where
        type Rs AchievementConfigurationsList' =
             AchievementConfigurationListResponse
        requestClient AchievementConfigurationsList'{..}
          = go _aclApplicationId _aclPageToken _aclMaxResults
              (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsListResource)
                      mempty
