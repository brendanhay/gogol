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
-- Module      : Network.Google.Resource.AppEngine.Apps.DomainMAppings.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Maps a domain to an application. A user must be authorized to administer
-- a domain in order to map it to an application. For a list of available
-- authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.create@.
module Network.Google.Resource.AppEngine.Apps.DomainMAppings.Create
    (
    -- * REST Resource
      AppsDomainMAppingsCreateResource

    -- * Creating a Request
    , appsDomainMAppingsCreate
    , AppsDomainMAppingsCreate

    -- * Request Lenses
    , admacXgafv
    , admacUploadProtocol
    , admacAccessToken
    , admacUploadType
    , admacPayload
    , admacOverrideStrategy
    , admacAppsId
    , admacCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.domainMappings.create@ method which the
-- 'AppsDomainMAppingsCreate' request conforms to.
type AppsDomainMAppingsCreateResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "domainMappings" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "overrideStrategy" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DomainMApping :>
                             Post '[JSON] Operation

-- | Maps a domain to an application. A user must be authorized to administer
-- a domain in order to map it to an application. For a list of available
-- authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
--
-- /See:/ 'appsDomainMAppingsCreate' smart constructor.
data AppsDomainMAppingsCreate =
  AppsDomainMAppingsCreate'
    { _admacXgafv            :: !(Maybe Xgafv)
    , _admacUploadProtocol   :: !(Maybe Text)
    , _admacAccessToken      :: !(Maybe Text)
    , _admacUploadType       :: !(Maybe Text)
    , _admacPayload          :: !DomainMApping
    , _admacOverrideStrategy :: !(Maybe Text)
    , _admacAppsId           :: !Text
    , _admacCallback         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppsDomainMAppingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admacXgafv'
--
-- * 'admacUploadProtocol'
--
-- * 'admacAccessToken'
--
-- * 'admacUploadType'
--
-- * 'admacPayload'
--
-- * 'admacOverrideStrategy'
--
-- * 'admacAppsId'
--
-- * 'admacCallback'
appsDomainMAppingsCreate
    :: DomainMApping -- ^ 'admacPayload'
    -> Text -- ^ 'admacAppsId'
    -> AppsDomainMAppingsCreate
appsDomainMAppingsCreate pAdmacPayload_ pAdmacAppsId_ =
  AppsDomainMAppingsCreate'
    { _admacXgafv = Nothing
    , _admacUploadProtocol = Nothing
    , _admacAccessToken = Nothing
    , _admacUploadType = Nothing
    , _admacPayload = pAdmacPayload_
    , _admacOverrideStrategy = Nothing
    , _admacAppsId = pAdmacAppsId_
    , _admacCallback = Nothing
    }

-- | V1 error format.
admacXgafv :: Lens' AppsDomainMAppingsCreate (Maybe Xgafv)
admacXgafv
  = lens _admacXgafv (\ s a -> s{_admacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
admacUploadProtocol :: Lens' AppsDomainMAppingsCreate (Maybe Text)
admacUploadProtocol
  = lens _admacUploadProtocol
      (\ s a -> s{_admacUploadProtocol = a})

-- | OAuth access token.
admacAccessToken :: Lens' AppsDomainMAppingsCreate (Maybe Text)
admacAccessToken
  = lens _admacAccessToken
      (\ s a -> s{_admacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
admacUploadType :: Lens' AppsDomainMAppingsCreate (Maybe Text)
admacUploadType
  = lens _admacUploadType
      (\ s a -> s{_admacUploadType = a})

-- | Multipart request metadata.
admacPayload :: Lens' AppsDomainMAppingsCreate DomainMApping
admacPayload
  = lens _admacPayload (\ s a -> s{_admacPayload = a})

-- | Whether the domain creation should override any existing mappings for
-- this domain. By default, overrides are rejected.
admacOverrideStrategy :: Lens' AppsDomainMAppingsCreate (Maybe Text)
admacOverrideStrategy
  = lens _admacOverrideStrategy
      (\ s a -> s{_admacOverrideStrategy = a})

-- | Part of \`parent\`. Name of the parent Application resource. Example:
-- apps\/myapp.
admacAppsId :: Lens' AppsDomainMAppingsCreate Text
admacAppsId
  = lens _admacAppsId (\ s a -> s{_admacAppsId = a})

-- | JSONP
admacCallback :: Lens' AppsDomainMAppingsCreate (Maybe Text)
admacCallback
  = lens _admacCallback
      (\ s a -> s{_admacCallback = a})

instance GoogleRequest AppsDomainMAppingsCreate where
        type Rs AppsDomainMAppingsCreate = Operation
        type Scopes AppsDomainMAppingsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsDomainMAppingsCreate'{..}
          = go _admacAppsId _admacXgafv _admacUploadProtocol
              _admacAccessToken
              _admacUploadType
              _admacOverrideStrategy
              _admacCallback
              (Just AltJSON)
              _admacPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsDomainMAppingsCreateResource)
                      mempty
