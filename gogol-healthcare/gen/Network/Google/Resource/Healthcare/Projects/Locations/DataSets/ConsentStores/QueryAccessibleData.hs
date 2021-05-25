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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.QueryAccessibleData
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries all data_ids that are consented for a specified use in the given
-- consent store and writes them to a specified destination. The returned
-- Operation includes a progress counter for the number of User data
-- mappings processed. If the request is successful, a detailed response is
-- returned of type QueryAccessibleDataResponse, contained in the response
-- field when the operation finishes. The metadata field type is
-- OperationMetadata. Errors are logged to Cloud Logging (see [Viewing
-- error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
-- For example, the following sample log entry shows a \`failed to evaluate
-- consent policy\` error that occurred during a QueryAccessibleData call
-- to consent store
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\`.
-- \`\`\`json jsonPayload: { \'type:
-- \"type.googleapis.com\/google.cloud.healthcare.logging.QueryAccessibleDataLogEntry\"
-- error: { code: 9 message: \"failed to evaluate consent policy\" }
-- resourceName:
-- \"projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\"
-- } logName:
-- \"projects\/{project_id}\/logs\/healthcare.googleapis.com%2Fquery_accessible_data\"
-- operation: { id:
-- \"projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/operations\/{operation_id}\"
-- producer: \"healthcare.googleapis.com\/QueryAccessibleData\" }
-- receiveTimestamp: \"TIMESTAMP\" resource: { labels: { consent_store_id:
-- \"{consent_store_id}\" dataset_id: \"{dataset_id}\" location:
-- \"{location_id}\" project_id: \"{project_id}\" } type:
-- \"healthcare_consent_store\" } severity: \"ERROR\" timestamp:
-- \"TIMESTAMP\" \`\`\`
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.queryAccessibleData@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.QueryAccessibleData
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresQueryAccessibleDataResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresQueryAccessibleData
    , ProjectsLocationsDataSetsConsentStoresQueryAccessibleData

    -- * Request Lenses
    , pldscsqadXgafv
    , pldscsqadUploadProtocol
    , pldscsqadAccessToken
    , pldscsqadUploadType
    , pldscsqadPayload
    , pldscsqadConsentStore
    , pldscsqadCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.queryAccessibleData@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresQueryAccessibleData' request conforms to.
type ProjectsLocationsDataSetsConsentStoresQueryAccessibleDataResource
     =
     "v1" :>
       CaptureMode "consentStore" "queryAccessibleData" Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] QueryAccessibleDataRequest :>
                       Post '[JSON] Operation

-- | Queries all data_ids that are consented for a specified use in the given
-- consent store and writes them to a specified destination. The returned
-- Operation includes a progress counter for the number of User data
-- mappings processed. If the request is successful, a detailed response is
-- returned of type QueryAccessibleDataResponse, contained in the response
-- field when the operation finishes. The metadata field type is
-- OperationMetadata. Errors are logged to Cloud Logging (see [Viewing
-- error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
-- For example, the following sample log entry shows a \`failed to evaluate
-- consent policy\` error that occurred during a QueryAccessibleData call
-- to consent store
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\`.
-- \`\`\`json jsonPayload: { \'type:
-- \"type.googleapis.com\/google.cloud.healthcare.logging.QueryAccessibleDataLogEntry\"
-- error: { code: 9 message: \"failed to evaluate consent policy\" }
-- resourceName:
-- \"projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\"
-- } logName:
-- \"projects\/{project_id}\/logs\/healthcare.googleapis.com%2Fquery_accessible_data\"
-- operation: { id:
-- \"projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/operations\/{operation_id}\"
-- producer: \"healthcare.googleapis.com\/QueryAccessibleData\" }
-- receiveTimestamp: \"TIMESTAMP\" resource: { labels: { consent_store_id:
-- \"{consent_store_id}\" dataset_id: \"{dataset_id}\" location:
-- \"{location_id}\" project_id: \"{project_id}\" } type:
-- \"healthcare_consent_store\" } severity: \"ERROR\" timestamp:
-- \"TIMESTAMP\" \`\`\`
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresQueryAccessibleData' smart constructor.
data ProjectsLocationsDataSetsConsentStoresQueryAccessibleData =
  ProjectsLocationsDataSetsConsentStoresQueryAccessibleData'
    { _pldscsqadXgafv :: !(Maybe Xgafv)
    , _pldscsqadUploadProtocol :: !(Maybe Text)
    , _pldscsqadAccessToken :: !(Maybe Text)
    , _pldscsqadUploadType :: !(Maybe Text)
    , _pldscsqadPayload :: !QueryAccessibleDataRequest
    , _pldscsqadConsentStore :: !Text
    , _pldscsqadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresQueryAccessibleData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsqadXgafv'
--
-- * 'pldscsqadUploadProtocol'
--
-- * 'pldscsqadAccessToken'
--
-- * 'pldscsqadUploadType'
--
-- * 'pldscsqadPayload'
--
-- * 'pldscsqadConsentStore'
--
-- * 'pldscsqadCallback'
projectsLocationsDataSetsConsentStoresQueryAccessibleData
    :: QueryAccessibleDataRequest -- ^ 'pldscsqadPayload'
    -> Text -- ^ 'pldscsqadConsentStore'
    -> ProjectsLocationsDataSetsConsentStoresQueryAccessibleData
projectsLocationsDataSetsConsentStoresQueryAccessibleData pPldscsqadPayload_ pPldscsqadConsentStore_ =
  ProjectsLocationsDataSetsConsentStoresQueryAccessibleData'
    { _pldscsqadXgafv = Nothing
    , _pldscsqadUploadProtocol = Nothing
    , _pldscsqadAccessToken = Nothing
    , _pldscsqadUploadType = Nothing
    , _pldscsqadPayload = pPldscsqadPayload_
    , _pldscsqadConsentStore = pPldscsqadConsentStore_
    , _pldscsqadCallback = Nothing
    }


-- | V1 error format.
pldscsqadXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresQueryAccessibleData (Maybe Xgafv)
pldscsqadXgafv
  = lens _pldscsqadXgafv
      (\ s a -> s{_pldscsqadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsqadUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresQueryAccessibleData (Maybe Text)
pldscsqadUploadProtocol
  = lens _pldscsqadUploadProtocol
      (\ s a -> s{_pldscsqadUploadProtocol = a})

-- | OAuth access token.
pldscsqadAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresQueryAccessibleData (Maybe Text)
pldscsqadAccessToken
  = lens _pldscsqadAccessToken
      (\ s a -> s{_pldscsqadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsqadUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresQueryAccessibleData (Maybe Text)
pldscsqadUploadType
  = lens _pldscsqadUploadType
      (\ s a -> s{_pldscsqadUploadType = a})

-- | Multipart request metadata.
pldscsqadPayload :: Lens' ProjectsLocationsDataSetsConsentStoresQueryAccessibleData QueryAccessibleDataRequest
pldscsqadPayload
  = lens _pldscsqadPayload
      (\ s a -> s{_pldscsqadPayload = a})

-- | Required. Name of the consent store to retrieve User data mappings from.
pldscsqadConsentStore :: Lens' ProjectsLocationsDataSetsConsentStoresQueryAccessibleData Text
pldscsqadConsentStore
  = lens _pldscsqadConsentStore
      (\ s a -> s{_pldscsqadConsentStore = a})

-- | JSONP
pldscsqadCallback :: Lens' ProjectsLocationsDataSetsConsentStoresQueryAccessibleData (Maybe Text)
pldscsqadCallback
  = lens _pldscsqadCallback
      (\ s a -> s{_pldscsqadCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresQueryAccessibleData
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresQueryAccessibleData
             = Operation
        type Scopes
               ProjectsLocationsDataSetsConsentStoresQueryAccessibleData
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresQueryAccessibleData'{..}
          = go _pldscsqadConsentStore _pldscsqadXgafv
              _pldscsqadUploadProtocol
              _pldscsqadAccessToken
              _pldscsqadUploadType
              _pldscsqadCallback
              (Just AltJSON)
              _pldscsqadPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresQueryAccessibleDataResource)
                      mempty
