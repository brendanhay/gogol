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
-- Module      : Network.Google.Resource.Monitoring.Projects.TimeSeries.Query
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries time series using Monitoring Query Language. This method does
-- not require a Workspace.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.timeSeries.query@.
module Network.Google.Resource.Monitoring.Projects.TimeSeries.Query
    (
    -- * REST Resource
      ProjectsTimeSeriesQueryResource

    -- * Creating a Request
    , projectsTimeSeriesQuery
    , ProjectsTimeSeriesQuery

    -- * Request Lenses
    , ptsqXgafv
    , ptsqUploadProtocol
    , ptsqAccessToken
    , ptsqUploadType
    , ptsqPayload
    , ptsqName
    , ptsqCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.timeSeries.query@ method which the
-- 'ProjectsTimeSeriesQuery' request conforms to.
type ProjectsTimeSeriesQueryResource =
     "v3" :>
       Capture "name" Text :>
         "timeSeries:query" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] QueryTimeSeriesRequest :>
                         Post '[JSON] QueryTimeSeriesResponse

-- | Queries time series using Monitoring Query Language. This method does
-- not require a Workspace.
--
-- /See:/ 'projectsTimeSeriesQuery' smart constructor.
data ProjectsTimeSeriesQuery =
  ProjectsTimeSeriesQuery'
    { _ptsqXgafv :: !(Maybe Xgafv)
    , _ptsqUploadProtocol :: !(Maybe Text)
    , _ptsqAccessToken :: !(Maybe Text)
    , _ptsqUploadType :: !(Maybe Text)
    , _ptsqPayload :: !QueryTimeSeriesRequest
    , _ptsqName :: !Text
    , _ptsqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTimeSeriesQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptsqXgafv'
--
-- * 'ptsqUploadProtocol'
--
-- * 'ptsqAccessToken'
--
-- * 'ptsqUploadType'
--
-- * 'ptsqPayload'
--
-- * 'ptsqName'
--
-- * 'ptsqCallback'
projectsTimeSeriesQuery
    :: QueryTimeSeriesRequest -- ^ 'ptsqPayload'
    -> Text -- ^ 'ptsqName'
    -> ProjectsTimeSeriesQuery
projectsTimeSeriesQuery pPtsqPayload_ pPtsqName_ =
  ProjectsTimeSeriesQuery'
    { _ptsqXgafv = Nothing
    , _ptsqUploadProtocol = Nothing
    , _ptsqAccessToken = Nothing
    , _ptsqUploadType = Nothing
    , _ptsqPayload = pPtsqPayload_
    , _ptsqName = pPtsqName_
    , _ptsqCallback = Nothing
    }


-- | V1 error format.
ptsqXgafv :: Lens' ProjectsTimeSeriesQuery (Maybe Xgafv)
ptsqXgafv
  = lens _ptsqXgafv (\ s a -> s{_ptsqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptsqUploadProtocol :: Lens' ProjectsTimeSeriesQuery (Maybe Text)
ptsqUploadProtocol
  = lens _ptsqUploadProtocol
      (\ s a -> s{_ptsqUploadProtocol = a})

-- | OAuth access token.
ptsqAccessToken :: Lens' ProjectsTimeSeriesQuery (Maybe Text)
ptsqAccessToken
  = lens _ptsqAccessToken
      (\ s a -> s{_ptsqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptsqUploadType :: Lens' ProjectsTimeSeriesQuery (Maybe Text)
ptsqUploadType
  = lens _ptsqUploadType
      (\ s a -> s{_ptsqUploadType = a})

-- | Multipart request metadata.
ptsqPayload :: Lens' ProjectsTimeSeriesQuery QueryTimeSeriesRequest
ptsqPayload
  = lens _ptsqPayload (\ s a -> s{_ptsqPayload = a})

-- | Required. The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) on which
-- to execute the request. The format is: projects\/[PROJECT_ID_OR_NUMBER]
ptsqName :: Lens' ProjectsTimeSeriesQuery Text
ptsqName = lens _ptsqName (\ s a -> s{_ptsqName = a})

-- | JSONP
ptsqCallback :: Lens' ProjectsTimeSeriesQuery (Maybe Text)
ptsqCallback
  = lens _ptsqCallback (\ s a -> s{_ptsqCallback = a})

instance GoogleRequest ProjectsTimeSeriesQuery where
        type Rs ProjectsTimeSeriesQuery =
             QueryTimeSeriesResponse
        type Scopes ProjectsTimeSeriesQuery =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsTimeSeriesQuery'{..}
          = go _ptsqName _ptsqXgafv _ptsqUploadProtocol
              _ptsqAccessToken
              _ptsqUploadType
              _ptsqCallback
              (Just AltJSON)
              _ptsqPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTimeSeriesQueryResource)
                      mempty
