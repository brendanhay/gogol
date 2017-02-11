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
-- Module      : Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a MetricAssociation.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.categories.metricAssociations.delete@.
module Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.Delete
    (
    -- * REST Resource
      ProjectsCategoriesMetricAssociationsDeleteResource

    -- * Creating a Request
    , projectsCategoriesMetricAssociationsDelete
    , ProjectsCategoriesMetricAssociationsDelete

    -- * Request Lenses
    , pcmadXgafv
    , pcmadUploadProtocol
    , pcmadPp
    , pcmadAccessToken
    , pcmadUploadType
    , pcmadBearerToken
    , pcmadName
    , pcmadCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.categories.metricAssociations.delete@ method which the
-- 'ProjectsCategoriesMetricAssociationsDelete' request conforms to.
type ProjectsCategoriesMetricAssociationsDeleteResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Delete a MetricAssociation.
--
-- /See:/ 'projectsCategoriesMetricAssociationsDelete' smart constructor.
data ProjectsCategoriesMetricAssociationsDelete = ProjectsCategoriesMetricAssociationsDelete'
    { _pcmadXgafv          :: !(Maybe Xgafv)
    , _pcmadUploadProtocol :: !(Maybe Text)
    , _pcmadPp             :: !Bool
    , _pcmadAccessToken    :: !(Maybe Text)
    , _pcmadUploadType     :: !(Maybe Text)
    , _pcmadBearerToken    :: !(Maybe Text)
    , _pcmadName           :: !Text
    , _pcmadCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsCategoriesMetricAssociationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcmadXgafv'
--
-- * 'pcmadUploadProtocol'
--
-- * 'pcmadPp'
--
-- * 'pcmadAccessToken'
--
-- * 'pcmadUploadType'
--
-- * 'pcmadBearerToken'
--
-- * 'pcmadName'
--
-- * 'pcmadCallback'
projectsCategoriesMetricAssociationsDelete
    :: Text -- ^ 'pcmadName'
    -> ProjectsCategoriesMetricAssociationsDelete
projectsCategoriesMetricAssociationsDelete pPcmadName_ =
    ProjectsCategoriesMetricAssociationsDelete'
    { _pcmadXgafv = Nothing
    , _pcmadUploadProtocol = Nothing
    , _pcmadPp = True
    , _pcmadAccessToken = Nothing
    , _pcmadUploadType = Nothing
    , _pcmadBearerToken = Nothing
    , _pcmadName = pPcmadName_
    , _pcmadCallback = Nothing
    }

-- | V1 error format.
pcmadXgafv :: Lens' ProjectsCategoriesMetricAssociationsDelete (Maybe Xgafv)
pcmadXgafv
  = lens _pcmadXgafv (\ s a -> s{_pcmadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcmadUploadProtocol :: Lens' ProjectsCategoriesMetricAssociationsDelete (Maybe Text)
pcmadUploadProtocol
  = lens _pcmadUploadProtocol
      (\ s a -> s{_pcmadUploadProtocol = a})

-- | Pretty-print response.
pcmadPp :: Lens' ProjectsCategoriesMetricAssociationsDelete Bool
pcmadPp = lens _pcmadPp (\ s a -> s{_pcmadPp = a})

-- | OAuth access token.
pcmadAccessToken :: Lens' ProjectsCategoriesMetricAssociationsDelete (Maybe Text)
pcmadAccessToken
  = lens _pcmadAccessToken
      (\ s a -> s{_pcmadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcmadUploadType :: Lens' ProjectsCategoriesMetricAssociationsDelete (Maybe Text)
pcmadUploadType
  = lens _pcmadUploadType
      (\ s a -> s{_pcmadUploadType = a})

-- | OAuth bearer token.
pcmadBearerToken :: Lens' ProjectsCategoriesMetricAssociationsDelete (Maybe Text)
pcmadBearerToken
  = lens _pcmadBearerToken
      (\ s a -> s{_pcmadBearerToken = a})

-- | Resource name of metric association to delete. Resource name form is
-- projects\/{project_id_or_number}\/
-- categories\/{short_name}\/metricAssociations\/{metric_name}.
pcmadName :: Lens' ProjectsCategoriesMetricAssociationsDelete Text
pcmadName
  = lens _pcmadName (\ s a -> s{_pcmadName = a})

-- | JSONP
pcmadCallback :: Lens' ProjectsCategoriesMetricAssociationsDelete (Maybe Text)
pcmadCallback
  = lens _pcmadCallback
      (\ s a -> s{_pcmadCallback = a})

instance GoogleRequest
         ProjectsCategoriesMetricAssociationsDelete where
        type Rs ProjectsCategoriesMetricAssociationsDelete =
             Empty
        type Scopes
               ProjectsCategoriesMetricAssociationsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient
          ProjectsCategoriesMetricAssociationsDelete'{..}
          = go _pcmadName _pcmadXgafv _pcmadUploadProtocol
              (Just _pcmadPp)
              _pcmadAccessToken
              _pcmadUploadType
              _pcmadBearerToken
              _pcmadCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsCategoriesMetricAssociationsDeleteResource)
                      mempty
