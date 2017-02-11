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
-- Module      : Network.Google.Resource.AppEngine.Apps.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.operations.get@.
module Network.Google.Resource.AppEngine.Apps.Operations.Get
    (
    -- * REST Resource
      AppsOperationsGetResource

    -- * Creating a Request
    , appsOperationsGet
    , AppsOperationsGet

    -- * Request Lenses
    , aogXgafv
    , aogUploadProtocol
    , aogPp
    , aogAccessToken
    , aogUploadType
    , aogBearerToken
    , aogAppsId
    , aogOperationsId
    , aogCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.operations.get@ method which the
-- 'AppsOperationsGet' request conforms to.
type AppsOperationsGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "operations" :>
             Capture "operationsId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'appsOperationsGet' smart constructor.
data AppsOperationsGet = AppsOperationsGet'
    { _aogXgafv          :: !(Maybe Text)
    , _aogUploadProtocol :: !(Maybe Text)
    , _aogPp             :: !Bool
    , _aogAccessToken    :: !(Maybe Text)
    , _aogUploadType     :: !(Maybe Text)
    , _aogBearerToken    :: !(Maybe Text)
    , _aogAppsId         :: !Text
    , _aogOperationsId   :: !Text
    , _aogCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aogXgafv'
--
-- * 'aogUploadProtocol'
--
-- * 'aogPp'
--
-- * 'aogAccessToken'
--
-- * 'aogUploadType'
--
-- * 'aogBearerToken'
--
-- * 'aogAppsId'
--
-- * 'aogOperationsId'
--
-- * 'aogCallback'
appsOperationsGet
    :: Text -- ^ 'aogAppsId'
    -> Text -- ^ 'aogOperationsId'
    -> AppsOperationsGet
appsOperationsGet pAogAppsId_ pAogOperationsId_ =
    AppsOperationsGet'
    { _aogXgafv = Nothing
    , _aogUploadProtocol = Nothing
    , _aogPp = True
    , _aogAccessToken = Nothing
    , _aogUploadType = Nothing
    , _aogBearerToken = Nothing
    , _aogAppsId = pAogAppsId_
    , _aogOperationsId = pAogOperationsId_
    , _aogCallback = Nothing
    }

-- | V1 error format.
aogXgafv :: Lens' AppsOperationsGet (Maybe Text)
aogXgafv = lens _aogXgafv (\ s a -> s{_aogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aogUploadProtocol :: Lens' AppsOperationsGet (Maybe Text)
aogUploadProtocol
  = lens _aogUploadProtocol
      (\ s a -> s{_aogUploadProtocol = a})

-- | Pretty-print response.
aogPp :: Lens' AppsOperationsGet Bool
aogPp = lens _aogPp (\ s a -> s{_aogPp = a})

-- | OAuth access token.
aogAccessToken :: Lens' AppsOperationsGet (Maybe Text)
aogAccessToken
  = lens _aogAccessToken
      (\ s a -> s{_aogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aogUploadType :: Lens' AppsOperationsGet (Maybe Text)
aogUploadType
  = lens _aogUploadType
      (\ s a -> s{_aogUploadType = a})

-- | OAuth bearer token.
aogBearerToken :: Lens' AppsOperationsGet (Maybe Text)
aogBearerToken
  = lens _aogBearerToken
      (\ s a -> s{_aogBearerToken = a})

-- | Part of \`name\`. The name of the operation resource.
aogAppsId :: Lens' AppsOperationsGet Text
aogAppsId
  = lens _aogAppsId (\ s a -> s{_aogAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
aogOperationsId :: Lens' AppsOperationsGet Text
aogOperationsId
  = lens _aogOperationsId
      (\ s a -> s{_aogOperationsId = a})

-- | JSONP
aogCallback :: Lens' AppsOperationsGet (Maybe Text)
aogCallback
  = lens _aogCallback (\ s a -> s{_aogCallback = a})

instance GoogleRequest AppsOperationsGet where
        type Rs AppsOperationsGet = Operation
        type Scopes AppsOperationsGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsOperationsGet'{..}
          = go _aogAppsId _aogOperationsId _aogXgafv
              _aogUploadProtocol
              (Just _aogPp)
              _aogAccessToken
              _aogUploadType
              _aogBearerToken
              _aogCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsOperationsGetResource)
                      mempty
