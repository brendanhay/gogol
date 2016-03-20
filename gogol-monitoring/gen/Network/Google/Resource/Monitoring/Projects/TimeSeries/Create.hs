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
-- Module      : Network.Google.Resource.Monitoring.Projects.TimeSeries.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or adds data to one or more time series. The response is empty
-- if all time series in the request were written. If any time series could
-- not be written, a corresponding failure message is included in the error
-- response.
--
-- /See:/ <https://cloud.google.com/monitoring/alpha/ Google Monitoring API Reference> for @monitoring.projects.timeSeries.create@.
module Network.Google.Resource.Monitoring.Projects.TimeSeries.Create
    (
    -- * REST Resource
      ProjectsTimeSeriesCreateResource

    -- * Creating a Request
    , projectsTimeSeriesCreate
    , ProjectsTimeSeriesCreate

    -- * Request Lenses
    , ptscXgafv
    , ptscUploadProtocol
    , ptscPp
    , ptscAccessToken
    , ptscUploadType
    , ptscPayload
    , ptscBearerToken
    , ptscName
    , ptscCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.timeSeries.create@ method which the
-- 'ProjectsTimeSeriesCreate' request conforms to.
type ProjectsTimeSeriesCreateResource =
     "v3" :>
       Capture "name" Text :>
         "timeSeries" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CreateTimeSeriesRequest :>
                             Post '[JSON] Empty

-- | Creates or adds data to one or more time series. The response is empty
-- if all time series in the request were written. If any time series could
-- not be written, a corresponding failure message is included in the error
-- response.
--
-- /See:/ 'projectsTimeSeriesCreate' smart constructor.
data ProjectsTimeSeriesCreate = ProjectsTimeSeriesCreate
    { _ptscXgafv          :: !(Maybe Text)
    , _ptscUploadProtocol :: !(Maybe Text)
    , _ptscPp             :: !Bool
    , _ptscAccessToken    :: !(Maybe Text)
    , _ptscUploadType     :: !(Maybe Text)
    , _ptscPayload        :: !CreateTimeSeriesRequest
    , _ptscBearerToken    :: !(Maybe Text)
    , _ptscName           :: !Text
    , _ptscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTimeSeriesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptscXgafv'
--
-- * 'ptscUploadProtocol'
--
-- * 'ptscPp'
--
-- * 'ptscAccessToken'
--
-- * 'ptscUploadType'
--
-- * 'ptscPayload'
--
-- * 'ptscBearerToken'
--
-- * 'ptscName'
--
-- * 'ptscCallback'
projectsTimeSeriesCreate
    :: CreateTimeSeriesRequest -- ^ 'ptscPayload'
    -> Text -- ^ 'ptscName'
    -> ProjectsTimeSeriesCreate
projectsTimeSeriesCreate pPtscPayload_ pPtscName_ =
    ProjectsTimeSeriesCreate
    { _ptscXgafv = Nothing
    , _ptscUploadProtocol = Nothing
    , _ptscPp = True
    , _ptscAccessToken = Nothing
    , _ptscUploadType = Nothing
    , _ptscPayload = pPtscPayload_
    , _ptscBearerToken = Nothing
    , _ptscName = pPtscName_
    , _ptscCallback = Nothing
    }

-- | V1 error format.
ptscXgafv :: Lens' ProjectsTimeSeriesCreate (Maybe Text)
ptscXgafv
  = lens _ptscXgafv (\ s a -> s{_ptscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptscUploadProtocol :: Lens' ProjectsTimeSeriesCreate (Maybe Text)
ptscUploadProtocol
  = lens _ptscUploadProtocol
      (\ s a -> s{_ptscUploadProtocol = a})

-- | Pretty-print response.
ptscPp :: Lens' ProjectsTimeSeriesCreate Bool
ptscPp = lens _ptscPp (\ s a -> s{_ptscPp = a})

-- | OAuth access token.
ptscAccessToken :: Lens' ProjectsTimeSeriesCreate (Maybe Text)
ptscAccessToken
  = lens _ptscAccessToken
      (\ s a -> s{_ptscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptscUploadType :: Lens' ProjectsTimeSeriesCreate (Maybe Text)
ptscUploadType
  = lens _ptscUploadType
      (\ s a -> s{_ptscUploadType = a})

-- | Multipart request metadata.
ptscPayload :: Lens' ProjectsTimeSeriesCreate CreateTimeSeriesRequest
ptscPayload
  = lens _ptscPayload (\ s a -> s{_ptscPayload = a})

-- | OAuth bearer token.
ptscBearerToken :: Lens' ProjectsTimeSeriesCreate (Maybe Text)
ptscBearerToken
  = lens _ptscBearerToken
      (\ s a -> s{_ptscBearerToken = a})

-- | The project on which to execute the request. The format is
-- \`\"projects\/ \"\`.
ptscName :: Lens' ProjectsTimeSeriesCreate Text
ptscName = lens _ptscName (\ s a -> s{_ptscName = a})

-- | JSONP
ptscCallback :: Lens' ProjectsTimeSeriesCreate (Maybe Text)
ptscCallback
  = lens _ptscCallback (\ s a -> s{_ptscCallback = a})

instance GoogleRequest ProjectsTimeSeriesCreate where
        type Rs ProjectsTimeSeriesCreate = Empty
        requestClient ProjectsTimeSeriesCreate{..}
          = go _ptscName _ptscXgafv _ptscUploadProtocol
              (Just _ptscPp)
              _ptscAccessToken
              _ptscUploadType
              _ptscBearerToken
              _ptscCallback
              (Just AltJSON)
              _ptscPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTimeSeriesCreateResource)
                      mempty
