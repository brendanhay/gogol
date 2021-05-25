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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing Version resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.delete@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete
    (
    -- * REST Resource
      AppsServicesVersionsDeleteResource

    -- * Creating a Request
    , appsServicesVersionsDelete
    , AppsServicesVersionsDelete

    -- * Request Lenses
    , asvdXgafv
    , asvdUploadProtocol
    , asvdAccessToken
    , asvdUploadType
    , asvdVersionsId
    , asvdAppsId
    , asvdServicesId
    , asvdCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.delete@ method which the
-- 'AppsServicesVersionsDelete' request conforms to.
type AppsServicesVersionsDeleteResource =
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
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] Operation

-- | Deletes an existing Version resource.
--
-- /See:/ 'appsServicesVersionsDelete' smart constructor.
data AppsServicesVersionsDelete =
  AppsServicesVersionsDelete'
    { _asvdXgafv :: !(Maybe Xgafv)
    , _asvdUploadProtocol :: !(Maybe Text)
    , _asvdAccessToken :: !(Maybe Text)
    , _asvdUploadType :: !(Maybe Text)
    , _asvdVersionsId :: !Text
    , _asvdAppsId :: !Text
    , _asvdServicesId :: !Text
    , _asvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsServicesVersionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvdXgafv'
--
-- * 'asvdUploadProtocol'
--
-- * 'asvdAccessToken'
--
-- * 'asvdUploadType'
--
-- * 'asvdVersionsId'
--
-- * 'asvdAppsId'
--
-- * 'asvdServicesId'
--
-- * 'asvdCallback'
appsServicesVersionsDelete
    :: Text -- ^ 'asvdVersionsId'
    -> Text -- ^ 'asvdAppsId'
    -> Text -- ^ 'asvdServicesId'
    -> AppsServicesVersionsDelete
appsServicesVersionsDelete pAsvdVersionsId_ pAsvdAppsId_ pAsvdServicesId_ =
  AppsServicesVersionsDelete'
    { _asvdXgafv = Nothing
    , _asvdUploadProtocol = Nothing
    , _asvdAccessToken = Nothing
    , _asvdUploadType = Nothing
    , _asvdVersionsId = pAsvdVersionsId_
    , _asvdAppsId = pAsvdAppsId_
    , _asvdServicesId = pAsvdServicesId_
    , _asvdCallback = Nothing
    }


-- | V1 error format.
asvdXgafv :: Lens' AppsServicesVersionsDelete (Maybe Xgafv)
asvdXgafv
  = lens _asvdXgafv (\ s a -> s{_asvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvdUploadProtocol :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdUploadProtocol
  = lens _asvdUploadProtocol
      (\ s a -> s{_asvdUploadProtocol = a})

-- | OAuth access token.
asvdAccessToken :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdAccessToken
  = lens _asvdAccessToken
      (\ s a -> s{_asvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvdUploadType :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdUploadType
  = lens _asvdUploadType
      (\ s a -> s{_asvdUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvdVersionsId :: Lens' AppsServicesVersionsDelete Text
asvdVersionsId
  = lens _asvdVersionsId
      (\ s a -> s{_asvdVersionsId = a})

-- | Part of \`name\`. Name of the resource requested. Example:
-- apps\/myapp\/services\/default\/versions\/v1.
asvdAppsId :: Lens' AppsServicesVersionsDelete Text
asvdAppsId
  = lens _asvdAppsId (\ s a -> s{_asvdAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvdServicesId :: Lens' AppsServicesVersionsDelete Text
asvdServicesId
  = lens _asvdServicesId
      (\ s a -> s{_asvdServicesId = a})

-- | JSONP
asvdCallback :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdCallback
  = lens _asvdCallback (\ s a -> s{_asvdCallback = a})

instance GoogleRequest AppsServicesVersionsDelete
         where
        type Rs AppsServicesVersionsDelete = Operation
        type Scopes AppsServicesVersionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesVersionsDelete'{..}
          = go _asvdAppsId _asvdServicesId _asvdVersionsId
              _asvdXgafv
              _asvdUploadProtocol
              _asvdAccessToken
              _asvdUploadType
              _asvdCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesVersionsDeleteResource)
                      mempty
