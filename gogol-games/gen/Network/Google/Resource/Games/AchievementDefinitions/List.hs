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
-- Module      : Network.Google.Resource.Games.AchievementDefinitions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the achievement definitions for your application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievementDefinitions.list@.
module Network.Google.Resource.Games.AchievementDefinitions.List
    (
    -- * REST Resource
      AchievementDefinitionsListResource

    -- * Creating a Request
    , achievementDefinitionsList
    , AchievementDefinitionsList

    -- * Request Lenses
    , adlLanguage
    , adlPageToken
    , adlMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.achievementDefinitions.list@ method which the
-- 'AchievementDefinitionsList' request conforms to.
type AchievementDefinitionsListResource =
     "achievements" :>
       QueryParam "language" Text :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Int32 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AchievementDefinitionsListResponse

-- | Lists all the achievement definitions for your application.
--
-- /See:/ 'achievementDefinitionsList' smart constructor.
data AchievementDefinitionsList = AchievementDefinitionsList
    { _adlLanguage   :: !(Maybe Text)
    , _adlPageToken  :: !(Maybe Text)
    , _adlMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementDefinitionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adlLanguage'
--
-- * 'adlPageToken'
--
-- * 'adlMaxResults'
achievementDefinitionsList
    :: AchievementDefinitionsList
achievementDefinitionsList =
    AchievementDefinitionsList
    { _adlLanguage = Nothing
    , _adlPageToken = Nothing
    , _adlMaxResults = Nothing
    }

-- | The preferred language to use for strings returned by this method.
adlLanguage :: Lens' AchievementDefinitionsList (Maybe Text)
adlLanguage
  = lens _adlLanguage (\ s a -> s{_adlLanguage = a})

-- | The token returned by the previous request.
adlPageToken :: Lens' AchievementDefinitionsList (Maybe Text)
adlPageToken
  = lens _adlPageToken (\ s a -> s{_adlPageToken = a})

-- | The maximum number of achievement resources to return in the response,
-- used for paging. For any response, the actual number of achievement
-- resources returned may be less than the specified maxResults.
adlMaxResults :: Lens' AchievementDefinitionsList (Maybe Int32)
adlMaxResults
  = lens _adlMaxResults
      (\ s a -> s{_adlMaxResults = a})

instance GoogleRequest AchievementDefinitionsList
         where
        type Rs AchievementDefinitionsList =
             AchievementDefinitionsListResponse
        requestClient AchievementDefinitionsList{..}
          = go _adlLanguage _adlPageToken _adlMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementDefinitionsListResource)
                      mempty
