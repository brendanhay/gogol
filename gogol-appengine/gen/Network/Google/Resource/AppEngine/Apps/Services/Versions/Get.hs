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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified Version resource. By default, only a BASIC_VIEW will
-- be returned. Specify the FULL_VIEW parameter to get the full resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.get@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.Get
    (
    -- * REST Resource
      AppsServicesVersionsGetResource

    -- * Creating a Request
    , appsServicesVersionsGet
    , AppsServicesVersionsGet

    -- * Request Lenses
    , asvgXgafv
    , asvgUploadProtocol
    , asvgAccessToken
    , asvgUploadType
    , asvgVersionsId
    , asvgAppsId
    , asvgView
    , asvgServicesId
    , asvgCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.get@ method which the
-- 'AppsServicesVersionsGet' request conforms to.
type AppsServicesVersionsGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 Capture "versionsId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "view" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Version

-- | Gets the specified Version resource. By default, only a BASIC_VIEW will
-- be returned. Specify the FULL_VIEW parameter to get the full resource.
--
-- /See:/ 'appsServicesVersionsGet' smart constructor.
data AppsServicesVersionsGet =
  AppsServicesVersionsGet'
    { _asvgXgafv          :: !(Maybe Xgafv)
    , _asvgUploadProtocol :: !(Maybe Text)
    , _asvgAccessToken    :: !(Maybe Text)
    , _asvgUploadType     :: !(Maybe Text)
    , _asvgVersionsId     :: !Text
    , _asvgAppsId         :: !Text
    , _asvgView           :: !(Maybe Text)
    , _asvgServicesId     :: !Text
    , _asvgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppsServicesVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvgXgafv'
--
-- * 'asvgUploadProtocol'
--
-- * 'asvgAccessToken'
--
-- * 'asvgUploadType'
--
-- * 'asvgVersionsId'
--
-- * 'asvgAppsId'
--
-- * 'asvgView'
--
-- * 'asvgServicesId'
--
-- * 'asvgCallback'
appsServicesVersionsGet
    :: Text -- ^ 'asvgVersionsId'
    -> Text -- ^ 'asvgAppsId'
    -> Text -- ^ 'asvgServicesId'
    -> AppsServicesVersionsGet
appsServicesVersionsGet pAsvgVersionsId_ pAsvgAppsId_ pAsvgServicesId_ =
  AppsServicesVersionsGet'
    { _asvgXgafv = Nothing
    , _asvgUploadProtocol = Nothing
    , _asvgAccessToken = Nothing
    , _asvgUploadType = Nothing
    , _asvgVersionsId = pAsvgVersionsId_
    , _asvgAppsId = pAsvgAppsId_
    , _asvgView = Nothing
    , _asvgServicesId = pAsvgServicesId_
    , _asvgCallback = Nothing
    }

-- | V1 error format.
asvgXgafv :: Lens' AppsServicesVersionsGet (Maybe Xgafv)
asvgXgafv
  = lens _asvgXgafv (\ s a -> s{_asvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvgUploadProtocol :: Lens' AppsServicesVersionsGet (Maybe Text)
asvgUploadProtocol
  = lens _asvgUploadProtocol
      (\ s a -> s{_asvgUploadProtocol = a})

-- | OAuth access token.
asvgAccessToken :: Lens' AppsServicesVersionsGet (Maybe Text)
asvgAccessToken
  = lens _asvgAccessToken
      (\ s a -> s{_asvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvgUploadType :: Lens' AppsServicesVersionsGet (Maybe Text)
asvgUploadType
  = lens _asvgUploadType
      (\ s a -> s{_asvgUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvgVersionsId :: Lens' AppsServicesVersionsGet Text
asvgVersionsId
  = lens _asvgVersionsId
      (\ s a -> s{_asvgVersionsId = a})

-- | Part of \`name\`. Name of the resource requested. Example:
-- apps\/myapp\/services\/default\/versions\/v1.
asvgAppsId :: Lens' AppsServicesVersionsGet Text
asvgAppsId
  = lens _asvgAppsId (\ s a -> s{_asvgAppsId = a})

-- | Controls the set of fields returned in the Get response.
asvgView :: Lens' AppsServicesVersionsGet (Maybe Text)
asvgView = lens _asvgView (\ s a -> s{_asvgView = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvgServicesId :: Lens' AppsServicesVersionsGet Text
asvgServicesId
  = lens _asvgServicesId
      (\ s a -> s{_asvgServicesId = a})

-- | JSONP
asvgCallback :: Lens' AppsServicesVersionsGet (Maybe Text)
asvgCallback
  = lens _asvgCallback (\ s a -> s{_asvgCallback = a})

instance GoogleRequest AppsServicesVersionsGet where
        type Rs AppsServicesVersionsGet = Version
        type Scopes AppsServicesVersionsGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsServicesVersionsGet'{..}
          = go _asvgAppsId _asvgServicesId _asvgVersionsId
              _asvgXgafv
              _asvgUploadProtocol
              _asvgAccessToken
              _asvgUploadType
              _asvgView
              _asvgCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesVersionsGetResource)
                      mempty
