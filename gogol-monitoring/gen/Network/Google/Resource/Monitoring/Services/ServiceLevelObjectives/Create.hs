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
-- Module      : Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a ServiceLevelObjective for the given Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.create@.
module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Create
    (
    -- * REST Resource
      ServicesServiceLevelObjectivesCreateResource

    -- * Creating a Request
    , servicesServiceLevelObjectivesCreate
    , ServicesServiceLevelObjectivesCreate

    -- * Request Lenses
    , sslocParent
    , sslocXgafv
    , sslocUploadProtocol
    , sslocAccessToken
    , sslocUploadType
    , sslocPayload
    , sslocCallback
    , sslocServiceLevelObjectiveId
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.serviceLevelObjectives.create@ method which the
-- 'ServicesServiceLevelObjectivesCreate' request conforms to.
type ServicesServiceLevelObjectivesCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "serviceLevelObjectives" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "serviceLevelObjectiveId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ServiceLevelObjective :>
                           Post '[JSON] ServiceLevelObjective

-- | Create a ServiceLevelObjective for the given Service.
--
-- /See:/ 'servicesServiceLevelObjectivesCreate' smart constructor.
data ServicesServiceLevelObjectivesCreate =
  ServicesServiceLevelObjectivesCreate'
    { _sslocParent :: !Text
    , _sslocXgafv :: !(Maybe Xgafv)
    , _sslocUploadProtocol :: !(Maybe Text)
    , _sslocAccessToken :: !(Maybe Text)
    , _sslocUploadType :: !(Maybe Text)
    , _sslocPayload :: !ServiceLevelObjective
    , _sslocCallback :: !(Maybe Text)
    , _sslocServiceLevelObjectiveId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesServiceLevelObjectivesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslocParent'
--
-- * 'sslocXgafv'
--
-- * 'sslocUploadProtocol'
--
-- * 'sslocAccessToken'
--
-- * 'sslocUploadType'
--
-- * 'sslocPayload'
--
-- * 'sslocCallback'
--
-- * 'sslocServiceLevelObjectiveId'
servicesServiceLevelObjectivesCreate
    :: Text -- ^ 'sslocParent'
    -> ServiceLevelObjective -- ^ 'sslocPayload'
    -> ServicesServiceLevelObjectivesCreate
servicesServiceLevelObjectivesCreate pSslocParent_ pSslocPayload_ =
  ServicesServiceLevelObjectivesCreate'
    { _sslocParent = pSslocParent_
    , _sslocXgafv = Nothing
    , _sslocUploadProtocol = Nothing
    , _sslocAccessToken = Nothing
    , _sslocUploadType = Nothing
    , _sslocPayload = pSslocPayload_
    , _sslocCallback = Nothing
    , _sslocServiceLevelObjectiveId = Nothing
    }


-- | Required. Resource name of the parent Service. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]
sslocParent :: Lens' ServicesServiceLevelObjectivesCreate Text
sslocParent
  = lens _sslocParent (\ s a -> s{_sslocParent = a})

-- | V1 error format.
sslocXgafv :: Lens' ServicesServiceLevelObjectivesCreate (Maybe Xgafv)
sslocXgafv
  = lens _sslocXgafv (\ s a -> s{_sslocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sslocUploadProtocol :: Lens' ServicesServiceLevelObjectivesCreate (Maybe Text)
sslocUploadProtocol
  = lens _sslocUploadProtocol
      (\ s a -> s{_sslocUploadProtocol = a})

-- | OAuth access token.
sslocAccessToken :: Lens' ServicesServiceLevelObjectivesCreate (Maybe Text)
sslocAccessToken
  = lens _sslocAccessToken
      (\ s a -> s{_sslocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sslocUploadType :: Lens' ServicesServiceLevelObjectivesCreate (Maybe Text)
sslocUploadType
  = lens _sslocUploadType
      (\ s a -> s{_sslocUploadType = a})

-- | Multipart request metadata.
sslocPayload :: Lens' ServicesServiceLevelObjectivesCreate ServiceLevelObjective
sslocPayload
  = lens _sslocPayload (\ s a -> s{_sslocPayload = a})

-- | JSONP
sslocCallback :: Lens' ServicesServiceLevelObjectivesCreate (Maybe Text)
sslocCallback
  = lens _sslocCallback
      (\ s a -> s{_sslocCallback = a})

-- | Optional. The ServiceLevelObjective id to use for this
-- ServiceLevelObjective. If omitted, an id will be generated instead. Must
-- match the pattern [a-z0-9\\-]+
sslocServiceLevelObjectiveId :: Lens' ServicesServiceLevelObjectivesCreate (Maybe Text)
sslocServiceLevelObjectiveId
  = lens _sslocServiceLevelObjectiveId
      (\ s a -> s{_sslocServiceLevelObjectiveId = a})

instance GoogleRequest
           ServicesServiceLevelObjectivesCreate
         where
        type Rs ServicesServiceLevelObjectivesCreate =
             ServiceLevelObjective
        type Scopes ServicesServiceLevelObjectivesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient
          ServicesServiceLevelObjectivesCreate'{..}
          = go _sslocParent _sslocXgafv _sslocUploadProtocol
              _sslocAccessToken
              _sslocUploadType
              _sslocCallback
              _sslocServiceLevelObjectiveId
              (Just AltJSON)
              _sslocPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesServiceLevelObjectivesCreateResource)
                      mempty
