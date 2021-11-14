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
-- Module      : Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a ServiceLevelObjective by name.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.get@.
module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Get
    (
    -- * REST Resource
      ServicesServiceLevelObjectivesGetResource

    -- * Creating a Request
    , servicesServiceLevelObjectivesGet
    , ServicesServiceLevelObjectivesGet

    -- * Request Lenses
    , sslogXgafv
    , sslogUploadProtocol
    , sslogAccessToken
    , sslogUploadType
    , sslogName
    , sslogView
    , sslogCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.serviceLevelObjectives.get@ method which the
-- 'ServicesServiceLevelObjectivesGet' request conforms to.
type ServicesServiceLevelObjectivesGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "view"
                   ServicesServiceLevelObjectivesGetView
                   :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ServiceLevelObjective

-- | Get a ServiceLevelObjective by name.
--
-- /See:/ 'servicesServiceLevelObjectivesGet' smart constructor.
data ServicesServiceLevelObjectivesGet =
  ServicesServiceLevelObjectivesGet'
    { _sslogXgafv :: !(Maybe Xgafv)
    , _sslogUploadProtocol :: !(Maybe Text)
    , _sslogAccessToken :: !(Maybe Text)
    , _sslogUploadType :: !(Maybe Text)
    , _sslogName :: !Text
    , _sslogView :: !(Maybe ServicesServiceLevelObjectivesGetView)
    , _sslogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesServiceLevelObjectivesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslogXgafv'
--
-- * 'sslogUploadProtocol'
--
-- * 'sslogAccessToken'
--
-- * 'sslogUploadType'
--
-- * 'sslogName'
--
-- * 'sslogView'
--
-- * 'sslogCallback'
servicesServiceLevelObjectivesGet
    :: Text -- ^ 'sslogName'
    -> ServicesServiceLevelObjectivesGet
servicesServiceLevelObjectivesGet pSslogName_ =
  ServicesServiceLevelObjectivesGet'
    { _sslogXgafv = Nothing
    , _sslogUploadProtocol = Nothing
    , _sslogAccessToken = Nothing
    , _sslogUploadType = Nothing
    , _sslogName = pSslogName_
    , _sslogView = Nothing
    , _sslogCallback = Nothing
    }


-- | V1 error format.
sslogXgafv :: Lens' ServicesServiceLevelObjectivesGet (Maybe Xgafv)
sslogXgafv
  = lens _sslogXgafv (\ s a -> s{_sslogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sslogUploadProtocol :: Lens' ServicesServiceLevelObjectivesGet (Maybe Text)
sslogUploadProtocol
  = lens _sslogUploadProtocol
      (\ s a -> s{_sslogUploadProtocol = a})

-- | OAuth access token.
sslogAccessToken :: Lens' ServicesServiceLevelObjectivesGet (Maybe Text)
sslogAccessToken
  = lens _sslogAccessToken
      (\ s a -> s{_sslogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sslogUploadType :: Lens' ServicesServiceLevelObjectivesGet (Maybe Text)
sslogUploadType
  = lens _sslogUploadType
      (\ s a -> s{_sslogUploadType = a})

-- | Required. Resource name of the ServiceLevelObjective to get. The format
-- is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]\/serviceLevelObjectives\/[SLO_NAME]
sslogName :: Lens' ServicesServiceLevelObjectivesGet Text
sslogName
  = lens _sslogName (\ s a -> s{_sslogName = a})

-- | View of the ServiceLevelObjective to return. If DEFAULT, return the
-- ServiceLevelObjective as originally defined. If EXPLICIT and the
-- ServiceLevelObjective is defined in terms of a BasicSli, replace the
-- BasicSli with a RequestBasedSli spelling out how the SLI is computed.
sslogView :: Lens' ServicesServiceLevelObjectivesGet (Maybe ServicesServiceLevelObjectivesGetView)
sslogView
  = lens _sslogView (\ s a -> s{_sslogView = a})

-- | JSONP
sslogCallback :: Lens' ServicesServiceLevelObjectivesGet (Maybe Text)
sslogCallback
  = lens _sslogCallback
      (\ s a -> s{_sslogCallback = a})

instance GoogleRequest
           ServicesServiceLevelObjectivesGet
         where
        type Rs ServicesServiceLevelObjectivesGet =
             ServiceLevelObjective
        type Scopes ServicesServiceLevelObjectivesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ServicesServiceLevelObjectivesGet'{..}
          = go _sslogName _sslogXgafv _sslogUploadProtocol
              _sslogAccessToken
              _sslogUploadType
              _sslogView
              _sslogCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesServiceLevelObjectivesGetResource)
                      mempty
