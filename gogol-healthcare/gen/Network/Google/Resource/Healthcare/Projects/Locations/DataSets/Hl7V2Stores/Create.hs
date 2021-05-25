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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new HL7v2 store within the parent dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresCreate
    , ProjectsLocationsDataSetsHl7V2StoresCreate

    -- * Request Lenses
    , pldshvscParent
    , pldshvscXgafv
    , pldshvscUploadProtocol
    , pldshvscAccessToken
    , pldshvscUploadType
    , pldshvscPayload
    , pldshvscHl7V2StoreId
    , pldshvscCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.create@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresCreate' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "hl7V2Stores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "hl7V2StoreId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Hl7V2Store :> Post '[JSON] Hl7V2Store

-- | Creates a new HL7v2 store within the parent dataset.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresCreate' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresCreate =
  ProjectsLocationsDataSetsHl7V2StoresCreate'
    { _pldshvscParent :: !Text
    , _pldshvscXgafv :: !(Maybe Xgafv)
    , _pldshvscUploadProtocol :: !(Maybe Text)
    , _pldshvscAccessToken :: !(Maybe Text)
    , _pldshvscUploadType :: !(Maybe Text)
    , _pldshvscPayload :: !Hl7V2Store
    , _pldshvscHl7V2StoreId :: !(Maybe Text)
    , _pldshvscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvscParent'
--
-- * 'pldshvscXgafv'
--
-- * 'pldshvscUploadProtocol'
--
-- * 'pldshvscAccessToken'
--
-- * 'pldshvscUploadType'
--
-- * 'pldshvscPayload'
--
-- * 'pldshvscHl7V2StoreId'
--
-- * 'pldshvscCallback'
projectsLocationsDataSetsHl7V2StoresCreate
    :: Text -- ^ 'pldshvscParent'
    -> Hl7V2Store -- ^ 'pldshvscPayload'
    -> ProjectsLocationsDataSetsHl7V2StoresCreate
projectsLocationsDataSetsHl7V2StoresCreate pPldshvscParent_ pPldshvscPayload_ =
  ProjectsLocationsDataSetsHl7V2StoresCreate'
    { _pldshvscParent = pPldshvscParent_
    , _pldshvscXgafv = Nothing
    , _pldshvscUploadProtocol = Nothing
    , _pldshvscAccessToken = Nothing
    , _pldshvscUploadType = Nothing
    , _pldshvscPayload = pPldshvscPayload_
    , _pldshvscHl7V2StoreId = Nothing
    , _pldshvscCallback = Nothing
    }


-- | The name of the dataset this HL7v2 store belongs to.
pldshvscParent :: Lens' ProjectsLocationsDataSetsHl7V2StoresCreate Text
pldshvscParent
  = lens _pldshvscParent
      (\ s a -> s{_pldshvscParent = a})

-- | V1 error format.
pldshvscXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresCreate (Maybe Xgafv)
pldshvscXgafv
  = lens _pldshvscXgafv
      (\ s a -> s{_pldshvscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvscUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresCreate (Maybe Text)
pldshvscUploadProtocol
  = lens _pldshvscUploadProtocol
      (\ s a -> s{_pldshvscUploadProtocol = a})

-- | OAuth access token.
pldshvscAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresCreate (Maybe Text)
pldshvscAccessToken
  = lens _pldshvscAccessToken
      (\ s a -> s{_pldshvscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvscUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresCreate (Maybe Text)
pldshvscUploadType
  = lens _pldshvscUploadType
      (\ s a -> s{_pldshvscUploadType = a})

-- | Multipart request metadata.
pldshvscPayload :: Lens' ProjectsLocationsDataSetsHl7V2StoresCreate Hl7V2Store
pldshvscPayload
  = lens _pldshvscPayload
      (\ s a -> s{_pldshvscPayload = a})

-- | The ID of the HL7v2 store that is being created. The string must match
-- the following regex: \`[\\p{L}\\p{N}_\\-\\.]{1,256}\`.
pldshvscHl7V2StoreId :: Lens' ProjectsLocationsDataSetsHl7V2StoresCreate (Maybe Text)
pldshvscHl7V2StoreId
  = lens _pldshvscHl7V2StoreId
      (\ s a -> s{_pldshvscHl7V2StoreId = a})

-- | JSONP
pldshvscCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresCreate (Maybe Text)
pldshvscCallback
  = lens _pldshvscCallback
      (\ s a -> s{_pldshvscCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresCreate
         where
        type Rs ProjectsLocationsDataSetsHl7V2StoresCreate =
             Hl7V2Store
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresCreate'{..}
          = go _pldshvscParent _pldshvscXgafv
              _pldshvscUploadProtocol
              _pldshvscAccessToken
              _pldshvscUploadType
              _pldshvscHl7V2StoreId
              _pldshvscCallback
              (Just AltJSON)
              _pldshvscPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresCreateResource)
                      mempty
