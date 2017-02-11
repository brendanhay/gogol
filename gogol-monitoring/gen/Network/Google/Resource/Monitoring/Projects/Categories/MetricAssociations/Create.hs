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
-- Module      : Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a MetricAssociation.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.categories.metricAssociations.create@.
module Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.Create
    (
    -- * REST Resource
      ProjectsCategoriesMetricAssociationsCreateResource

    -- * Creating a Request
    , projectsCategoriesMetricAssociationsCreate
    , ProjectsCategoriesMetricAssociationsCreate

    -- * Request Lenses
    , pcmacParent
    , pcmacXgafv
    , pcmacUploadProtocol
    , pcmacPp
    , pcmacAccessToken
    , pcmacUploadType
    , pcmacPayload
    , pcmacBearerToken
    , pcmacCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.categories.metricAssociations.create@ method which the
-- 'ProjectsCategoriesMetricAssociationsCreate' request conforms to.
type ProjectsCategoriesMetricAssociationsCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "metricAssociations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] MetricAssociation :>
                             Post '[JSON] MetricAssociation

-- | Create a MetricAssociation.
--
-- /See:/ 'projectsCategoriesMetricAssociationsCreate' smart constructor.
data ProjectsCategoriesMetricAssociationsCreate = ProjectsCategoriesMetricAssociationsCreate'
    { _pcmacParent         :: !Text
    , _pcmacXgafv          :: !(Maybe Xgafv)
    , _pcmacUploadProtocol :: !(Maybe Text)
    , _pcmacPp             :: !Bool
    , _pcmacAccessToken    :: !(Maybe Text)
    , _pcmacUploadType     :: !(Maybe Text)
    , _pcmacPayload        :: !MetricAssociation
    , _pcmacBearerToken    :: !(Maybe Text)
    , _pcmacCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsCategoriesMetricAssociationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcmacParent'
--
-- * 'pcmacXgafv'
--
-- * 'pcmacUploadProtocol'
--
-- * 'pcmacPp'
--
-- * 'pcmacAccessToken'
--
-- * 'pcmacUploadType'
--
-- * 'pcmacPayload'
--
-- * 'pcmacBearerToken'
--
-- * 'pcmacCallback'
projectsCategoriesMetricAssociationsCreate
    :: Text -- ^ 'pcmacParent'
    -> MetricAssociation -- ^ 'pcmacPayload'
    -> ProjectsCategoriesMetricAssociationsCreate
projectsCategoriesMetricAssociationsCreate pPcmacParent_ pPcmacPayload_ =
    ProjectsCategoriesMetricAssociationsCreate'
    { _pcmacParent = pPcmacParent_
    , _pcmacXgafv = Nothing
    , _pcmacUploadProtocol = Nothing
    , _pcmacPp = True
    , _pcmacAccessToken = Nothing
    , _pcmacUploadType = Nothing
    , _pcmacPayload = pPcmacPayload_
    , _pcmacBearerToken = Nothing
    , _pcmacCallback = Nothing
    }

-- | Resource parent of the category to get. Resource parent form is
-- projects\/{project_id_or_number}\/categories\/{short_name}.
pcmacParent :: Lens' ProjectsCategoriesMetricAssociationsCreate Text
pcmacParent
  = lens _pcmacParent (\ s a -> s{_pcmacParent = a})

-- | V1 error format.
pcmacXgafv :: Lens' ProjectsCategoriesMetricAssociationsCreate (Maybe Xgafv)
pcmacXgafv
  = lens _pcmacXgafv (\ s a -> s{_pcmacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcmacUploadProtocol :: Lens' ProjectsCategoriesMetricAssociationsCreate (Maybe Text)
pcmacUploadProtocol
  = lens _pcmacUploadProtocol
      (\ s a -> s{_pcmacUploadProtocol = a})

-- | Pretty-print response.
pcmacPp :: Lens' ProjectsCategoriesMetricAssociationsCreate Bool
pcmacPp = lens _pcmacPp (\ s a -> s{_pcmacPp = a})

-- | OAuth access token.
pcmacAccessToken :: Lens' ProjectsCategoriesMetricAssociationsCreate (Maybe Text)
pcmacAccessToken
  = lens _pcmacAccessToken
      (\ s a -> s{_pcmacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcmacUploadType :: Lens' ProjectsCategoriesMetricAssociationsCreate (Maybe Text)
pcmacUploadType
  = lens _pcmacUploadType
      (\ s a -> s{_pcmacUploadType = a})

-- | Multipart request metadata.
pcmacPayload :: Lens' ProjectsCategoriesMetricAssociationsCreate MetricAssociation
pcmacPayload
  = lens _pcmacPayload (\ s a -> s{_pcmacPayload = a})

-- | OAuth bearer token.
pcmacBearerToken :: Lens' ProjectsCategoriesMetricAssociationsCreate (Maybe Text)
pcmacBearerToken
  = lens _pcmacBearerToken
      (\ s a -> s{_pcmacBearerToken = a})

-- | JSONP
pcmacCallback :: Lens' ProjectsCategoriesMetricAssociationsCreate (Maybe Text)
pcmacCallback
  = lens _pcmacCallback
      (\ s a -> s{_pcmacCallback = a})

instance GoogleRequest
         ProjectsCategoriesMetricAssociationsCreate where
        type Rs ProjectsCategoriesMetricAssociationsCreate =
             MetricAssociation
        type Scopes
               ProjectsCategoriesMetricAssociationsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient
          ProjectsCategoriesMetricAssociationsCreate'{..}
          = go _pcmacParent _pcmacXgafv _pcmacUploadProtocol
              (Just _pcmacPp)
              _pcmacAccessToken
              _pcmacUploadType
              _pcmacBearerToken
              _pcmacCallback
              (Just AltJSON)
              _pcmacPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsCategoriesMetricAssociationsCreateResource)
                      mempty
