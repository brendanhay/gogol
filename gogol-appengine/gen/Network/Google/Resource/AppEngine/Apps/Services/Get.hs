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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current configuration of the specified service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.services.get@.
module Network.Google.Resource.AppEngine.Apps.Services.Get
    (
    -- * REST Resource
      AppsServicesGetResource

    -- * Creating a Request
    , appsServicesGet
    , AppsServicesGet

    -- * Request Lenses
    , asgXgafv
    , asgUploadProtocol
    , asgPp
    , asgAccessToken
    , asgUploadType
    , asgBearerToken
    , asgAppsId
    , asgServicesId
    , asgCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.get@ method which the
-- 'AppsServicesGet' request conforms to.
type AppsServicesGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Service

-- | Gets the current configuration of the specified service.
--
-- /See:/ 'appsServicesGet' smart constructor.
data AppsServicesGet = AppsServicesGet'
    { _asgXgafv          :: !(Maybe Text)
    , _asgUploadProtocol :: !(Maybe Text)
    , _asgPp             :: !Bool
    , _asgAccessToken    :: !(Maybe Text)
    , _asgUploadType     :: !(Maybe Text)
    , _asgBearerToken    :: !(Maybe Text)
    , _asgAppsId         :: !Text
    , _asgServicesId     :: !Text
    , _asgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsServicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgXgafv'
--
-- * 'asgUploadProtocol'
--
-- * 'asgPp'
--
-- * 'asgAccessToken'
--
-- * 'asgUploadType'
--
-- * 'asgBearerToken'
--
-- * 'asgAppsId'
--
-- * 'asgServicesId'
--
-- * 'asgCallback'
appsServicesGet
    :: Text -- ^ 'asgAppsId'
    -> Text -- ^ 'asgServicesId'
    -> AppsServicesGet
appsServicesGet pAsgAppsId_ pAsgServicesId_ =
    AppsServicesGet'
    { _asgXgafv = Nothing
    , _asgUploadProtocol = Nothing
    , _asgPp = True
    , _asgAccessToken = Nothing
    , _asgUploadType = Nothing
    , _asgBearerToken = Nothing
    , _asgAppsId = pAsgAppsId_
    , _asgServicesId = pAsgServicesId_
    , _asgCallback = Nothing
    }

-- | V1 error format.
asgXgafv :: Lens' AppsServicesGet (Maybe Text)
asgXgafv = lens _asgXgafv (\ s a -> s{_asgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asgUploadProtocol :: Lens' AppsServicesGet (Maybe Text)
asgUploadProtocol
  = lens _asgUploadProtocol
      (\ s a -> s{_asgUploadProtocol = a})

-- | Pretty-print response.
asgPp :: Lens' AppsServicesGet Bool
asgPp = lens _asgPp (\ s a -> s{_asgPp = a})

-- | OAuth access token.
asgAccessToken :: Lens' AppsServicesGet (Maybe Text)
asgAccessToken
  = lens _asgAccessToken
      (\ s a -> s{_asgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asgUploadType :: Lens' AppsServicesGet (Maybe Text)
asgUploadType
  = lens _asgUploadType
      (\ s a -> s{_asgUploadType = a})

-- | OAuth bearer token.
asgBearerToken :: Lens' AppsServicesGet (Maybe Text)
asgBearerToken
  = lens _asgBearerToken
      (\ s a -> s{_asgBearerToken = a})

-- | Part of \`name\`. Name of the resource requested. Example:
-- apps\/myapp\/services\/default.
asgAppsId :: Lens' AppsServicesGet Text
asgAppsId
  = lens _asgAppsId (\ s a -> s{_asgAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asgServicesId :: Lens' AppsServicesGet Text
asgServicesId
  = lens _asgServicesId
      (\ s a -> s{_asgServicesId = a})

-- | JSONP
asgCallback :: Lens' AppsServicesGet (Maybe Text)
asgCallback
  = lens _asgCallback (\ s a -> s{_asgCallback = a})

instance GoogleRequest AppsServicesGet where
        type Rs AppsServicesGet = Service
        type Scopes AppsServicesGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsServicesGet'{..}
          = go _asgAppsId _asgServicesId _asgXgafv
              _asgUploadProtocol
              (Just _asgPp)
              _asgAccessToken
              _asgUploadType
              _asgBearerToken
              _asgCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesGetResource)
                      mempty
