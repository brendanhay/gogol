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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploys code and resource files to a new version.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.create@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.Create
    (
    -- * REST Resource
      AppsServicesVersionsCreateResource

    -- * Creating a Request
    , appsServicesVersionsCreate
    , AppsServicesVersionsCreate

    -- * Request Lenses
    , asvcXgafv
    , asvcUploadProtocol
    , asvcAccessToken
    , asvcUploadType
    , asvcPayload
    , asvcAppsId
    , asvcServicesId
    , asvcCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.create@ method which the
-- 'AppsServicesVersionsCreate' request conforms to.
type AppsServicesVersionsCreateResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Version :> Post '[JSON] Operation

-- | Deploys code and resource files to a new version.
--
-- /See:/ 'appsServicesVersionsCreate' smart constructor.
data AppsServicesVersionsCreate =
  AppsServicesVersionsCreate'
    { _asvcXgafv :: !(Maybe Xgafv)
    , _asvcUploadProtocol :: !(Maybe Text)
    , _asvcAccessToken :: !(Maybe Text)
    , _asvcUploadType :: !(Maybe Text)
    , _asvcPayload :: !Version
    , _asvcAppsId :: !Text
    , _asvcServicesId :: !Text
    , _asvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsServicesVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvcXgafv'
--
-- * 'asvcUploadProtocol'
--
-- * 'asvcAccessToken'
--
-- * 'asvcUploadType'
--
-- * 'asvcPayload'
--
-- * 'asvcAppsId'
--
-- * 'asvcServicesId'
--
-- * 'asvcCallback'
appsServicesVersionsCreate
    :: Version -- ^ 'asvcPayload'
    -> Text -- ^ 'asvcAppsId'
    -> Text -- ^ 'asvcServicesId'
    -> AppsServicesVersionsCreate
appsServicesVersionsCreate pAsvcPayload_ pAsvcAppsId_ pAsvcServicesId_ =
  AppsServicesVersionsCreate'
    { _asvcXgafv = Nothing
    , _asvcUploadProtocol = Nothing
    , _asvcAccessToken = Nothing
    , _asvcUploadType = Nothing
    , _asvcPayload = pAsvcPayload_
    , _asvcAppsId = pAsvcAppsId_
    , _asvcServicesId = pAsvcServicesId_
    , _asvcCallback = Nothing
    }


-- | V1 error format.
asvcXgafv :: Lens' AppsServicesVersionsCreate (Maybe Xgafv)
asvcXgafv
  = lens _asvcXgafv (\ s a -> s{_asvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvcUploadProtocol :: Lens' AppsServicesVersionsCreate (Maybe Text)
asvcUploadProtocol
  = lens _asvcUploadProtocol
      (\ s a -> s{_asvcUploadProtocol = a})

-- | OAuth access token.
asvcAccessToken :: Lens' AppsServicesVersionsCreate (Maybe Text)
asvcAccessToken
  = lens _asvcAccessToken
      (\ s a -> s{_asvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvcUploadType :: Lens' AppsServicesVersionsCreate (Maybe Text)
asvcUploadType
  = lens _asvcUploadType
      (\ s a -> s{_asvcUploadType = a})

-- | Multipart request metadata.
asvcPayload :: Lens' AppsServicesVersionsCreate Version
asvcPayload
  = lens _asvcPayload (\ s a -> s{_asvcPayload = a})

-- | Part of \`parent\`. Name of the parent resource to create this version
-- under. Example: apps\/myapp\/services\/default.
asvcAppsId :: Lens' AppsServicesVersionsCreate Text
asvcAppsId
  = lens _asvcAppsId (\ s a -> s{_asvcAppsId = a})

-- | Part of \`parent\`. See documentation of \`appsId\`.
asvcServicesId :: Lens' AppsServicesVersionsCreate Text
asvcServicesId
  = lens _asvcServicesId
      (\ s a -> s{_asvcServicesId = a})

-- | JSONP
asvcCallback :: Lens' AppsServicesVersionsCreate (Maybe Text)
asvcCallback
  = lens _asvcCallback (\ s a -> s{_asvcCallback = a})

instance GoogleRequest AppsServicesVersionsCreate
         where
        type Rs AppsServicesVersionsCreate = Operation
        type Scopes AppsServicesVersionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesVersionsCreate'{..}
          = go _asvcAppsId _asvcServicesId _asvcXgafv
              _asvcUploadProtocol
              _asvcAccessToken
              _asvcUploadType
              _asvcCallback
              (Just AltJSON)
              _asvcPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesVersionsCreateResource)
                      mempty
