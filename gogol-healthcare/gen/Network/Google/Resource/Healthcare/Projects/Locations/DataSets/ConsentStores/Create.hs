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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new consent store in the parent dataset. Attempting to create
-- a consent store with the same ID as an existing store fails with an
-- ALREADY_EXISTS error.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresCreate
    , ProjectsLocationsDataSetsConsentStoresCreate

    -- * Request Lenses
    , pldscscParent
    , pldscscXgafv
    , pldscscUploadProtocol
    , pldscscAccessToken
    , pldscscUploadType
    , pldscscPayload
    , pldscscConsentStoreId
    , pldscscCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.create@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresCreate' request conforms to.
type ProjectsLocationsDataSetsConsentStoresCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "consentStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "consentStoreId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ConsentStore :>
                           Post '[JSON] ConsentStore

-- | Creates a new consent store in the parent dataset. Attempting to create
-- a consent store with the same ID as an existing store fails with an
-- ALREADY_EXISTS error.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresCreate' smart constructor.
data ProjectsLocationsDataSetsConsentStoresCreate =
  ProjectsLocationsDataSetsConsentStoresCreate'
    { _pldscscParent :: !Text
    , _pldscscXgafv :: !(Maybe Xgafv)
    , _pldscscUploadProtocol :: !(Maybe Text)
    , _pldscscAccessToken :: !(Maybe Text)
    , _pldscscUploadType :: !(Maybe Text)
    , _pldscscPayload :: !ConsentStore
    , _pldscscConsentStoreId :: !(Maybe Text)
    , _pldscscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscParent'
--
-- * 'pldscscXgafv'
--
-- * 'pldscscUploadProtocol'
--
-- * 'pldscscAccessToken'
--
-- * 'pldscscUploadType'
--
-- * 'pldscscPayload'
--
-- * 'pldscscConsentStoreId'
--
-- * 'pldscscCallback'
projectsLocationsDataSetsConsentStoresCreate
    :: Text -- ^ 'pldscscParent'
    -> ConsentStore -- ^ 'pldscscPayload'
    -> ProjectsLocationsDataSetsConsentStoresCreate
projectsLocationsDataSetsConsentStoresCreate pPldscscParent_ pPldscscPayload_ =
  ProjectsLocationsDataSetsConsentStoresCreate'
    { _pldscscParent = pPldscscParent_
    , _pldscscXgafv = Nothing
    , _pldscscUploadProtocol = Nothing
    , _pldscscAccessToken = Nothing
    , _pldscscUploadType = Nothing
    , _pldscscPayload = pPldscscPayload_
    , _pldscscConsentStoreId = Nothing
    , _pldscscCallback = Nothing
    }


-- | Required. The name of the dataset this consent store belongs to.
pldscscParent :: Lens' ProjectsLocationsDataSetsConsentStoresCreate Text
pldscscParent
  = lens _pldscscParent
      (\ s a -> s{_pldscscParent = a})

-- | V1 error format.
pldscscXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresCreate (Maybe Xgafv)
pldscscXgafv
  = lens _pldscscXgafv (\ s a -> s{_pldscscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresCreate (Maybe Text)
pldscscUploadProtocol
  = lens _pldscscUploadProtocol
      (\ s a -> s{_pldscscUploadProtocol = a})

-- | OAuth access token.
pldscscAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresCreate (Maybe Text)
pldscscAccessToken
  = lens _pldscscAccessToken
      (\ s a -> s{_pldscscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresCreate (Maybe Text)
pldscscUploadType
  = lens _pldscscUploadType
      (\ s a -> s{_pldscscUploadType = a})

-- | Multipart request metadata.
pldscscPayload :: Lens' ProjectsLocationsDataSetsConsentStoresCreate ConsentStore
pldscscPayload
  = lens _pldscscPayload
      (\ s a -> s{_pldscscPayload = a})

-- | Required. The ID of the consent store to create. The string must match
-- the following regex: \`[\\p{L}\\p{N}_\\-\\.]{1,256}\`. Cannot be changed
-- after creation.
pldscscConsentStoreId :: Lens' ProjectsLocationsDataSetsConsentStoresCreate (Maybe Text)
pldscscConsentStoreId
  = lens _pldscscConsentStoreId
      (\ s a -> s{_pldscscConsentStoreId = a})

-- | JSONP
pldscscCallback :: Lens' ProjectsLocationsDataSetsConsentStoresCreate (Maybe Text)
pldscscCallback
  = lens _pldscscCallback
      (\ s a -> s{_pldscscCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresCreate
         where
        type Rs ProjectsLocationsDataSetsConsentStoresCreate
             = ConsentStore
        type Scopes
               ProjectsLocationsDataSetsConsentStoresCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresCreate'{..}
          = go _pldscscParent _pldscscXgafv
              _pldscscUploadProtocol
              _pldscscAccessToken
              _pldscscUploadType
              _pldscscConsentStoreId
              _pldscscCallback
              (Just AltJSON)
              _pldscscPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresCreateResource)
                      mempty
