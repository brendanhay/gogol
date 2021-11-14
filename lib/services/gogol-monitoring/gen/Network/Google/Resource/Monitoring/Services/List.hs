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
-- Module      : Network.Google.Resource.Monitoring.Services.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Services for this workspace.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.list@.
module Network.Google.Resource.Monitoring.Services.List
    (
    -- * REST Resource
      ServicesListResource

    -- * Creating a Request
    , servicesList
    , ServicesList

    -- * Request Lenses
    , slParent
    , slXgafv
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slFilter
    , slPageToken
    , slPageSize
    , slCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.list@ method which the
-- 'ServicesList' request conforms to.
type ServicesListResource =
     "v3" :>
       Capture "parent" Text :>
         "services" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListServicesResponse

-- | List Services for this workspace.
--
-- /See:/ 'servicesList' smart constructor.
data ServicesList =
  ServicesList'
    { _slParent :: !Text
    , _slXgafv :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slFilter :: !(Maybe Text)
    , _slPageToken :: !(Maybe Text)
    , _slPageSize :: !(Maybe (Textual Int32))
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slParent'
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slFilter'
--
-- * 'slPageToken'
--
-- * 'slPageSize'
--
-- * 'slCallback'
servicesList
    :: Text -- ^ 'slParent'
    -> ServicesList
servicesList pSlParent_ =
  ServicesList'
    { _slParent = pSlParent_
    , _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slFilter = Nothing
    , _slPageToken = Nothing
    , _slPageSize = Nothing
    , _slCallback = Nothing
    }


-- | Required. Resource name of the parent containing the listed services,
-- either a project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) or a
-- Monitoring Workspace. The formats are: projects\/[PROJECT_ID_OR_NUMBER]
-- workspaces\/[HOST_PROJECT_ID_OR_NUMBER]
slParent :: Lens' ServicesList Text
slParent = lens _slParent (\ s a -> s{_slParent = a})

-- | V1 error format.
slXgafv :: Lens' ServicesList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' ServicesList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' ServicesList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' ServicesList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | A filter specifying what Services to return. The filter currently
-- supports the following fields: - \`identifier_case\` -
-- \`app_engine.module_id\` - \`cloud_endpoints.service\` (reserved for
-- future use) - \`mesh_istio.mesh_uid\` - \`mesh_istio.service_namespace\`
-- - \`mesh_istio.service_name\` - \`cluster_istio.location\` (deprecated)
-- - \`cluster_istio.cluster_name\` (deprecated) -
-- \`cluster_istio.service_namespace\` (deprecated) -
-- \`cluster_istio.service_name\` (deprecated) identifier_case refers to
-- which option in the identifier oneof is populated. For example, the
-- filter identifier_case = \"CUSTOM\" would match all services with a
-- value for the custom field. Valid options are \"CUSTOM\",
-- \"APP_ENGINE\", \"MESH_ISTIO\", plus \"CLUSTER_ISTIO\" (deprecated) and
-- \"CLOUD_ENDPOINTS\" (reserved for future use).
slFilter :: Lens' ServicesList (Maybe Text)
slFilter = lens _slFilter (\ s a -> s{_slFilter = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
slPageToken :: Lens' ServicesList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | A non-negative number that is the maximum number of results to return.
-- When 0, use default page size.
slPageSize :: Lens' ServicesList (Maybe Int32)
slPageSize
  = lens _slPageSize (\ s a -> s{_slPageSize = a}) .
      mapping _Coerce

-- | JSONP
slCallback :: Lens' ServicesList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest ServicesList where
        type Rs ServicesList = ListServicesResponse
        type Scopes ServicesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ServicesList'{..}
          = go _slParent _slXgafv _slUploadProtocol
              _slAccessToken
              _slUploadType
              _slFilter
              _slPageToken
              _slPageSize
              _slCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient (Proxy :: Proxy ServicesListResource)
                      mempty
