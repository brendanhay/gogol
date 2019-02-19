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
-- Module      : Network.Google.Resource.AppEngine.Apps.DomainMAppings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified domain mapping.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.get@.
module Network.Google.Resource.AppEngine.Apps.DomainMAppings.Get
    (
    -- * REST Resource
      AppsDomainMAppingsGetResource

    -- * Creating a Request
    , appsDomainMAppingsGet
    , AppsDomainMAppingsGet

    -- * Request Lenses
    , admagXgafv
    , admagUploadProtocol
    , admagAccessToken
    , admagUploadType
    , admagAppsId
    , admagDomainMAppingsId
    , admagCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.domainMappings.get@ method which the
-- 'AppsDomainMAppingsGet' request conforms to.
type AppsDomainMAppingsGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "domainMappings" :>
             Capture "domainMappingsId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] DomainMApping

-- | Gets the specified domain mapping.
--
-- /See:/ 'appsDomainMAppingsGet' smart constructor.
data AppsDomainMAppingsGet =
  AppsDomainMAppingsGet'
    { _admagXgafv            :: !(Maybe Xgafv)
    , _admagUploadProtocol   :: !(Maybe Text)
    , _admagAccessToken      :: !(Maybe Text)
    , _admagUploadType       :: !(Maybe Text)
    , _admagAppsId           :: !Text
    , _admagDomainMAppingsId :: !Text
    , _admagCallback         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppsDomainMAppingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admagXgafv'
--
-- * 'admagUploadProtocol'
--
-- * 'admagAccessToken'
--
-- * 'admagUploadType'
--
-- * 'admagAppsId'
--
-- * 'admagDomainMAppingsId'
--
-- * 'admagCallback'
appsDomainMAppingsGet
    :: Text -- ^ 'admagAppsId'
    -> Text -- ^ 'admagDomainMAppingsId'
    -> AppsDomainMAppingsGet
appsDomainMAppingsGet pAdmagAppsId_ pAdmagDomainMAppingsId_ =
  AppsDomainMAppingsGet'
    { _admagXgafv = Nothing
    , _admagUploadProtocol = Nothing
    , _admagAccessToken = Nothing
    , _admagUploadType = Nothing
    , _admagAppsId = pAdmagAppsId_
    , _admagDomainMAppingsId = pAdmagDomainMAppingsId_
    , _admagCallback = Nothing
    }

-- | V1 error format.
admagXgafv :: Lens' AppsDomainMAppingsGet (Maybe Xgafv)
admagXgafv
  = lens _admagXgafv (\ s a -> s{_admagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
admagUploadProtocol :: Lens' AppsDomainMAppingsGet (Maybe Text)
admagUploadProtocol
  = lens _admagUploadProtocol
      (\ s a -> s{_admagUploadProtocol = a})

-- | OAuth access token.
admagAccessToken :: Lens' AppsDomainMAppingsGet (Maybe Text)
admagAccessToken
  = lens _admagAccessToken
      (\ s a -> s{_admagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
admagUploadType :: Lens' AppsDomainMAppingsGet (Maybe Text)
admagUploadType
  = lens _admagUploadType
      (\ s a -> s{_admagUploadType = a})

-- | Part of \`name\`. Name of the resource requested. Example:
-- apps\/myapp\/domainMappings\/example.com.
admagAppsId :: Lens' AppsDomainMAppingsGet Text
admagAppsId
  = lens _admagAppsId (\ s a -> s{_admagAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
admagDomainMAppingsId :: Lens' AppsDomainMAppingsGet Text
admagDomainMAppingsId
  = lens _admagDomainMAppingsId
      (\ s a -> s{_admagDomainMAppingsId = a})

-- | JSONP
admagCallback :: Lens' AppsDomainMAppingsGet (Maybe Text)
admagCallback
  = lens _admagCallback
      (\ s a -> s{_admagCallback = a})

instance GoogleRequest AppsDomainMAppingsGet where
        type Rs AppsDomainMAppingsGet = DomainMApping
        type Scopes AppsDomainMAppingsGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsDomainMAppingsGet'{..}
          = go _admagAppsId _admagDomainMAppingsId _admagXgafv
              _admagUploadProtocol
              _admagAccessToken
              _admagUploadType
              _admagCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsDomainMAppingsGetResource)
                      mempty
