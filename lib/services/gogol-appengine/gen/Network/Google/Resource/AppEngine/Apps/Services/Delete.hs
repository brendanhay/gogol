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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified service and all enclosed versions.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.delete@.
module Network.Google.Resource.AppEngine.Apps.Services.Delete
    (
    -- * REST Resource
      AppsServicesDeleteResource

    -- * Creating a Request
    , appsServicesDelete
    , AppsServicesDelete

    -- * Request Lenses
    , asdXgafv
    , asdUploadProtocol
    , asdAccessToken
    , asdUploadType
    , asdAppsId
    , asdServicesId
    , asdCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.delete@ method which the
-- 'AppsServicesDelete' request conforms to.
type AppsServicesDeleteResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified service and all enclosed versions.
--
-- /See:/ 'appsServicesDelete' smart constructor.
data AppsServicesDelete =
  AppsServicesDelete'
    { _asdXgafv :: !(Maybe Xgafv)
    , _asdUploadProtocol :: !(Maybe Text)
    , _asdAccessToken :: !(Maybe Text)
    , _asdUploadType :: !(Maybe Text)
    , _asdAppsId :: !Text
    , _asdServicesId :: !Text
    , _asdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsServicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdXgafv'
--
-- * 'asdUploadProtocol'
--
-- * 'asdAccessToken'
--
-- * 'asdUploadType'
--
-- * 'asdAppsId'
--
-- * 'asdServicesId'
--
-- * 'asdCallback'
appsServicesDelete
    :: Text -- ^ 'asdAppsId'
    -> Text -- ^ 'asdServicesId'
    -> AppsServicesDelete
appsServicesDelete pAsdAppsId_ pAsdServicesId_ =
  AppsServicesDelete'
    { _asdXgafv = Nothing
    , _asdUploadProtocol = Nothing
    , _asdAccessToken = Nothing
    , _asdUploadType = Nothing
    , _asdAppsId = pAsdAppsId_
    , _asdServicesId = pAsdServicesId_
    , _asdCallback = Nothing
    }


-- | V1 error format.
asdXgafv :: Lens' AppsServicesDelete (Maybe Xgafv)
asdXgafv = lens _asdXgafv (\ s a -> s{_asdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asdUploadProtocol :: Lens' AppsServicesDelete (Maybe Text)
asdUploadProtocol
  = lens _asdUploadProtocol
      (\ s a -> s{_asdUploadProtocol = a})

-- | OAuth access token.
asdAccessToken :: Lens' AppsServicesDelete (Maybe Text)
asdAccessToken
  = lens _asdAccessToken
      (\ s a -> s{_asdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asdUploadType :: Lens' AppsServicesDelete (Maybe Text)
asdUploadType
  = lens _asdUploadType
      (\ s a -> s{_asdUploadType = a})

-- | Part of \`name\`. Name of the resource requested. Example:
-- apps\/myapp\/services\/default.
asdAppsId :: Lens' AppsServicesDelete Text
asdAppsId
  = lens _asdAppsId (\ s a -> s{_asdAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asdServicesId :: Lens' AppsServicesDelete Text
asdServicesId
  = lens _asdServicesId
      (\ s a -> s{_asdServicesId = a})

-- | JSONP
asdCallback :: Lens' AppsServicesDelete (Maybe Text)
asdCallback
  = lens _asdCallback (\ s a -> s{_asdCallback = a})

instance GoogleRequest AppsServicesDelete where
        type Rs AppsServicesDelete = Operation
        type Scopes AppsServicesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesDelete'{..}
          = go _asdAppsId _asdServicesId _asdXgafv
              _asdUploadProtocol
              _asdAccessToken
              _asdUploadType
              _asdCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesDeleteResource)
                      mempty
