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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Attribute definition. Fails if the Attribute
-- definition is referenced by any User data mapping, or the latest
-- revision of any Consent.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete
    , ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete

    -- * Request Lenses
    , pldscsaddXgafv
    , pldscsaddUploadProtocol
    , pldscsaddAccessToken
    , pldscsaddUploadType
    , pldscsaddName
    , pldscsaddCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete' request conforms to.
type ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified Attribute definition. Fails if the Attribute
-- definition is referenced by any User data mapping, or the latest
-- revision of any Consent.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete' smart constructor.
data ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete'
    { _pldscsaddXgafv :: !(Maybe Xgafv)
    , _pldscsaddUploadProtocol :: !(Maybe Text)
    , _pldscsaddAccessToken :: !(Maybe Text)
    , _pldscsaddUploadType :: !(Maybe Text)
    , _pldscsaddName :: !Text
    , _pldscsaddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsaddXgafv'
--
-- * 'pldscsaddUploadProtocol'
--
-- * 'pldscsaddAccessToken'
--
-- * 'pldscsaddUploadType'
--
-- * 'pldscsaddName'
--
-- * 'pldscsaddCallback'
projectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete
    :: Text -- ^ 'pldscsaddName'
    -> ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete
projectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete pPldscsaddName_ =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete'
    { _pldscsaddXgafv = Nothing
    , _pldscsaddUploadProtocol = Nothing
    , _pldscsaddAccessToken = Nothing
    , _pldscsaddUploadType = Nothing
    , _pldscsaddName = pPldscsaddName_
    , _pldscsaddCallback = Nothing
    }


-- | V1 error format.
pldscsaddXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete (Maybe Xgafv)
pldscsaddXgafv
  = lens _pldscsaddXgafv
      (\ s a -> s{_pldscsaddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsaddUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete (Maybe Text)
pldscsaddUploadProtocol
  = lens _pldscsaddUploadProtocol
      (\ s a -> s{_pldscsaddUploadProtocol = a})

-- | OAuth access token.
pldscsaddAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete (Maybe Text)
pldscsaddAccessToken
  = lens _pldscsaddAccessToken
      (\ s a -> s{_pldscsaddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsaddUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete (Maybe Text)
pldscsaddUploadType
  = lens _pldscsaddUploadType
      (\ s a -> s{_pldscsaddUploadType = a})

-- | Required. The resource name of the Attribute definition to delete. To
-- preserve referential integrity, Attribute definitions referenced by a
-- User data mapping or the latest revision of a Consent cannot be deleted.
pldscsaddName :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete Text
pldscsaddName
  = lens _pldscsaddName
      (\ s a -> s{_pldscsaddName = a})

-- | JSONP
pldscsaddCallback :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete (Maybe Text)
pldscsaddCallback
  = lens _pldscsaddCallback
      (\ s a -> s{_pldscsaddCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDelete'{..}
          = go _pldscsaddName _pldscsaddXgafv
              _pldscsaddUploadProtocol
              _pldscsaddAccessToken
              _pldscsaddUploadType
              _pldscsaddCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDeleteResource)
                      mempty
