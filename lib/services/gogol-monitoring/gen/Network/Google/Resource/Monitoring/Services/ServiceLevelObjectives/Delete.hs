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
-- Module      : Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the given ServiceLevelObjective.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.delete@.
module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Delete
    (
    -- * REST Resource
      ServicesServiceLevelObjectivesDeleteResource

    -- * Creating a Request
    , servicesServiceLevelObjectivesDelete
    , ServicesServiceLevelObjectivesDelete

    -- * Request Lenses
    , sslodXgafv
    , sslodUploadProtocol
    , sslodAccessToken
    , sslodUploadType
    , sslodName
    , sslodCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.serviceLevelObjectives.delete@ method which the
-- 'ServicesServiceLevelObjectivesDelete' request conforms to.
type ServicesServiceLevelObjectivesDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Delete the given ServiceLevelObjective.
--
-- /See:/ 'servicesServiceLevelObjectivesDelete' smart constructor.
data ServicesServiceLevelObjectivesDelete =
  ServicesServiceLevelObjectivesDelete'
    { _sslodXgafv :: !(Maybe Xgafv)
    , _sslodUploadProtocol :: !(Maybe Text)
    , _sslodAccessToken :: !(Maybe Text)
    , _sslodUploadType :: !(Maybe Text)
    , _sslodName :: !Text
    , _sslodCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesServiceLevelObjectivesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslodXgafv'
--
-- * 'sslodUploadProtocol'
--
-- * 'sslodAccessToken'
--
-- * 'sslodUploadType'
--
-- * 'sslodName'
--
-- * 'sslodCallback'
servicesServiceLevelObjectivesDelete
    :: Text -- ^ 'sslodName'
    -> ServicesServiceLevelObjectivesDelete
servicesServiceLevelObjectivesDelete pSslodName_ =
  ServicesServiceLevelObjectivesDelete'
    { _sslodXgafv = Nothing
    , _sslodUploadProtocol = Nothing
    , _sslodAccessToken = Nothing
    , _sslodUploadType = Nothing
    , _sslodName = pSslodName_
    , _sslodCallback = Nothing
    }


-- | V1 error format.
sslodXgafv :: Lens' ServicesServiceLevelObjectivesDelete (Maybe Xgafv)
sslodXgafv
  = lens _sslodXgafv (\ s a -> s{_sslodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sslodUploadProtocol :: Lens' ServicesServiceLevelObjectivesDelete (Maybe Text)
sslodUploadProtocol
  = lens _sslodUploadProtocol
      (\ s a -> s{_sslodUploadProtocol = a})

-- | OAuth access token.
sslodAccessToken :: Lens' ServicesServiceLevelObjectivesDelete (Maybe Text)
sslodAccessToken
  = lens _sslodAccessToken
      (\ s a -> s{_sslodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sslodUploadType :: Lens' ServicesServiceLevelObjectivesDelete (Maybe Text)
sslodUploadType
  = lens _sslodUploadType
      (\ s a -> s{_sslodUploadType = a})

-- | Required. Resource name of the ServiceLevelObjective to delete. The
-- format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]\/serviceLevelObjectives\/[SLO_NAME]
sslodName :: Lens' ServicesServiceLevelObjectivesDelete Text
sslodName
  = lens _sslodName (\ s a -> s{_sslodName = a})

-- | JSONP
sslodCallback :: Lens' ServicesServiceLevelObjectivesDelete (Maybe Text)
sslodCallback
  = lens _sslodCallback
      (\ s a -> s{_sslodCallback = a})

instance GoogleRequest
           ServicesServiceLevelObjectivesDelete
         where
        type Rs ServicesServiceLevelObjectivesDelete = Empty
        type Scopes ServicesServiceLevelObjectivesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient
          ServicesServiceLevelObjectivesDelete'{..}
          = go _sslodName _sslodXgafv _sslodUploadProtocol
              _sslodAccessToken
              _sslodUploadType
              _sslodCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesServiceLevelObjectivesDeleteResource)
                      mempty
