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
-- Module      : Network.Google.Resource.Monitoring.Categories.MetricAssociations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the MetricAssociations in a given Category.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.categories.metricAssociations.list@.
module Network.Google.Resource.Monitoring.Categories.MetricAssociations.List
    (
    -- * REST Resource
      CategoriesMetricAssociationsListResource

    -- * Creating a Request
    , categoriesMetricAssociationsList
    , CategoriesMetricAssociationsList

    -- * Request Lenses
    , cmalParent
    , cmalXgafv
    , cmalUploadProtocol
    , cmalPp
    , cmalAccessToken
    , cmalUploadType
    , cmalBearerToken
    , cmalFilter
    , cmalPageToken
    , cmalPageSize
    , cmalCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.categories.metricAssociations.list@ method which the
-- 'CategoriesMetricAssociationsList' request conforms to.
type CategoriesMetricAssociationsListResource =
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
-- /See:/ 'categoriesMetricAssociationsList' smart constructor.
data CategoriesMetricAssociationsList = CategoriesMetricAssociationsList'
    { _cmalParent         :: !Text
    , _cmalXgafv          :: !(Maybe Xgafv)
    , _cmalUploadProtocol :: !(Maybe Text)
    , _cmalPp             :: !Bool
    , _cmalAccessToken    :: !(Maybe Text)
    , _cmalUploadType     :: !(Maybe Text)
    , _cmalBearerToken    :: !(Maybe Text)
    , _cmalFilter         :: !(Maybe Text)
    , _cmalPageToken      :: !(Maybe Text)
    , _cmalPageSize       :: !(Maybe (Textual Int32))
    , _cmalCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CategoriesMetricAssociationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmalParent'
--
-- * 'cmalXgafv'
--
-- * 'cmalUploadProtocol'
--
-- * 'cmalPp'
--
-- * 'cmalAccessToken'
--
-- * 'cmalUploadType'
--
-- * 'cmalBearerToken'
--
-- * 'cmalFilter'
--
-- * 'cmalPageToken'
--
-- * 'cmalPageSize'
--
-- * 'cmalCallback'
categoriesMetricAssociationsList
    :: Text -- ^ 'cmalParent'
    -> CategoriesMetricAssociationsList
categoriesMetricAssociationsList pCmalParent_ =
    CategoriesMetricAssociationsList'
    { _cmalParent = pCmalParent_
    , _cmalXgafv = Nothing
    , _cmalUploadProtocol = Nothing
    , _cmalPp = True
    , _cmalAccessToken = Nothing
    , _cmalUploadType = Nothing
    , _cmalBearerToken = Nothing
    , _cmalFilter = Nothing
    , _cmalPageToken = Nothing
    , _cmalPageSize = Nothing
    , _cmalCallback = Nothing
    }

-- | Resource parent of the category to get. Resource parent form is
-- projects\/{project_id_or_number}\/categories\/{short_name}.
cmalParent :: Lens' CategoriesMetricAssociationsList Text
cmalParent
  = lens _cmalParent (\ s a -> s{_cmalParent = a})

-- | V1 error format.
cmalXgafv :: Lens' CategoriesMetricAssociationsList (Maybe Xgafv)
cmalXgafv
  = lens _cmalXgafv (\ s a -> s{_cmalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cmalUploadProtocol :: Lens' CategoriesMetricAssociationsList (Maybe Text)
cmalUploadProtocol
  = lens _cmalUploadProtocol
      (\ s a -> s{_cmalUploadProtocol = a})

-- | Pretty-print response.
cmalPp :: Lens' CategoriesMetricAssociationsList Bool
cmalPp = lens _cmalPp (\ s a -> s{_cmalPp = a})

-- | OAuth access token.
cmalAccessToken :: Lens' CategoriesMetricAssociationsList (Maybe Text)
cmalAccessToken
  = lens _cmalAccessToken
      (\ s a -> s{_cmalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cmalUploadType :: Lens' CategoriesMetricAssociationsList (Maybe Text)
cmalUploadType
  = lens _cmalUploadType
      (\ s a -> s{_cmalUploadType = a})

-- | OAuth bearer token.
cmalBearerToken :: Lens' CategoriesMetricAssociationsList (Maybe Text)
cmalBearerToken
  = lens _cmalBearerToken
      (\ s a -> s{_cmalBearerToken = a})

-- | A filter that specifies what MetricAssociations to return.
cmalFilter :: Lens' CategoriesMetricAssociationsList (Maybe Text)
cmalFilter
  = lens _cmalFilter (\ s a -> s{_cmalFilter = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
cmalPageToken :: Lens' CategoriesMetricAssociationsList (Maybe Text)
cmalPageToken
  = lens _cmalPageToken
      (\ s a -> s{_cmalPageToken = a})

-- | A positive number that is the maximum number of results to return. When
-- 0, use default page size.
cmalPageSize :: Lens' CategoriesMetricAssociationsList (Maybe Int32)
cmalPageSize
  = lens _cmalPageSize (\ s a -> s{_cmalPageSize = a})
      . mapping _Coerce

-- | JSONP
cmalCallback :: Lens' CategoriesMetricAssociationsList (Maybe Text)
cmalCallback
  = lens _cmalCallback (\ s a -> s{_cmalCallback = a})

instance GoogleRequest
         CategoriesMetricAssociationsList where
        type Rs CategoriesMetricAssociationsList =
             ListMetricAssociationsResponse
        type Scopes CategoriesMetricAssociationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient CategoriesMetricAssociationsList'{..}
          = go _cmalParent _cmalXgafv _cmalUploadProtocol
              (Just _cmalPp)
              _cmalAccessToken
              _cmalUploadType
              _cmalBearerToken
              _cmalFilter
              _cmalPageToken
              _cmalPageSize
              _cmalCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CategoriesMetricAssociationsListResource)
                      mempty
