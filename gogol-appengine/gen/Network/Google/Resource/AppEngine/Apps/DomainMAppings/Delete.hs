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
-- Module      : Network.Google.Resource.AppEngine.Apps.DomainMAppings.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified domain mapping. A user must be authorized to
-- administer the associated domain in order to delete a DomainMapping
-- resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.delete@.
module Network.Google.Resource.AppEngine.Apps.DomainMAppings.Delete
    (
    -- * REST Resource
      AppsDomainMAppingsDeleteResource

    -- * Creating a Request
    , appsDomainMAppingsDelete
    , AppsDomainMAppingsDelete

    -- * Request Lenses
    , admadXgafv
    , admadUploadProtocol
    , admadAccessToken
    , admadUploadType
    , admadAppsId
    , admadDomainMAppingsId
    , admadCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.domainMappings.delete@ method which the
-- 'AppsDomainMAppingsDelete' request conforms to.
type AppsDomainMAppingsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified domain mapping. A user must be authorized to
-- administer the associated domain in order to delete a DomainMapping
-- resource.
--
-- /See:/ 'appsDomainMAppingsDelete' smart constructor.
data AppsDomainMAppingsDelete =
  AppsDomainMAppingsDelete'
    { _admadXgafv            :: !(Maybe Xgafv)
    , _admadUploadProtocol   :: !(Maybe Text)
    , _admadAccessToken      :: !(Maybe Text)
    , _admadUploadType       :: !(Maybe Text)
    , _admadAppsId           :: !Text
    , _admadDomainMAppingsId :: !Text
    , _admadCallback         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsDomainMAppingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admadXgafv'
--
-- * 'admadUploadProtocol'
--
-- * 'admadAccessToken'
--
-- * 'admadUploadType'
--
-- * 'admadAppsId'
--
-- * 'admadDomainMAppingsId'
--
-- * 'admadCallback'
appsDomainMAppingsDelete
    :: Text -- ^ 'admadAppsId'
    -> Text -- ^ 'admadDomainMAppingsId'
    -> AppsDomainMAppingsDelete
appsDomainMAppingsDelete pAdmadAppsId_ pAdmadDomainMAppingsId_ =
  AppsDomainMAppingsDelete'
    { _admadXgafv = Nothing
    , _admadUploadProtocol = Nothing
    , _admadAccessToken = Nothing
    , _admadUploadType = Nothing
    , _admadAppsId = pAdmadAppsId_
    , _admadDomainMAppingsId = pAdmadDomainMAppingsId_
    , _admadCallback = Nothing
    }


-- | V1 error format.
admadXgafv :: Lens' AppsDomainMAppingsDelete (Maybe Xgafv)
admadXgafv
  = lens _admadXgafv (\ s a -> s{_admadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
admadUploadProtocol :: Lens' AppsDomainMAppingsDelete (Maybe Text)
admadUploadProtocol
  = lens _admadUploadProtocol
      (\ s a -> s{_admadUploadProtocol = a})

-- | OAuth access token.
admadAccessToken :: Lens' AppsDomainMAppingsDelete (Maybe Text)
admadAccessToken
  = lens _admadAccessToken
      (\ s a -> s{_admadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
admadUploadType :: Lens' AppsDomainMAppingsDelete (Maybe Text)
admadUploadType
  = lens _admadUploadType
      (\ s a -> s{_admadUploadType = a})

-- | Part of \`name\`. Name of the resource to delete. Example:
-- apps\/myapp\/domainMappings\/example.com.
admadAppsId :: Lens' AppsDomainMAppingsDelete Text
admadAppsId
  = lens _admadAppsId (\ s a -> s{_admadAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
admadDomainMAppingsId :: Lens' AppsDomainMAppingsDelete Text
admadDomainMAppingsId
  = lens _admadDomainMAppingsId
      (\ s a -> s{_admadDomainMAppingsId = a})

-- | JSONP
admadCallback :: Lens' AppsDomainMAppingsDelete (Maybe Text)
admadCallback
  = lens _admadCallback
      (\ s a -> s{_admadCallback = a})

instance GoogleRequest AppsDomainMAppingsDelete where
        type Rs AppsDomainMAppingsDelete = Operation
        type Scopes AppsDomainMAppingsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsDomainMAppingsDelete'{..}
          = go _admadAppsId _admadDomainMAppingsId _admadXgafv
              _admadUploadProtocol
              _admadAccessToken
              _admadUploadType
              _admadCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsDomainMAppingsDeleteResource)
                      mempty
