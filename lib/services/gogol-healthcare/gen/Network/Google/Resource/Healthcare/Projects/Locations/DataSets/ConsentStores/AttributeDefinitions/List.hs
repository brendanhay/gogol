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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Attribute definitions in the specified consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsListResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresAttributeDefinitionsList
    , ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList

    -- * Request Lenses
    , pldscsadlParent
    , pldscsadlXgafv
    , pldscsadlUploadProtocol
    , pldscsadlAccessToken
    , pldscsadlUploadType
    , pldscsadlFilter
    , pldscsadlPageToken
    , pldscsadlPageSize
    , pldscsadlCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList' request conforms to.
type ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "attributeDefinitions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListAttributeDefinitionsResponse

-- | Lists the Attribute definitions in the specified consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresAttributeDefinitionsList' smart constructor.
data ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList'
    { _pldscsadlParent :: !Text
    , _pldscsadlXgafv :: !(Maybe Xgafv)
    , _pldscsadlUploadProtocol :: !(Maybe Text)
    , _pldscsadlAccessToken :: !(Maybe Text)
    , _pldscsadlUploadType :: !(Maybe Text)
    , _pldscsadlFilter :: !(Maybe Text)
    , _pldscsadlPageToken :: !(Maybe Text)
    , _pldscsadlPageSize :: !(Maybe (Textual Int32))
    , _pldscsadlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsadlParent'
--
-- * 'pldscsadlXgafv'
--
-- * 'pldscsadlUploadProtocol'
--
-- * 'pldscsadlAccessToken'
--
-- * 'pldscsadlUploadType'
--
-- * 'pldscsadlFilter'
--
-- * 'pldscsadlPageToken'
--
-- * 'pldscsadlPageSize'
--
-- * 'pldscsadlCallback'
projectsLocationsDataSetsConsentStoresAttributeDefinitionsList
    :: Text -- ^ 'pldscsadlParent'
    -> ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList
projectsLocationsDataSetsConsentStoresAttributeDefinitionsList pPldscsadlParent_ =
  ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList'
    { _pldscsadlParent = pPldscsadlParent_
    , _pldscsadlXgafv = Nothing
    , _pldscsadlUploadProtocol = Nothing
    , _pldscsadlAccessToken = Nothing
    , _pldscsadlUploadType = Nothing
    , _pldscsadlFilter = Nothing
    , _pldscsadlPageToken = Nothing
    , _pldscsadlPageSize = Nothing
    , _pldscsadlCallback = Nothing
    }


-- | Required. Name of the consent store to retrieve Attribute definitions
-- from.
pldscsadlParent :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList Text
pldscsadlParent
  = lens _pldscsadlParent
      (\ s a -> s{_pldscsadlParent = a})

-- | V1 error format.
pldscsadlXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList (Maybe Xgafv)
pldscsadlXgafv
  = lens _pldscsadlXgafv
      (\ s a -> s{_pldscsadlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsadlUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList (Maybe Text)
pldscsadlUploadProtocol
  = lens _pldscsadlUploadProtocol
      (\ s a -> s{_pldscsadlUploadProtocol = a})

-- | OAuth access token.
pldscsadlAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList (Maybe Text)
pldscsadlAccessToken
  = lens _pldscsadlAccessToken
      (\ s a -> s{_pldscsadlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsadlUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList (Maybe Text)
pldscsadlUploadType
  = lens _pldscsadlUploadType
      (\ s a -> s{_pldscsadlUploadType = a})

-- | Optional. Restricts the attributes returned to those matching a filter.
-- The only field available for filtering is \`category\`. For example,
-- \`filter=category=\\\"REQUEST\\\"\`.
pldscsadlFilter :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList (Maybe Text)
pldscsadlFilter
  = lens _pldscsadlFilter
      (\ s a -> s{_pldscsadlFilter = a})

-- | Optional. Token to retrieve the next page of results or empty to get the
-- first page.
pldscsadlPageToken :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList (Maybe Text)
pldscsadlPageToken
  = lens _pldscsadlPageToken
      (\ s a -> s{_pldscsadlPageToken = a})

-- | Optional. Limit on the number of Attribute definitions to return in a
-- single response. If not specified, 100 is used. May not be larger than
-- 1000.
pldscsadlPageSize :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList (Maybe Int32)
pldscsadlPageSize
  = lens _pldscsadlPageSize
      (\ s a -> s{_pldscsadlPageSize = a})
      . mapping _Coerce

-- | JSONP
pldscsadlCallback :: Lens' ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList (Maybe Text)
pldscsadlCallback
  = lens _pldscsadlCallback
      (\ s a -> s{_pldscsadlCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList
             = ListAttributeDefinitionsResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsList'{..}
          = go _pldscsadlParent _pldscsadlXgafv
              _pldscsadlUploadProtocol
              _pldscsadlAccessToken
              _pldscsadlUploadType
              _pldscsadlFilter
              _pldscsadlPageToken
              _pldscsadlPageSize
              _pldscsadlCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsListResource)
                      mempty
