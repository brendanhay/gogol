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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Attribute definition in the parent consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate
    , ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate

    -- * Request Lenses
    , pldscsadcParent
    , pldscsadcXgafv
    , pldscsadcUploadProtocol
    , pldscsadcAccessToken
    , pldscsadcUploadType
    , pldscsadcPayload
    , pldscsadcAttributeDefinitionId
    , pldscsadcCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate' request conforms to.
type ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "attributeDefinitions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "attributeDefinitionId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AttributeDefinition :>
                           Post '[JSON] AttributeDefinition

-- | Creates a new Attribute definition in the parent consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate' smart constructor.
data ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate'
    { _pldscsadcParent :: !Text
    , _pldscsadcXgafv :: !(Maybe Xgafv)
    , _pldscsadcUploadProtocol :: !(Maybe Text)
    , _pldscsadcAccessToken :: !(Maybe Text)
    , _pldscsadcUploadType :: !(Maybe Text)
    , _pldscsadcPayload :: !AttributeDefinition
    , _pldscsadcAttributeDefinitionId :: !(Maybe Text)
    , _pldscsadcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsadcParent'
--
-- * 'pldscsadcXgafv'
--
-- * 'pldscsadcUploadProtocol'
--
-- * 'pldscsadcAccessToken'
--
-- * 'pldscsadcUploadType'
--
-- * 'pldscsadcPayload'
--
-- * 'pldscsadcAttributeDefinitionId'
--
-- * 'pldscsadcCallback'
projectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate
    :: Text -- ^ 'pldscsadcParent'
    -> AttributeDefinition -- ^ 'pldscsadcPayload'
    -> ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate
projectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate pPldscsadcParent_ pPldscsadcPayload_ =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate'
    { _pldscsadcParent = pPldscsadcParent_
    , _pldscsadcXgafv = Nothing
    , _pldscsadcUploadProtocol = Nothing
    , _pldscsadcAccessToken = Nothing
    , _pldscsadcUploadType = Nothing
    , _pldscsadcPayload = pPldscsadcPayload_
    , _pldscsadcAttributeDefinitionId = Nothing
    , _pldscsadcCallback = Nothing
    }


-- | Required. The name of the consent store that this Attribute definition
-- belongs to.
pldscsadcParent :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate Text
pldscsadcParent
  = lens _pldscsadcParent
      (\ s a -> s{_pldscsadcParent = a})

-- | V1 error format.
pldscsadcXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate (Maybe Xgafv)
pldscsadcXgafv
  = lens _pldscsadcXgafv
      (\ s a -> s{_pldscsadcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsadcUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate (Maybe Text)
pldscsadcUploadProtocol
  = lens _pldscsadcUploadProtocol
      (\ s a -> s{_pldscsadcUploadProtocol = a})

-- | OAuth access token.
pldscsadcAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate (Maybe Text)
pldscsadcAccessToken
  = lens _pldscsadcAccessToken
      (\ s a -> s{_pldscsadcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsadcUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate (Maybe Text)
pldscsadcUploadType
  = lens _pldscsadcUploadType
      (\ s a -> s{_pldscsadcUploadType = a})

-- | Multipart request metadata.
pldscsadcPayload :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate AttributeDefinition
pldscsadcPayload
  = lens _pldscsadcPayload
      (\ s a -> s{_pldscsadcPayload = a})

-- | Required. The ID of the Attribute definition to create. The string must
-- match the following regex: \`_a-zA-Z{0,255}\` and must not be a reserved
-- keyword within the Common Expression Language as listed on
-- https:\/\/github.com\/google\/cel-spec\/blob\/master\/doc\/langdef.md.
pldscsadcAttributeDefinitionId :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate (Maybe Text)
pldscsadcAttributeDefinitionId
  = lens _pldscsadcAttributeDefinitionId
      (\ s a -> s{_pldscsadcAttributeDefinitionId = a})

-- | JSONP
pldscsadcCallback :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate (Maybe Text)
pldscsadcCallback
  = lens _pldscsadcCallback
      (\ s a -> s{_pldscsadcCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate
             = AttributeDefinition
        type Scopes
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreate'{..}
          = go _pldscsadcParent _pldscsadcXgafv
              _pldscsadcUploadProtocol
              _pldscsadcAccessToken
              _pldscsadcUploadType
              _pldscsadcAttributeDefinitionId
              _pldscsadcCallback
              (Just AltJSON)
              _pldscsadcPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreateResource)
                      mempty
