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
-- Module      : Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the ServiceLevelObjectives for the given Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.list@.
module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.List
    (
    -- * REST Resource
      ServicesServiceLevelObjectivesListResource

    -- * Creating a Request
    , servicesServiceLevelObjectivesList
    , ServicesServiceLevelObjectivesList

    -- * Request Lenses
    , sslolParent
    , sslolXgafv
    , sslolUploadProtocol
    , sslolAccessToken
    , sslolUploadType
    , sslolView
    , sslolFilter
    , sslolPageToken
    , sslolPageSize
    , sslolCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.serviceLevelObjectives.list@ method which the
-- 'ServicesServiceLevelObjectivesList' request conforms to.
type ServicesServiceLevelObjectivesListResource =
     "v3" :>
       Capture "parent" Text :>
         "serviceLevelObjectives" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view"
                     ServicesServiceLevelObjectivesListView
                     :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListServiceLevelObjectivesResponse

-- | List the ServiceLevelObjectives for the given Service.
--
-- /See:/ 'servicesServiceLevelObjectivesList' smart constructor.
data ServicesServiceLevelObjectivesList =
  ServicesServiceLevelObjectivesList'
    { _sslolParent :: !Text
    , _sslolXgafv :: !(Maybe Xgafv)
    , _sslolUploadProtocol :: !(Maybe Text)
    , _sslolAccessToken :: !(Maybe Text)
    , _sslolUploadType :: !(Maybe Text)
    , _sslolView :: !(Maybe ServicesServiceLevelObjectivesListView)
    , _sslolFilter :: !(Maybe Text)
    , _sslolPageToken :: !(Maybe Text)
    , _sslolPageSize :: !(Maybe (Textual Int32))
    , _sslolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesServiceLevelObjectivesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslolParent'
--
-- * 'sslolXgafv'
--
-- * 'sslolUploadProtocol'
--
-- * 'sslolAccessToken'
--
-- * 'sslolUploadType'
--
-- * 'sslolView'
--
-- * 'sslolFilter'
--
-- * 'sslolPageToken'
--
-- * 'sslolPageSize'
--
-- * 'sslolCallback'
servicesServiceLevelObjectivesList
    :: Text -- ^ 'sslolParent'
    -> ServicesServiceLevelObjectivesList
servicesServiceLevelObjectivesList pSslolParent_ =
  ServicesServiceLevelObjectivesList'
    { _sslolParent = pSslolParent_
    , _sslolXgafv = Nothing
    , _sslolUploadProtocol = Nothing
    , _sslolAccessToken = Nothing
    , _sslolUploadType = Nothing
    , _sslolView = Nothing
    , _sslolFilter = Nothing
    , _sslolPageToken = Nothing
    , _sslolPageSize = Nothing
    , _sslolCallback = Nothing
    }


-- | Required. Resource name of the parent containing the listed SLOs, either
-- a project or a Monitoring Workspace. The formats are:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]
-- workspaces\/[HOST_PROJECT_ID_OR_NUMBER]\/services\/-
sslolParent :: Lens' ServicesServiceLevelObjectivesList Text
sslolParent
  = lens _sslolParent (\ s a -> s{_sslolParent = a})

-- | V1 error format.
sslolXgafv :: Lens' ServicesServiceLevelObjectivesList (Maybe Xgafv)
sslolXgafv
  = lens _sslolXgafv (\ s a -> s{_sslolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sslolUploadProtocol :: Lens' ServicesServiceLevelObjectivesList (Maybe Text)
sslolUploadProtocol
  = lens _sslolUploadProtocol
      (\ s a -> s{_sslolUploadProtocol = a})

-- | OAuth access token.
sslolAccessToken :: Lens' ServicesServiceLevelObjectivesList (Maybe Text)
sslolAccessToken
  = lens _sslolAccessToken
      (\ s a -> s{_sslolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sslolUploadType :: Lens' ServicesServiceLevelObjectivesList (Maybe Text)
sslolUploadType
  = lens _sslolUploadType
      (\ s a -> s{_sslolUploadType = a})

-- | View of the ServiceLevelObjectives to return. If DEFAULT, return each
-- ServiceLevelObjective as originally defined. If EXPLICIT and the
-- ServiceLevelObjective is defined in terms of a BasicSli, replace the
-- BasicSli with a RequestBasedSli spelling out how the SLI is computed.
sslolView :: Lens' ServicesServiceLevelObjectivesList (Maybe ServicesServiceLevelObjectivesListView)
sslolView
  = lens _sslolView (\ s a -> s{_sslolView = a})

-- | A filter specifying what ServiceLevelObjectives to return.
sslolFilter :: Lens' ServicesServiceLevelObjectivesList (Maybe Text)
sslolFilter
  = lens _sslolFilter (\ s a -> s{_sslolFilter = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
sslolPageToken :: Lens' ServicesServiceLevelObjectivesList (Maybe Text)
sslolPageToken
  = lens _sslolPageToken
      (\ s a -> s{_sslolPageToken = a})

-- | A non-negative number that is the maximum number of results to return.
-- When 0, use default page size.
sslolPageSize :: Lens' ServicesServiceLevelObjectivesList (Maybe Int32)
sslolPageSize
  = lens _sslolPageSize
      (\ s a -> s{_sslolPageSize = a})
      . mapping _Coerce

-- | JSONP
sslolCallback :: Lens' ServicesServiceLevelObjectivesList (Maybe Text)
sslolCallback
  = lens _sslolCallback
      (\ s a -> s{_sslolCallback = a})

instance GoogleRequest
           ServicesServiceLevelObjectivesList
         where
        type Rs ServicesServiceLevelObjectivesList =
             ListServiceLevelObjectivesResponse
        type Scopes ServicesServiceLevelObjectivesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ServicesServiceLevelObjectivesList'{..}
          = go _sslolParent _sslolXgafv _sslolUploadProtocol
              _sslolAccessToken
              _sslolUploadType
              _sslolView
              _sslolFilter
              _sslolPageToken
              _sslolPageSize
              _sslolCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesServiceLevelObjectivesListResource)
                      mempty
