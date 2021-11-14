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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Attribute definition.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch
    , ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch

    -- * Request Lenses
    , pldscsadpXgafv
    , pldscsadpUploadProtocol
    , pldscsadpUpdateMask
    , pldscsadpAccessToken
    , pldscsadpUploadType
    , pldscsadpPayload
    , pldscsadpName
    , pldscsadpCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch' request conforms to.
type ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AttributeDefinition :>
                         Patch '[JSON] AttributeDefinition

-- | Updates the specified Attribute definition.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch' smart constructor.
data ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch'
    { _pldscsadpXgafv :: !(Maybe Xgafv)
    , _pldscsadpUploadProtocol :: !(Maybe Text)
    , _pldscsadpUpdateMask :: !(Maybe GFieldMask)
    , _pldscsadpAccessToken :: !(Maybe Text)
    , _pldscsadpUploadType :: !(Maybe Text)
    , _pldscsadpPayload :: !AttributeDefinition
    , _pldscsadpName :: !Text
    , _pldscsadpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsadpXgafv'
--
-- * 'pldscsadpUploadProtocol'
--
-- * 'pldscsadpUpdateMask'
--
-- * 'pldscsadpAccessToken'
--
-- * 'pldscsadpUploadType'
--
-- * 'pldscsadpPayload'
--
-- * 'pldscsadpName'
--
-- * 'pldscsadpCallback'
projectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch
    :: AttributeDefinition -- ^ 'pldscsadpPayload'
    -> Text -- ^ 'pldscsadpName'
    -> ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch
projectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch pPldscsadpPayload_ pPldscsadpName_ =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch'
    { _pldscsadpXgafv = Nothing
    , _pldscsadpUploadProtocol = Nothing
    , _pldscsadpUpdateMask = Nothing
    , _pldscsadpAccessToken = Nothing
    , _pldscsadpUploadType = Nothing
    , _pldscsadpPayload = pPldscsadpPayload_
    , _pldscsadpName = pPldscsadpName_
    , _pldscsadpCallback = Nothing
    }


-- | V1 error format.
pldscsadpXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch (Maybe Xgafv)
pldscsadpXgafv
  = lens _pldscsadpXgafv
      (\ s a -> s{_pldscsadpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsadpUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch (Maybe Text)
pldscsadpUploadProtocol
  = lens _pldscsadpUploadProtocol
      (\ s a -> s{_pldscsadpUploadProtocol = a})

-- | Required. The update mask that applies to the resource. For the
-- \`FieldMask\` definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask.
-- Only the \`description\`, \`allowed_values\`, \`consent_default_values\`
-- and \`data_mapping_default_value\` fields can be updated. The updated
-- \`allowed_values\` must contain all values from the previous
-- \`allowed_values\`.
pldscsadpUpdateMask :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch (Maybe GFieldMask)
pldscsadpUpdateMask
  = lens _pldscsadpUpdateMask
      (\ s a -> s{_pldscsadpUpdateMask = a})

-- | OAuth access token.
pldscsadpAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch (Maybe Text)
pldscsadpAccessToken
  = lens _pldscsadpAccessToken
      (\ s a -> s{_pldscsadpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsadpUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch (Maybe Text)
pldscsadpUploadType
  = lens _pldscsadpUploadType
      (\ s a -> s{_pldscsadpUploadType = a})

-- | Multipart request metadata.
pldscsadpPayload :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch AttributeDefinition
pldscsadpPayload
  = lens _pldscsadpPayload
      (\ s a -> s{_pldscsadpPayload = a})

-- | Resource name of the Attribute definition, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/attributeDefinitions\/{attribute_definition_id}\`.
-- Cannot be changed after creation.
pldscsadpName :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch Text
pldscsadpName
  = lens _pldscsadpName
      (\ s a -> s{_pldscsadpName = a})

-- | JSONP
pldscsadpCallback :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch (Maybe Text)
pldscsadpCallback
  = lens _pldscsadpCallback
      (\ s a -> s{_pldscsadpCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch
             = AttributeDefinition
        type Scopes
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatch'{..}
          = go _pldscsadpName _pldscsadpXgafv
              _pldscsadpUploadProtocol
              _pldscsadpUpdateMask
              _pldscsadpAccessToken
              _pldscsadpUploadType
              _pldscsadpCallback
              (Just AltJSON)
              _pldscsadpPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatchResource)
                      mempty
