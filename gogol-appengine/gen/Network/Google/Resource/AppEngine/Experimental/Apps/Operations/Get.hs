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
-- Module      : Network.Google.Resource.AppEngine.Experimental.Apps.Operations.Get
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
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.experimental.apps.operations.get@.
module Network.Google.Resource.AppEngine.Experimental.Apps.Operations.Get
    (
    -- * REST Resource
      ExperimentalAppsOperationsGetResource

    -- * Creating a Request
    , experimentalAppsOperationsGet
    , ExperimentalAppsOperationsGet

    -- * Request Lenses
    , eaogXgafv
    , eaogUploadProtocol
    , eaogPp
    , eaogAccessToken
    , eaogUploadType
    , eaogBearerToken
    , eaogAppsId
    , eaogOperationsId
    , eaogCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.experimental.apps.operations.get@ method which the
-- 'ExperimentalAppsOperationsGet' request conforms to.
type ExperimentalAppsOperationsGetResource =
     "experimental" :>
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
-- /See:/ 'experimentalAppsOperationsGet' smart constructor.
data ExperimentalAppsOperationsGet = ExperimentalAppsOperationsGet'
    { _eaogXgafv          :: !(Maybe Text)
    , _eaogUploadProtocol :: !(Maybe Text)
    , _eaogPp             :: !Bool
    , _eaogAccessToken    :: !(Maybe Text)
    , _eaogUploadType     :: !(Maybe Text)
    , _eaogBearerToken    :: !(Maybe Text)
    , _eaogAppsId         :: !Text
    , _eaogOperationsId   :: !Text
    , _eaogCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentalAppsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaogXgafv'
--
-- * 'eaogUploadProtocol'
--
-- * 'eaogPp'
--
-- * 'eaogAccessToken'
--
-- * 'eaogUploadType'
--
-- * 'eaogBearerToken'
--
-- * 'eaogAppsId'
--
-- * 'eaogOperationsId'
--
-- * 'eaogCallback'
experimentalAppsOperationsGet
    :: Text -- ^ 'eaogAppsId'
    -> Text -- ^ 'eaogOperationsId'
    -> ExperimentalAppsOperationsGet
experimentalAppsOperationsGet pEaogAppsId_ pEaogOperationsId_ =
    ExperimentalAppsOperationsGet'
    { _eaogXgafv = Nothing
    , _eaogUploadProtocol = Nothing
    , _eaogPp = True
    , _eaogAccessToken = Nothing
    , _eaogUploadType = Nothing
    , _eaogBearerToken = Nothing
    , _eaogAppsId = pEaogAppsId_
    , _eaogOperationsId = pEaogOperationsId_
    , _eaogCallback = Nothing
    }

-- | V1 error format.
eaogXgafv :: Lens' ExperimentalAppsOperationsGet (Maybe Text)
eaogXgafv
  = lens _eaogXgafv (\ s a -> s{_eaogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eaogUploadProtocol :: Lens' ExperimentalAppsOperationsGet (Maybe Text)
eaogUploadProtocol
  = lens _eaogUploadProtocol
      (\ s a -> s{_eaogUploadProtocol = a})

-- | Pretty-print response.
eaogPp :: Lens' ExperimentalAppsOperationsGet Bool
eaogPp = lens _eaogPp (\ s a -> s{_eaogPp = a})

-- | OAuth access token.
eaogAccessToken :: Lens' ExperimentalAppsOperationsGet (Maybe Text)
eaogAccessToken
  = lens _eaogAccessToken
      (\ s a -> s{_eaogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eaogUploadType :: Lens' ExperimentalAppsOperationsGet (Maybe Text)
eaogUploadType
  = lens _eaogUploadType
      (\ s a -> s{_eaogUploadType = a})

-- | OAuth bearer token.
eaogBearerToken :: Lens' ExperimentalAppsOperationsGet (Maybe Text)
eaogBearerToken
  = lens _eaogBearerToken
      (\ s a -> s{_eaogBearerToken = a})

-- | Part of \`name\`. The name of the operation resource.
eaogAppsId :: Lens' ExperimentalAppsOperationsGet Text
eaogAppsId
  = lens _eaogAppsId (\ s a -> s{_eaogAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
eaogOperationsId :: Lens' ExperimentalAppsOperationsGet Text
eaogOperationsId
  = lens _eaogOperationsId
      (\ s a -> s{_eaogOperationsId = a})

-- | JSONP
eaogCallback :: Lens' ExperimentalAppsOperationsGet (Maybe Text)
eaogCallback
  = lens _eaogCallback (\ s a -> s{_eaogCallback = a})

instance GoogleRequest ExperimentalAppsOperationsGet
         where
        type Rs ExperimentalAppsOperationsGet = Operation
        type Scopes ExperimentalAppsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ExperimentalAppsOperationsGet'{..}
          = go _eaogAppsId _eaogOperationsId _eaogXgafv
              _eaogUploadProtocol
              (Just _eaogPp)
              _eaogAccessToken
              _eaogUploadType
              _eaogBearerToken
              _eaogCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ExperimentalAppsOperationsGetResource)
                      mempty
