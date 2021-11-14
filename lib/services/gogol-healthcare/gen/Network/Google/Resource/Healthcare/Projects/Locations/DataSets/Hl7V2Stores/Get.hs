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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified HL7v2 store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresGet
    , ProjectsLocationsDataSetsHl7V2StoresGet

    -- * Request Lenses
    , pldshvsgXgafv
    , pldshvsgUploadProtocol
    , pldshvsgAccessToken
    , pldshvsgUploadType
    , pldshvsgName
    , pldshvsgCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.get@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresGet' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Hl7V2Store

-- | Gets the specified HL7v2 store.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresGet' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresGet =
  ProjectsLocationsDataSetsHl7V2StoresGet'
    { _pldshvsgXgafv :: !(Maybe Xgafv)
    , _pldshvsgUploadProtocol :: !(Maybe Text)
    , _pldshvsgAccessToken :: !(Maybe Text)
    , _pldshvsgUploadType :: !(Maybe Text)
    , _pldshvsgName :: !Text
    , _pldshvsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsgXgafv'
--
-- * 'pldshvsgUploadProtocol'
--
-- * 'pldshvsgAccessToken'
--
-- * 'pldshvsgUploadType'
--
-- * 'pldshvsgName'
--
-- * 'pldshvsgCallback'
projectsLocationsDataSetsHl7V2StoresGet
    :: Text -- ^ 'pldshvsgName'
    -> ProjectsLocationsDataSetsHl7V2StoresGet
projectsLocationsDataSetsHl7V2StoresGet pPldshvsgName_ =
  ProjectsLocationsDataSetsHl7V2StoresGet'
    { _pldshvsgXgafv = Nothing
    , _pldshvsgUploadProtocol = Nothing
    , _pldshvsgAccessToken = Nothing
    , _pldshvsgUploadType = Nothing
    , _pldshvsgName = pPldshvsgName_
    , _pldshvsgCallback = Nothing
    }


-- | V1 error format.
pldshvsgXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresGet (Maybe Xgafv)
pldshvsgXgafv
  = lens _pldshvsgXgafv
      (\ s a -> s{_pldshvsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsgUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresGet (Maybe Text)
pldshvsgUploadProtocol
  = lens _pldshvsgUploadProtocol
      (\ s a -> s{_pldshvsgUploadProtocol = a})

-- | OAuth access token.
pldshvsgAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresGet (Maybe Text)
pldshvsgAccessToken
  = lens _pldshvsgAccessToken
      (\ s a -> s{_pldshvsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsgUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresGet (Maybe Text)
pldshvsgUploadType
  = lens _pldshvsgUploadType
      (\ s a -> s{_pldshvsgUploadType = a})

-- | The resource name of the HL7v2 store to get.
pldshvsgName :: Lens' ProjectsLocationsDataSetsHl7V2StoresGet Text
pldshvsgName
  = lens _pldshvsgName (\ s a -> s{_pldshvsgName = a})

-- | JSONP
pldshvsgCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresGet (Maybe Text)
pldshvsgCallback
  = lens _pldshvsgCallback
      (\ s a -> s{_pldshvsgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresGet
         where
        type Rs ProjectsLocationsDataSetsHl7V2StoresGet =
             Hl7V2Store
        type Scopes ProjectsLocationsDataSetsHl7V2StoresGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresGet'{..}
          = go _pldshvsgName _pldshvsgXgafv
              _pldshvsgUploadProtocol
              _pldshvsgAccessToken
              _pldshvsgUploadType
              _pldshvsgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresGetResource)
                      mempty
