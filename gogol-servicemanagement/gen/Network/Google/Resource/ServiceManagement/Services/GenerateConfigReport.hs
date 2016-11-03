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
-- Module      : Network.Google.Resource.ServiceManagement.Services.GenerateConfigReport
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates and returns a report (errors, warnings and changes from
-- existing configurations) associated with
-- GenerateConfigReportRequest.new_value If
-- GenerateConfigReportRequest.old_value is specified,
-- GenerateConfigReportRequest will contain a single ChangeReport based on
-- the comparison between GenerateConfigReportRequest.new_value and
-- GenerateConfigReportRequest.old_value. If
-- GenerateConfigReportRequest.old_value is not specified, this method will
-- compare GenerateConfigReportRequest.new_value with the last pushed
-- service configuration.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.generateConfigReport@.
module Network.Google.Resource.ServiceManagement.Services.GenerateConfigReport
    (
    -- * REST Resource
      ServicesGenerateConfigReportResource

    -- * Creating a Request
    , servicesGenerateConfigReport
    , ServicesGenerateConfigReport

    -- * Request Lenses
    , sgcrXgafv
    , sgcrUploadProtocol
    , sgcrPp
    , sgcrAccessToken
    , sgcrUploadType
    , sgcrPayload
    , sgcrBearerToken
    , sgcrCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.generateConfigReport@ method which the
-- 'ServicesGenerateConfigReport' request conforms to.
type ServicesGenerateConfigReportResource =
     "v1" :>
       "services:generateConfigReport" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GenerateConfigReportRequest :>
                           Post '[JSON] GenerateConfigReportResponse

-- | Generates and returns a report (errors, warnings and changes from
-- existing configurations) associated with
-- GenerateConfigReportRequest.new_value If
-- GenerateConfigReportRequest.old_value is specified,
-- GenerateConfigReportRequest will contain a single ChangeReport based on
-- the comparison between GenerateConfigReportRequest.new_value and
-- GenerateConfigReportRequest.old_value. If
-- GenerateConfigReportRequest.old_value is not specified, this method will
-- compare GenerateConfigReportRequest.new_value with the last pushed
-- service configuration.
--
-- /See:/ 'servicesGenerateConfigReport' smart constructor.
data ServicesGenerateConfigReport = ServicesGenerateConfigReport'
    { _sgcrXgafv          :: !(Maybe Xgafv)
    , _sgcrUploadProtocol :: !(Maybe Text)
    , _sgcrPp             :: !Bool
    , _sgcrAccessToken    :: !(Maybe Text)
    , _sgcrUploadType     :: !(Maybe Text)
    , _sgcrPayload        :: !GenerateConfigReportRequest
    , _sgcrBearerToken    :: !(Maybe Text)
    , _sgcrCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesGenerateConfigReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgcrXgafv'
--
-- * 'sgcrUploadProtocol'
--
-- * 'sgcrPp'
--
-- * 'sgcrAccessToken'
--
-- * 'sgcrUploadType'
--
-- * 'sgcrPayload'
--
-- * 'sgcrBearerToken'
--
-- * 'sgcrCallback'
servicesGenerateConfigReport
    :: GenerateConfigReportRequest -- ^ 'sgcrPayload'
    -> ServicesGenerateConfigReport
servicesGenerateConfigReport pSgcrPayload_ =
    ServicesGenerateConfigReport'
    { _sgcrXgafv = Nothing
    , _sgcrUploadProtocol = Nothing
    , _sgcrPp = True
    , _sgcrAccessToken = Nothing
    , _sgcrUploadType = Nothing
    , _sgcrPayload = pSgcrPayload_
    , _sgcrBearerToken = Nothing
    , _sgcrCallback = Nothing
    }

-- | V1 error format.
sgcrXgafv :: Lens' ServicesGenerateConfigReport (Maybe Xgafv)
sgcrXgafv
  = lens _sgcrXgafv (\ s a -> s{_sgcrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgcrUploadProtocol :: Lens' ServicesGenerateConfigReport (Maybe Text)
sgcrUploadProtocol
  = lens _sgcrUploadProtocol
      (\ s a -> s{_sgcrUploadProtocol = a})

-- | Pretty-print response.
sgcrPp :: Lens' ServicesGenerateConfigReport Bool
sgcrPp = lens _sgcrPp (\ s a -> s{_sgcrPp = a})

-- | OAuth access token.
sgcrAccessToken :: Lens' ServicesGenerateConfigReport (Maybe Text)
sgcrAccessToken
  = lens _sgcrAccessToken
      (\ s a -> s{_sgcrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgcrUploadType :: Lens' ServicesGenerateConfigReport (Maybe Text)
sgcrUploadType
  = lens _sgcrUploadType
      (\ s a -> s{_sgcrUploadType = a})

-- | Multipart request metadata.
sgcrPayload :: Lens' ServicesGenerateConfigReport GenerateConfigReportRequest
sgcrPayload
  = lens _sgcrPayload (\ s a -> s{_sgcrPayload = a})

-- | OAuth bearer token.
sgcrBearerToken :: Lens' ServicesGenerateConfigReport (Maybe Text)
sgcrBearerToken
  = lens _sgcrBearerToken
      (\ s a -> s{_sgcrBearerToken = a})

-- | JSONP
sgcrCallback :: Lens' ServicesGenerateConfigReport (Maybe Text)
sgcrCallback
  = lens _sgcrCallback (\ s a -> s{_sgcrCallback = a})

instance GoogleRequest ServicesGenerateConfigReport
         where
        type Rs ServicesGenerateConfigReport =
             GenerateConfigReportResponse
        type Scopes ServicesGenerateConfigReport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesGenerateConfigReport'{..}
          = go _sgcrXgafv _sgcrUploadProtocol (Just _sgcrPp)
              _sgcrAccessToken
              _sgcrUploadType
              _sgcrBearerToken
              _sgcrCallback
              (Just AltJSON)
              _sgcrPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesGenerateConfigReportResource)
                      mempty
