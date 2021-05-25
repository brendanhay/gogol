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
-- Module      : Network.Google.Resource.Monitoring.Projects.CollectdTimeSeries.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stackdriver Monitoring Agent only: Creates a new time series.This method
-- is only for use by the Stackdriver Monitoring Agent. Use
-- projects.timeSeries.create instead.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.collectdTimeSeries.create@.
module Network.Google.Resource.Monitoring.Projects.CollectdTimeSeries.Create
    (
    -- * REST Resource
      ProjectsCollectdTimeSeriesCreateResource

    -- * Creating a Request
    , projectsCollectdTimeSeriesCreate
    , ProjectsCollectdTimeSeriesCreate

    -- * Request Lenses
    , pctscXgafv
    , pctscUploadProtocol
    , pctscAccessToken
    , pctscUploadType
    , pctscPayload
    , pctscName
    , pctscCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.collectdTimeSeries.create@ method which the
-- 'ProjectsCollectdTimeSeriesCreate' request conforms to.
type ProjectsCollectdTimeSeriesCreateResource =
     "v3" :>
       Capture "name" Text :>
         "collectdTimeSeries" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateCollectdTimeSeriesRequest :>
                         Post '[JSON] CreateCollectdTimeSeriesResponse

-- | Stackdriver Monitoring Agent only: Creates a new time series.This method
-- is only for use by the Stackdriver Monitoring Agent. Use
-- projects.timeSeries.create instead.
--
-- /See:/ 'projectsCollectdTimeSeriesCreate' smart constructor.
data ProjectsCollectdTimeSeriesCreate =
  ProjectsCollectdTimeSeriesCreate'
    { _pctscXgafv :: !(Maybe Xgafv)
    , _pctscUploadProtocol :: !(Maybe Text)
    , _pctscAccessToken :: !(Maybe Text)
    , _pctscUploadType :: !(Maybe Text)
    , _pctscPayload :: !CreateCollectdTimeSeriesRequest
    , _pctscName :: !Text
    , _pctscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCollectdTimeSeriesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pctscXgafv'
--
-- * 'pctscUploadProtocol'
--
-- * 'pctscAccessToken'
--
-- * 'pctscUploadType'
--
-- * 'pctscPayload'
--
-- * 'pctscName'
--
-- * 'pctscCallback'
projectsCollectdTimeSeriesCreate
    :: CreateCollectdTimeSeriesRequest -- ^ 'pctscPayload'
    -> Text -- ^ 'pctscName'
    -> ProjectsCollectdTimeSeriesCreate
projectsCollectdTimeSeriesCreate pPctscPayload_ pPctscName_ =
  ProjectsCollectdTimeSeriesCreate'
    { _pctscXgafv = Nothing
    , _pctscUploadProtocol = Nothing
    , _pctscAccessToken = Nothing
    , _pctscUploadType = Nothing
    , _pctscPayload = pPctscPayload_
    , _pctscName = pPctscName_
    , _pctscCallback = Nothing
    }


-- | V1 error format.
pctscXgafv :: Lens' ProjectsCollectdTimeSeriesCreate (Maybe Xgafv)
pctscXgafv
  = lens _pctscXgafv (\ s a -> s{_pctscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pctscUploadProtocol :: Lens' ProjectsCollectdTimeSeriesCreate (Maybe Text)
pctscUploadProtocol
  = lens _pctscUploadProtocol
      (\ s a -> s{_pctscUploadProtocol = a})

-- | OAuth access token.
pctscAccessToken :: Lens' ProjectsCollectdTimeSeriesCreate (Maybe Text)
pctscAccessToken
  = lens _pctscAccessToken
      (\ s a -> s{_pctscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pctscUploadType :: Lens' ProjectsCollectdTimeSeriesCreate (Maybe Text)
pctscUploadType
  = lens _pctscUploadType
      (\ s a -> s{_pctscUploadType = a})

-- | Multipart request metadata.
pctscPayload :: Lens' ProjectsCollectdTimeSeriesCreate CreateCollectdTimeSeriesRequest
pctscPayload
  = lens _pctscPayload (\ s a -> s{_pctscPayload = a})

-- | The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) in which
-- to create the time series. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]
pctscName :: Lens' ProjectsCollectdTimeSeriesCreate Text
pctscName
  = lens _pctscName (\ s a -> s{_pctscName = a})

-- | JSONP
pctscCallback :: Lens' ProjectsCollectdTimeSeriesCreate (Maybe Text)
pctscCallback
  = lens _pctscCallback
      (\ s a -> s{_pctscCallback = a})

instance GoogleRequest
           ProjectsCollectdTimeSeriesCreate
         where
        type Rs ProjectsCollectdTimeSeriesCreate =
             CreateCollectdTimeSeriesResponse
        type Scopes ProjectsCollectdTimeSeriesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient ProjectsCollectdTimeSeriesCreate'{..}
          = go _pctscName _pctscXgafv _pctscUploadProtocol
              _pctscAccessToken
              _pctscUploadType
              _pctscCallback
              (Just AltJSON)
              _pctscPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsCollectdTimeSeriesCreateResource)
                      mempty
