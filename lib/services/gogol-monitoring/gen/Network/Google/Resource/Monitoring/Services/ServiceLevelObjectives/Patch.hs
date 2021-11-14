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
-- Module      : Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given ServiceLevelObjective.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.patch@.
module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Patch
    (
    -- * REST Resource
      ServicesServiceLevelObjectivesPatchResource

    -- * Creating a Request
    , servicesServiceLevelObjectivesPatch
    , ServicesServiceLevelObjectivesPatch

    -- * Request Lenses
    , sslopXgafv
    , sslopUploadProtocol
    , sslopUpdateMask
    , sslopAccessToken
    , sslopUploadType
    , sslopPayload
    , sslopName
    , sslopCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.serviceLevelObjectives.patch@ method which the
-- 'ServicesServiceLevelObjectivesPatch' request conforms to.
type ServicesServiceLevelObjectivesPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ServiceLevelObjective :>
                         Patch '[JSON] ServiceLevelObjective

-- | Update the given ServiceLevelObjective.
--
-- /See:/ 'servicesServiceLevelObjectivesPatch' smart constructor.
data ServicesServiceLevelObjectivesPatch =
  ServicesServiceLevelObjectivesPatch'
    { _sslopXgafv :: !(Maybe Xgafv)
    , _sslopUploadProtocol :: !(Maybe Text)
    , _sslopUpdateMask :: !(Maybe GFieldMask)
    , _sslopAccessToken :: !(Maybe Text)
    , _sslopUploadType :: !(Maybe Text)
    , _sslopPayload :: !ServiceLevelObjective
    , _sslopName :: !Text
    , _sslopCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesServiceLevelObjectivesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslopXgafv'
--
-- * 'sslopUploadProtocol'
--
-- * 'sslopUpdateMask'
--
-- * 'sslopAccessToken'
--
-- * 'sslopUploadType'
--
-- * 'sslopPayload'
--
-- * 'sslopName'
--
-- * 'sslopCallback'
servicesServiceLevelObjectivesPatch
    :: ServiceLevelObjective -- ^ 'sslopPayload'
    -> Text -- ^ 'sslopName'
    -> ServicesServiceLevelObjectivesPatch
servicesServiceLevelObjectivesPatch pSslopPayload_ pSslopName_ =
  ServicesServiceLevelObjectivesPatch'
    { _sslopXgafv = Nothing
    , _sslopUploadProtocol = Nothing
    , _sslopUpdateMask = Nothing
    , _sslopAccessToken = Nothing
    , _sslopUploadType = Nothing
    , _sslopPayload = pSslopPayload_
    , _sslopName = pSslopName_
    , _sslopCallback = Nothing
    }


-- | V1 error format.
sslopXgafv :: Lens' ServicesServiceLevelObjectivesPatch (Maybe Xgafv)
sslopXgafv
  = lens _sslopXgafv (\ s a -> s{_sslopXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sslopUploadProtocol :: Lens' ServicesServiceLevelObjectivesPatch (Maybe Text)
sslopUploadProtocol
  = lens _sslopUploadProtocol
      (\ s a -> s{_sslopUploadProtocol = a})

-- | A set of field paths defining which fields to use for the update.
sslopUpdateMask :: Lens' ServicesServiceLevelObjectivesPatch (Maybe GFieldMask)
sslopUpdateMask
  = lens _sslopUpdateMask
      (\ s a -> s{_sslopUpdateMask = a})

-- | OAuth access token.
sslopAccessToken :: Lens' ServicesServiceLevelObjectivesPatch (Maybe Text)
sslopAccessToken
  = lens _sslopAccessToken
      (\ s a -> s{_sslopAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sslopUploadType :: Lens' ServicesServiceLevelObjectivesPatch (Maybe Text)
sslopUploadType
  = lens _sslopUploadType
      (\ s a -> s{_sslopUploadType = a})

-- | Multipart request metadata.
sslopPayload :: Lens' ServicesServiceLevelObjectivesPatch ServiceLevelObjective
sslopPayload
  = lens _sslopPayload (\ s a -> s{_sslopPayload = a})

-- | Resource name for this ServiceLevelObjective. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]\/serviceLevelObjectives\/[SLO_NAME]
sslopName :: Lens' ServicesServiceLevelObjectivesPatch Text
sslopName
  = lens _sslopName (\ s a -> s{_sslopName = a})

-- | JSONP
sslopCallback :: Lens' ServicesServiceLevelObjectivesPatch (Maybe Text)
sslopCallback
  = lens _sslopCallback
      (\ s a -> s{_sslopCallback = a})

instance GoogleRequest
           ServicesServiceLevelObjectivesPatch
         where
        type Rs ServicesServiceLevelObjectivesPatch =
             ServiceLevelObjective
        type Scopes ServicesServiceLevelObjectivesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient
          ServicesServiceLevelObjectivesPatch'{..}
          = go _sslopName _sslopXgafv _sslopUploadProtocol
              _sslopUpdateMask
              _sslopAccessToken
              _sslopUploadType
              _sslopCallback
              (Just AltJSON)
              _sslopPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesServiceLevelObjectivesPatchResource)
                      mempty
