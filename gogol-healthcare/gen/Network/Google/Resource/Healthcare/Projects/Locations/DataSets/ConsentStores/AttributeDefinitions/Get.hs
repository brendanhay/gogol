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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified Attribute definition.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresAttributeDefinitionsGet
    , ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet

    -- * Request Lenses
    , pldscsadgXgafv
    , pldscsadgUploadProtocol
    , pldscsadgAccessToken
    , pldscsadgUploadType
    , pldscsadgName
    , pldscsadgCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet' request conforms to.
type ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AttributeDefinition

-- | Gets the specified Attribute definition.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresAttributeDefinitionsGet' smart constructor.
data ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet'
    { _pldscsadgXgafv :: !(Maybe Xgafv)
    , _pldscsadgUploadProtocol :: !(Maybe Text)
    , _pldscsadgAccessToken :: !(Maybe Text)
    , _pldscsadgUploadType :: !(Maybe Text)
    , _pldscsadgName :: !Text
    , _pldscsadgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsadgXgafv'
--
-- * 'pldscsadgUploadProtocol'
--
-- * 'pldscsadgAccessToken'
--
-- * 'pldscsadgUploadType'
--
-- * 'pldscsadgName'
--
-- * 'pldscsadgCallback'
projectsLocationsDataSetsConsentStoresAttributeDefinitionsGet
    :: Text -- ^ 'pldscsadgName'
    -> ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet
projectsLocationsDataSetsConsentStoresAttributeDefinitionsGet pPldscsadgName_ =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet'
    { _pldscsadgXgafv = Nothing
    , _pldscsadgUploadProtocol = Nothing
    , _pldscsadgAccessToken = Nothing
    , _pldscsadgUploadType = Nothing
    , _pldscsadgName = pPldscsadgName_
    , _pldscsadgCallback = Nothing
    }


-- | V1 error format.
pldscsadgXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet (Maybe Xgafv)
pldscsadgXgafv
  = lens _pldscsadgXgafv
      (\ s a -> s{_pldscsadgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsadgUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet (Maybe Text)
pldscsadgUploadProtocol
  = lens _pldscsadgUploadProtocol
      (\ s a -> s{_pldscsadgUploadProtocol = a})

-- | OAuth access token.
pldscsadgAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet (Maybe Text)
pldscsadgAccessToken
  = lens _pldscsadgAccessToken
      (\ s a -> s{_pldscsadgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsadgUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet (Maybe Text)
pldscsadgUploadType
  = lens _pldscsadgUploadType
      (\ s a -> s{_pldscsadgUploadType = a})

-- | Required. The resource name of the Attribute definition to get.
pldscsadgName :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet Text
pldscsadgName
  = lens _pldscsadgName
      (\ s a -> s{_pldscsadgName = a})

-- | JSONP
pldscsadgCallback :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet (Maybe Text)
pldscsadgCallback
  = lens _pldscsadgCallback
      (\ s a -> s{_pldscsadgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet
             = AttributeDefinition
        type Scopes
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGet'{..}
          = go _pldscsadgName _pldscsadgXgafv
              _pldscsadgUploadProtocol
              _pldscsadgAccessToken
              _pldscsadgUploadType
              _pldscsadgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGetResource)
                      mempty
