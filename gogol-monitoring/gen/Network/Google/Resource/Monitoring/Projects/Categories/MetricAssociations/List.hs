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
-- Module      : Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the MetricAssociations in a given Category.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.categories.metricAssociations.list@.
module Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.List
    (
    -- * REST Resource
      ProjectsCategoriesMetricAssociationsListResource

    -- * Creating a Request
    , projectsCategoriesMetricAssociationsList
    , ProjectsCategoriesMetricAssociationsList

    -- * Request Lenses
    , pcmalParent
    , pcmalXgafv
    , pcmalUploadProtocol
    , pcmalPp
    , pcmalAccessToken
    , pcmalUploadType
    , pcmalBearerToken
    , pcmalFilter
    , pcmalPageToken
    , pcmalPageSize
    , pcmalCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.categories.metricAssociations.list@ method which the
-- 'ProjectsCategoriesMetricAssociationsList' request conforms to.
type ProjectsCategoriesMetricAssociationsListResource
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
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListMetricAssociationsResponse

-- | List the MetricAssociations in a given Category.
--
-- /See:/ 'projectsCategoriesMetricAssociationsList' smart constructor.
data ProjectsCategoriesMetricAssociationsList = ProjectsCategoriesMetricAssociationsList'
    { _pcmalParent         :: !Text
    , _pcmalXgafv          :: !(Maybe Xgafv)
    , _pcmalUploadProtocol :: !(Maybe Text)
    , _pcmalPp             :: !Bool
    , _pcmalAccessToken    :: !(Maybe Text)
    , _pcmalUploadType     :: !(Maybe Text)
    , _pcmalBearerToken    :: !(Maybe Text)
    , _pcmalFilter         :: !(Maybe Text)
    , _pcmalPageToken      :: !(Maybe Text)
    , _pcmalPageSize       :: !(Maybe (Textual Int32))
    , _pcmalCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsCategoriesMetricAssociationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcmalParent'
--
-- * 'pcmalXgafv'
--
-- * 'pcmalUploadProtocol'
--
-- * 'pcmalPp'
--
-- * 'pcmalAccessToken'
--
-- * 'pcmalUploadType'
--
-- * 'pcmalBearerToken'
--
-- * 'pcmalFilter'
--
-- * 'pcmalPageToken'
--
-- * 'pcmalPageSize'
--
-- * 'pcmalCallback'
projectsCategoriesMetricAssociationsList
    :: Text -- ^ 'pcmalParent'
    -> ProjectsCategoriesMetricAssociationsList
projectsCategoriesMetricAssociationsList pPcmalParent_ =
    ProjectsCategoriesMetricAssociationsList'
    { _pcmalParent = pPcmalParent_
    , _pcmalXgafv = Nothing
    , _pcmalUploadProtocol = Nothing
    , _pcmalPp = True
    , _pcmalAccessToken = Nothing
    , _pcmalUploadType = Nothing
    , _pcmalBearerToken = Nothing
    , _pcmalFilter = Nothing
    , _pcmalPageToken = Nothing
    , _pcmalPageSize = Nothing
    , _pcmalCallback = Nothing
    }

-- | Resource parent of the category to get. Resource parent form is
-- projects\/{project_id_or_number}\/categories\/{short_name}.
pcmalParent :: Lens' ProjectsCategoriesMetricAssociationsList Text
pcmalParent
  = lens _pcmalParent (\ s a -> s{_pcmalParent = a})

-- | V1 error format.
pcmalXgafv :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Xgafv)
pcmalXgafv
  = lens _pcmalXgafv (\ s a -> s{_pcmalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcmalUploadProtocol :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Text)
pcmalUploadProtocol
  = lens _pcmalUploadProtocol
      (\ s a -> s{_pcmalUploadProtocol = a})

-- | Pretty-print response.
pcmalPp :: Lens' ProjectsCategoriesMetricAssociationsList Bool
pcmalPp = lens _pcmalPp (\ s a -> s{_pcmalPp = a})

-- | OAuth access token.
pcmalAccessToken :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Text)
pcmalAccessToken
  = lens _pcmalAccessToken
      (\ s a -> s{_pcmalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcmalUploadType :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Text)
pcmalUploadType
  = lens _pcmalUploadType
      (\ s a -> s{_pcmalUploadType = a})

-- | OAuth bearer token.
pcmalBearerToken :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Text)
pcmalBearerToken
  = lens _pcmalBearerToken
      (\ s a -> s{_pcmalBearerToken = a})

-- | A filter that specifies what MetricAssociations to return.
pcmalFilter :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Text)
pcmalFilter
  = lens _pcmalFilter (\ s a -> s{_pcmalFilter = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
pcmalPageToken :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Text)
pcmalPageToken
  = lens _pcmalPageToken
      (\ s a -> s{_pcmalPageToken = a})

-- | A positive number that is the maximum number of results to return. When
-- 0, use default page size.
pcmalPageSize :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Int32)
pcmalPageSize
  = lens _pcmalPageSize
      (\ s a -> s{_pcmalPageSize = a})
      . mapping _Coerce

-- | JSONP
pcmalCallback :: Lens' ProjectsCategoriesMetricAssociationsList (Maybe Text)
pcmalCallback
  = lens _pcmalCallback
      (\ s a -> s{_pcmalCallback = a})

instance GoogleRequest
         ProjectsCategoriesMetricAssociationsList where
        type Rs ProjectsCategoriesMetricAssociationsList =
             ListMetricAssociationsResponse
        type Scopes ProjectsCategoriesMetricAssociationsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient
          ProjectsCategoriesMetricAssociationsList'{..}
          = go _pcmalParent _pcmalXgafv _pcmalUploadProtocol
              (Just _pcmalPp)
              _pcmalAccessToken
              _pcmalUploadType
              _pcmalBearerToken
              _pcmalFilter
              _pcmalPageToken
              _pcmalPageSize
              _pcmalCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsCategoriesMetricAssociationsListResource)
                      mempty
