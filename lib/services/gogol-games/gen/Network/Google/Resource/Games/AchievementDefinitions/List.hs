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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the achievement definitions for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievementDefinitions.list@.
module Network.Google.Resource.Games.AchievementDefinitions.List
    (
    -- * REST Resource
      AchievementDefinitionsListResource

    -- * Creating a Request
    , achievementDefinitionsList
    , AchievementDefinitionsList

    -- * Request Lenses
    , adlXgafv
    , adlUploadProtocol
    , adlAccessToken
    , adlUploadType
    , adlLanguage
    , adlPageToken
    , adlMaxResults
    , adlCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.achievementDefinitions.list@ method which the
-- 'AchievementDefinitionsList' request conforms to.
type AchievementDefinitionsListResource =
     "games" :>
       "v1" :>
         "achievements" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "language" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AchievementDefinitionsListResponse

-- | Lists all the achievement definitions for your application.
--
-- /See:/ 'achievementDefinitionsList' smart constructor.
data AchievementDefinitionsList =
  AchievementDefinitionsList'
    { _adlXgafv :: !(Maybe Xgafv)
    , _adlUploadProtocol :: !(Maybe Text)
    , _adlAccessToken :: !(Maybe Text)
    , _adlUploadType :: !(Maybe Text)
    , _adlLanguage :: !(Maybe Text)
    , _adlPageToken :: !(Maybe Text)
    , _adlMaxResults :: !(Maybe (Textual Int32))
    , _adlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementDefinitionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adlXgafv'
--
-- * 'adlUploadProtocol'
--
-- * 'adlAccessToken'
--
-- * 'adlUploadType'
--
-- * 'adlLanguage'
--
-- * 'adlPageToken'
--
-- * 'adlMaxResults'
--
-- * 'adlCallback'
achievementDefinitionsList
    :: AchievementDefinitionsList
achievementDefinitionsList =
  AchievementDefinitionsList'
    { _adlXgafv = Nothing
    , _adlUploadProtocol = Nothing
    , _adlAccessToken = Nothing
    , _adlUploadType = Nothing
    , _adlLanguage = Nothing
    , _adlPageToken = Nothing
    , _adlMaxResults = Nothing
    , _adlCallback = Nothing
    }


-- | V1 error format.
adlXgafv :: Lens' AchievementDefinitionsList (Maybe Xgafv)
adlXgafv = lens _adlXgafv (\ s a -> s{_adlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
adlUploadProtocol :: Lens' AchievementDefinitionsList (Maybe Text)
adlUploadProtocol
  = lens _adlUploadProtocol
      (\ s a -> s{_adlUploadProtocol = a})

-- | OAuth access token.
adlAccessToken :: Lens' AchievementDefinitionsList (Maybe Text)
adlAccessToken
  = lens _adlAccessToken
      (\ s a -> s{_adlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
adlUploadType :: Lens' AchievementDefinitionsList (Maybe Text)
adlUploadType
  = lens _adlUploadType
      (\ s a -> s{_adlUploadType = a})

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
-- resources returned may be less than the specified \`maxResults\`.
adlMaxResults :: Lens' AchievementDefinitionsList (Maybe Int32)
adlMaxResults
  = lens _adlMaxResults
      (\ s a -> s{_adlMaxResults = a})
      . mapping _Coerce

-- | JSONP
adlCallback :: Lens' AchievementDefinitionsList (Maybe Text)
adlCallback
  = lens _adlCallback (\ s a -> s{_adlCallback = a})

instance GoogleRequest AchievementDefinitionsList
         where
        type Rs AchievementDefinitionsList =
             AchievementDefinitionsListResponse
        type Scopes AchievementDefinitionsList =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementDefinitionsList'{..}
          = go _adlXgafv _adlUploadProtocol _adlAccessToken
              _adlUploadType
              _adlLanguage
              _adlPageToken
              _adlMaxResults
              _adlCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementDefinitionsListResource)
                      mempty
