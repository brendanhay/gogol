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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the Consent and its revisions. To keep a record of the Consent
-- but mark it inactive, see [RevokeConsent]. To delete a revision of a
-- Consent, see [DeleteConsentRevision]. This operation does not delete the
-- related Consent artifact.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsDelete
    , ProjectsLocationsDataSetsConsentStoresConsentsDelete

    -- * Request Lenses
    , pldscscdXgafv
    , pldscscdUploadProtocol
    , pldscscdAccessToken
    , pldscscdUploadType
    , pldscscdName
    , pldscscdCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.delete@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsDelete' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the Consent and its revisions. To keep a record of the Consent
-- but mark it inactive, see [RevokeConsent]. To delete a revision of a
-- Consent, see [DeleteConsentRevision]. This operation does not delete the
-- related Consent artifact.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsDelete' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsDelete =
  ProjectsLocationsDataSetsConsentStoresConsentsDelete'
    { _pldscscdXgafv :: !(Maybe Xgafv)
    , _pldscscdUploadProtocol :: !(Maybe Text)
    , _pldscscdAccessToken :: !(Maybe Text)
    , _pldscscdUploadType :: !(Maybe Text)
    , _pldscscdName :: !Text
    , _pldscscdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscdXgafv'
--
-- * 'pldscscdUploadProtocol'
--
-- * 'pldscscdAccessToken'
--
-- * 'pldscscdUploadType'
--
-- * 'pldscscdName'
--
-- * 'pldscscdCallback'
projectsLocationsDataSetsConsentStoresConsentsDelete
    :: Text -- ^ 'pldscscdName'
    -> ProjectsLocationsDataSetsConsentStoresConsentsDelete
projectsLocationsDataSetsConsentStoresConsentsDelete pPldscscdName_ =
  ProjectsLocationsDataSetsConsentStoresConsentsDelete'
    { _pldscscdXgafv = Nothing
    , _pldscscdUploadProtocol = Nothing
    , _pldscscdAccessToken = Nothing
    , _pldscscdUploadType = Nothing
    , _pldscscdName = pPldscscdName_
    , _pldscscdCallback = Nothing
    }


-- | V1 error format.
pldscscdXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDelete (Maybe Xgafv)
pldscscdXgafv
  = lens _pldscscdXgafv
      (\ s a -> s{_pldscscdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscdUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDelete (Maybe Text)
pldscscdUploadProtocol
  = lens _pldscscdUploadProtocol
      (\ s a -> s{_pldscscdUploadProtocol = a})

-- | OAuth access token.
pldscscdAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDelete (Maybe Text)
pldscscdAccessToken
  = lens _pldscscdAccessToken
      (\ s a -> s{_pldscscdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscdUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDelete (Maybe Text)
pldscscdUploadType
  = lens _pldscscdUploadType
      (\ s a -> s{_pldscscdUploadType = a})

-- | Required. The resource name of the Consent to delete, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\`.
-- An INVALID_ARGUMENT error occurs if \`revision_id\` is specified in the
-- name.
pldscscdName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDelete Text
pldscscdName
  = lens _pldscscdName (\ s a -> s{_pldscscdName = a})

-- | JSONP
pldscscdCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDelete (Maybe Text)
pldscscdCallback
  = lens _pldscscdCallback
      (\ s a -> s{_pldscscdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsDelete
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsDelete'{..}
          = go _pldscscdName _pldscscdXgafv
              _pldscscdUploadProtocol
              _pldscscdAccessToken
              _pldscscdUploadType
              _pldscscdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsDeleteResource)
                      mempty
