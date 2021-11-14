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
-- Module      : Network.Google.Resource.Games.Applications.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the application with the given ID. If the
-- requested application is not available for the specified
-- \`platformType\`, the returned response will not include any instance
-- data.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.applications.get@.
module Network.Google.Resource.Games.Applications.Get
    (
    -- * REST Resource
      ApplicationsGetResource

    -- * Creating a Request
    , applicationsGet
    , ApplicationsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agAccessToken
    , agUploadType
    , agApplicationId
    , agPlatformType
    , agLanguage
    , agCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.applications.get@ method which the
-- 'ApplicationsGet' request conforms to.
type ApplicationsGetResource =
     "games" :>
       "v1" :>
         "applications" :>
           Capture "applicationId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "platformType" ApplicationsGetPlatformType
                       :>
                       QueryParam "language" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Application

-- | Retrieves the metadata of the application with the given ID. If the
-- requested application is not available for the specified
-- \`platformType\`, the returned response will not include any instance
-- data.
--
-- /See:/ 'applicationsGet' smart constructor.
data ApplicationsGet =
  ApplicationsGet'
    { _agXgafv :: !(Maybe Xgafv)
    , _agUploadProtocol :: !(Maybe Text)
    , _agAccessToken :: !(Maybe Text)
    , _agUploadType :: !(Maybe Text)
    , _agApplicationId :: !Text
    , _agPlatformType :: !(Maybe ApplicationsGetPlatformType)
    , _agLanguage :: !(Maybe Text)
    , _agCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agApplicationId'
--
-- * 'agPlatformType'
--
-- * 'agLanguage'
--
-- * 'agCallback'
applicationsGet
    :: Text -- ^ 'agApplicationId'
    -> ApplicationsGet
applicationsGet pAgApplicationId_ =
  ApplicationsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agApplicationId = pAgApplicationId_
    , _agPlatformType = Nothing
    , _agLanguage = Nothing
    , _agCallback = Nothing
    }


-- | V1 error format.
agXgafv :: Lens' ApplicationsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' ApplicationsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | OAuth access token.
agAccessToken :: Lens' ApplicationsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' ApplicationsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | The application ID from the Google Play developer console.
agApplicationId :: Lens' ApplicationsGet Text
agApplicationId
  = lens _agApplicationId
      (\ s a -> s{_agApplicationId = a})

-- | Restrict application details returned to the specific platform.
agPlatformType :: Lens' ApplicationsGet (Maybe ApplicationsGetPlatformType)
agPlatformType
  = lens _agPlatformType
      (\ s a -> s{_agPlatformType = a})

-- | The preferred language to use for strings returned by this method.
agLanguage :: Lens' ApplicationsGet (Maybe Text)
agLanguage
  = lens _agLanguage (\ s a -> s{_agLanguage = a})

-- | JSONP
agCallback :: Lens' ApplicationsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest ApplicationsGet where
        type Rs ApplicationsGet = Application
        type Scopes ApplicationsGet =
             '["https://www.googleapis.com/auth/games"]
        requestClient ApplicationsGet'{..}
          = go _agApplicationId _agXgafv _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agPlatformType
              _agLanguage
              _agCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsGetResource)
                      mempty
