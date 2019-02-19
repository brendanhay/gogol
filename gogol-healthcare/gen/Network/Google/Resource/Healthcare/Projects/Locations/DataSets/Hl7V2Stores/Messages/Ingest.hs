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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Ingest
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Ingests a new HL7v2 message from the hospital and sends a notification
-- to the Cloud Pub\/Sub topic. Return is an HL7v2 ACK message if the
-- message was successfully stored. Otherwise an error is returned. If an
-- identical HL7v2 message is created twice only one resource is created on
-- the server and no error is reported.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Ingest
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresMessagesIngestResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresMessagesIngest
    , ProjectsLocationsDataSetsHl7V2StoresMessagesIngest

    -- * Request Lenses
    , pldshvsmiParent
    , pldshvsmiXgafv
    , pldshvsmiUploadProtocol
    , pldshvsmiAccessToken
    , pldshvsmiUploadType
    , pldshvsmiPayload
    , pldshvsmiCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresMessagesIngest' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresMessagesIngestResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "messages:ingest" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] IngestMessageRequest :>
                         Post '[JSON] IngestMessageResponse

-- | Ingests a new HL7v2 message from the hospital and sends a notification
-- to the Cloud Pub\/Sub topic. Return is an HL7v2 ACK message if the
-- message was successfully stored. Otherwise an error is returned. If an
-- identical HL7v2 message is created twice only one resource is created on
-- the server and no error is reported.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresMessagesIngest' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresMessagesIngest =
  ProjectsLocationsDataSetsHl7V2StoresMessagesIngest'
    { _pldshvsmiParent         :: !Text
    , _pldshvsmiXgafv          :: !(Maybe Xgafv)
    , _pldshvsmiUploadProtocol :: !(Maybe Text)
    , _pldshvsmiAccessToken    :: !(Maybe Text)
    , _pldshvsmiUploadType     :: !(Maybe Text)
    , _pldshvsmiPayload        :: !IngestMessageRequest
    , _pldshvsmiCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresMessagesIngest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsmiParent'
--
-- * 'pldshvsmiXgafv'
--
-- * 'pldshvsmiUploadProtocol'
--
-- * 'pldshvsmiAccessToken'
--
-- * 'pldshvsmiUploadType'
--
-- * 'pldshvsmiPayload'
--
-- * 'pldshvsmiCallback'
projectsLocationsDataSetsHl7V2StoresMessagesIngest
    :: Text -- ^ 'pldshvsmiParent'
    -> IngestMessageRequest -- ^ 'pldshvsmiPayload'
    -> ProjectsLocationsDataSetsHl7V2StoresMessagesIngest
projectsLocationsDataSetsHl7V2StoresMessagesIngest pPldshvsmiParent_ pPldshvsmiPayload_ =
  ProjectsLocationsDataSetsHl7V2StoresMessagesIngest'
    { _pldshvsmiParent = pPldshvsmiParent_
    , _pldshvsmiXgafv = Nothing
    , _pldshvsmiUploadProtocol = Nothing
    , _pldshvsmiAccessToken = Nothing
    , _pldshvsmiUploadType = Nothing
    , _pldshvsmiPayload = pPldshvsmiPayload_
    , _pldshvsmiCallback = Nothing
    }


-- | The name of the HL7v2 store this message belongs to.
pldshvsmiParent :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesIngest Text
pldshvsmiParent
  = lens _pldshvsmiParent
      (\ s a -> s{_pldshvsmiParent = a})

-- | V1 error format.
pldshvsmiXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesIngest (Maybe Xgafv)
pldshvsmiXgafv
  = lens _pldshvsmiXgafv
      (\ s a -> s{_pldshvsmiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsmiUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesIngest (Maybe Text)
pldshvsmiUploadProtocol
  = lens _pldshvsmiUploadProtocol
      (\ s a -> s{_pldshvsmiUploadProtocol = a})

-- | OAuth access token.
pldshvsmiAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesIngest (Maybe Text)
pldshvsmiAccessToken
  = lens _pldshvsmiAccessToken
      (\ s a -> s{_pldshvsmiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsmiUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesIngest (Maybe Text)
pldshvsmiUploadType
  = lens _pldshvsmiUploadType
      (\ s a -> s{_pldshvsmiUploadType = a})

-- | Multipart request metadata.
pldshvsmiPayload :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesIngest IngestMessageRequest
pldshvsmiPayload
  = lens _pldshvsmiPayload
      (\ s a -> s{_pldshvsmiPayload = a})

-- | JSONP
pldshvsmiCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesIngest (Maybe Text)
pldshvsmiCallback
  = lens _pldshvsmiCallback
      (\ s a -> s{_pldshvsmiCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresMessagesIngest
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresMessagesIngest
             = IngestMessageResponse
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresMessagesIngest
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresMessagesIngest'{..}
          = go _pldshvsmiParent _pldshvsmiXgafv
              _pldshvsmiUploadProtocol
              _pldshvsmiAccessToken
              _pldshvsmiUploadType
              _pldshvsmiCallback
              (Just AltJSON)
              _pldshvsmiPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresMessagesIngestResource)
                      mempty
