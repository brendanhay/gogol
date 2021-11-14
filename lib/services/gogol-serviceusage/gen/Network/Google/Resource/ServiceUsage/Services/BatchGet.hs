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
-- Module      : Network.Google.Resource.ServiceUsage.Services.BatchGet
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the service configurations and enabled states for a given list
-- of services.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.batchGet@.
module Network.Google.Resource.ServiceUsage.Services.BatchGet
    (
    -- * REST Resource
      ServicesBatchGetResource

    -- * Creating a Request
    , servicesBatchGet
    , ServicesBatchGet

    -- * Request Lenses
    , sbgParent
    , sbgXgafv
    , sbgUploadProtocol
    , sbgAccessToken
    , sbgUploadType
    , sbgNames
    , sbgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.batchGet@ method which the
-- 'ServicesBatchGet' request conforms to.
type ServicesBatchGetResource =
     "v1" :>
       Capture "parent" Text :>
         "services:batchGet" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParams "names" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] BatchGetServicesResponse

-- | Returns the service configurations and enabled states for a given list
-- of services.
--
-- /See:/ 'servicesBatchGet' smart constructor.
data ServicesBatchGet =
  ServicesBatchGet'
    { _sbgParent :: !Text
    , _sbgXgafv :: !(Maybe Xgafv)
    , _sbgUploadProtocol :: !(Maybe Text)
    , _sbgAccessToken :: !(Maybe Text)
    , _sbgUploadType :: !(Maybe Text)
    , _sbgNames :: !(Maybe [Text])
    , _sbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesBatchGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbgParent'
--
-- * 'sbgXgafv'
--
-- * 'sbgUploadProtocol'
--
-- * 'sbgAccessToken'
--
-- * 'sbgUploadType'
--
-- * 'sbgNames'
--
-- * 'sbgCallback'
servicesBatchGet
    :: Text -- ^ 'sbgParent'
    -> ServicesBatchGet
servicesBatchGet pSbgParent_ =
  ServicesBatchGet'
    { _sbgParent = pSbgParent_
    , _sbgXgafv = Nothing
    , _sbgUploadProtocol = Nothing
    , _sbgAccessToken = Nothing
    , _sbgUploadType = Nothing
    , _sbgNames = Nothing
    , _sbgCallback = Nothing
    }


-- | Parent to retrieve services from. If this is set, the parent of all of
-- the services specified in \`names\` must match this field. An example
-- name would be: \`projects\/123\` where \`123\` is the project number.
-- The \`BatchGetServices\` method currently only supports projects.
sbgParent :: Lens' ServicesBatchGet Text
sbgParent
  = lens _sbgParent (\ s a -> s{_sbgParent = a})

-- | V1 error format.
sbgXgafv :: Lens' ServicesBatchGet (Maybe Xgafv)
sbgXgafv = lens _sbgXgafv (\ s a -> s{_sbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sbgUploadProtocol :: Lens' ServicesBatchGet (Maybe Text)
sbgUploadProtocol
  = lens _sbgUploadProtocol
      (\ s a -> s{_sbgUploadProtocol = a})

-- | OAuth access token.
sbgAccessToken :: Lens' ServicesBatchGet (Maybe Text)
sbgAccessToken
  = lens _sbgAccessToken
      (\ s a -> s{_sbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sbgUploadType :: Lens' ServicesBatchGet (Maybe Text)
sbgUploadType
  = lens _sbgUploadType
      (\ s a -> s{_sbgUploadType = a})

-- | Names of the services to retrieve. An example name would be:
-- \`projects\/123\/services\/serviceusage.googleapis.com\` where \`123\`
-- is the project number. A single request can get a maximum of 30 services
-- at a time.
sbgNames :: Lens' ServicesBatchGet [Text]
sbgNames
  = lens _sbgNames (\ s a -> s{_sbgNames = a}) .
      _Default
      . _Coerce

-- | JSONP
sbgCallback :: Lens' ServicesBatchGet (Maybe Text)
sbgCallback
  = lens _sbgCallback (\ s a -> s{_sbgCallback = a})

instance GoogleRequest ServicesBatchGet where
        type Rs ServicesBatchGet = BatchGetServicesResponse
        type Scopes ServicesBatchGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ServicesBatchGet'{..}
          = go _sbgParent _sbgXgafv _sbgUploadProtocol
              _sbgAccessToken
              _sbgUploadType
              (_sbgNames ^. _Default)
              _sbgCallback
              (Just AltJSON)
              serviceUsageService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesBatchGetResource)
                      mempty
