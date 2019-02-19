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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified HL7v2 store and removes all messages that are
-- contained within it.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresDelete
    , ProjectsLocationsDataSetsHl7V2StoresDelete

    -- * Request Lenses
    , pldshvsdXgafv
    , pldshvsdUploadProtocol
    , pldshvsdAccessToken
    , pldshvsdUploadType
    , pldshvsdName
    , pldshvsdCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.delete@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresDelete' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresDeleteResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified HL7v2 store and removes all messages that are
-- contained within it.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresDelete' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresDelete =
  ProjectsLocationsDataSetsHl7V2StoresDelete'
    { _pldshvsdXgafv          :: !(Maybe Xgafv)
    , _pldshvsdUploadProtocol :: !(Maybe Text)
    , _pldshvsdAccessToken    :: !(Maybe Text)
    , _pldshvsdUploadType     :: !(Maybe Text)
    , _pldshvsdName           :: !Text
    , _pldshvsdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsdXgafv'
--
-- * 'pldshvsdUploadProtocol'
--
-- * 'pldshvsdAccessToken'
--
-- * 'pldshvsdUploadType'
--
-- * 'pldshvsdName'
--
-- * 'pldshvsdCallback'
projectsLocationsDataSetsHl7V2StoresDelete
    :: Text -- ^ 'pldshvsdName'
    -> ProjectsLocationsDataSetsHl7V2StoresDelete
projectsLocationsDataSetsHl7V2StoresDelete pPldshvsdName_ =
  ProjectsLocationsDataSetsHl7V2StoresDelete'
    { _pldshvsdXgafv = Nothing
    , _pldshvsdUploadProtocol = Nothing
    , _pldshvsdAccessToken = Nothing
    , _pldshvsdUploadType = Nothing
    , _pldshvsdName = pPldshvsdName_
    , _pldshvsdCallback = Nothing
    }

-- | V1 error format.
pldshvsdXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresDelete (Maybe Xgafv)
pldshvsdXgafv
  = lens _pldshvsdXgafv
      (\ s a -> s{_pldshvsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsdUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresDelete (Maybe Text)
pldshvsdUploadProtocol
  = lens _pldshvsdUploadProtocol
      (\ s a -> s{_pldshvsdUploadProtocol = a})

-- | OAuth access token.
pldshvsdAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresDelete (Maybe Text)
pldshvsdAccessToken
  = lens _pldshvsdAccessToken
      (\ s a -> s{_pldshvsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsdUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresDelete (Maybe Text)
pldshvsdUploadType
  = lens _pldshvsdUploadType
      (\ s a -> s{_pldshvsdUploadType = a})

-- | The resource name of the HL7v2 store to delete.
pldshvsdName :: Lens' ProjectsLocationsDataSetsHl7V2StoresDelete Text
pldshvsdName
  = lens _pldshvsdName (\ s a -> s{_pldshvsdName = a})

-- | JSONP
pldshvsdCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresDelete (Maybe Text)
pldshvsdCallback
  = lens _pldshvsdCallback
      (\ s a -> s{_pldshvsdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresDelete
         where
        type Rs ProjectsLocationsDataSetsHl7V2StoresDelete =
             Empty
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresDelete'{..}
          = go _pldshvsdName _pldshvsdXgafv
              _pldshvsdUploadProtocol
              _pldshvsdAccessToken
              _pldshvsdUploadType
              _pldshvsdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresDeleteResource)
                      mempty
