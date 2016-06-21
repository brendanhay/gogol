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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploys new code and resource files to a version.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.services.versions.create@.
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
    , asvcPp
    , asvcAccessToken
    , asvcUploadType
    , asvcPayload
    , asvcBearerToken
    , asvcAppsId
    , asvcServicesId
    , asvcCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.create@ method which the
-- 'AppsServicesVersionsCreate' request conforms to.
type AppsServicesVersionsCreateResource =
     "v1beta5" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Version :>
                                   Post '[JSON] Operation

-- | Deploys new code and resource files to a version.
--
-- /See:/ 'appsServicesVersionsCreate' smart constructor.
data AppsServicesVersionsCreate = AppsServicesVersionsCreate'
    { _asvcXgafv          :: !(Maybe Text)
    , _asvcUploadProtocol :: !(Maybe Text)
    , _asvcPp             :: !Bool
    , _asvcAccessToken    :: !(Maybe Text)
    , _asvcUploadType     :: !(Maybe Text)
    , _asvcPayload        :: !Version
    , _asvcBearerToken    :: !(Maybe Text)
    , _asvcAppsId         :: !Text
    , _asvcServicesId     :: !Text
    , _asvcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsServicesVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvcXgafv'
--
-- * 'asvcUploadProtocol'
--
-- * 'asvcPp'
--
-- * 'asvcAccessToken'
--
-- * 'asvcUploadType'
--
-- * 'asvcPayload'
--
-- * 'asvcBearerToken'
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
    , _asvcPp = True
    , _asvcAccessToken = Nothing
    , _asvcUploadType = Nothing
    , _asvcPayload = pAsvcPayload_
    , _asvcBearerToken = Nothing
    , _asvcAppsId = pAsvcAppsId_
    , _asvcServicesId = pAsvcServicesId_
    , _asvcCallback = Nothing
    }

-- | V1 error format.
asvcXgafv :: Lens' AppsServicesVersionsCreate (Maybe Text)
asvcXgafv
  = lens _asvcXgafv (\ s a -> s{_asvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvcUploadProtocol :: Lens' AppsServicesVersionsCreate (Maybe Text)
asvcUploadProtocol
  = lens _asvcUploadProtocol
      (\ s a -> s{_asvcUploadProtocol = a})

-- | Pretty-print response.
asvcPp :: Lens' AppsServicesVersionsCreate Bool
asvcPp = lens _asvcPp (\ s a -> s{_asvcPp = a})

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

-- | OAuth bearer token.
asvcBearerToken :: Lens' AppsServicesVersionsCreate (Maybe Text)
asvcBearerToken
  = lens _asvcBearerToken
      (\ s a -> s{_asvcBearerToken = a})

-- | Part of \`name\`. Name of the resource to update. For example:
-- \"apps\/myapp\/services\/default\".
asvcAppsId :: Lens' AppsServicesVersionsCreate Text
asvcAppsId
  = lens _asvcAppsId (\ s a -> s{_asvcAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
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
              (Just _asvcPp)
              _asvcAccessToken
              _asvcUploadType
              _asvcBearerToken
              _asvcCallback
              (Just AltJSON)
              _asvcPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesVersionsCreateResource)
                      mempty
