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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a message and sends a notification to the Cloud Pub\/Sub topic.
-- If configured, the MLLP adapter listens to messages created by this
-- method and sends those back to the hospital. A successful response
-- indicates the message has been persisted to storage and a Cloud Pub\/Sub
-- notification has been sent. Sending to the hospital by the MLLP adapter
-- happens asynchronously.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresMessagesCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresMessagesCreate
    , ProjectsLocationsDataSetsHl7V2StoresMessagesCreate

    -- * Request Lenses
    , pldshvsmcParent
    , pldshvsmcXgafv
    , pldshvsmcUploadProtocol
    , pldshvsmcAccessToken
    , pldshvsmcUploadType
    , pldshvsmcPayload
    , pldshvsmcCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.create@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresMessagesCreate' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresMessagesCreateResource
     =
     "v1beta1" :>
       Capture "parent" Text :>
         "messages" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateMessageRequest :>
                         Post '[JSON] Message

-- | Creates a message and sends a notification to the Cloud Pub\/Sub topic.
-- If configured, the MLLP adapter listens to messages created by this
-- method and sends those back to the hospital. A successful response
-- indicates the message has been persisted to storage and a Cloud Pub\/Sub
-- notification has been sent. Sending to the hospital by the MLLP adapter
-- happens asynchronously.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresMessagesCreate' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresMessagesCreate =
  ProjectsLocationsDataSetsHl7V2StoresMessagesCreate'
    { _pldshvsmcParent         :: !Text
    , _pldshvsmcXgafv          :: !(Maybe Xgafv)
    , _pldshvsmcUploadProtocol :: !(Maybe Text)
    , _pldshvsmcAccessToken    :: !(Maybe Text)
    , _pldshvsmcUploadType     :: !(Maybe Text)
    , _pldshvsmcPayload        :: !CreateMessageRequest
    , _pldshvsmcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresMessagesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsmcParent'
--
-- * 'pldshvsmcXgafv'
--
-- * 'pldshvsmcUploadProtocol'
--
-- * 'pldshvsmcAccessToken'
--
-- * 'pldshvsmcUploadType'
--
-- * 'pldshvsmcPayload'
--
-- * 'pldshvsmcCallback'
projectsLocationsDataSetsHl7V2StoresMessagesCreate
    :: Text -- ^ 'pldshvsmcParent'
    -> CreateMessageRequest -- ^ 'pldshvsmcPayload'
    -> ProjectsLocationsDataSetsHl7V2StoresMessagesCreate
projectsLocationsDataSetsHl7V2StoresMessagesCreate pPldshvsmcParent_ pPldshvsmcPayload_ =
  ProjectsLocationsDataSetsHl7V2StoresMessagesCreate'
    { _pldshvsmcParent = pPldshvsmcParent_
    , _pldshvsmcXgafv = Nothing
    , _pldshvsmcUploadProtocol = Nothing
    , _pldshvsmcAccessToken = Nothing
    , _pldshvsmcUploadType = Nothing
    , _pldshvsmcPayload = pPldshvsmcPayload_
    , _pldshvsmcCallback = Nothing
    }


-- | The name of the dataset this message belongs to.
pldshvsmcParent :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesCreate Text
pldshvsmcParent
  = lens _pldshvsmcParent
      (\ s a -> s{_pldshvsmcParent = a})

-- | V1 error format.
pldshvsmcXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesCreate (Maybe Xgafv)
pldshvsmcXgafv
  = lens _pldshvsmcXgafv
      (\ s a -> s{_pldshvsmcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsmcUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesCreate (Maybe Text)
pldshvsmcUploadProtocol
  = lens _pldshvsmcUploadProtocol
      (\ s a -> s{_pldshvsmcUploadProtocol = a})

-- | OAuth access token.
pldshvsmcAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesCreate (Maybe Text)
pldshvsmcAccessToken
  = lens _pldshvsmcAccessToken
      (\ s a -> s{_pldshvsmcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsmcUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesCreate (Maybe Text)
pldshvsmcUploadType
  = lens _pldshvsmcUploadType
      (\ s a -> s{_pldshvsmcUploadType = a})

-- | Multipart request metadata.
pldshvsmcPayload :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesCreate CreateMessageRequest
pldshvsmcPayload
  = lens _pldshvsmcPayload
      (\ s a -> s{_pldshvsmcPayload = a})

-- | JSONP
pldshvsmcCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesCreate (Maybe Text)
pldshvsmcCallback
  = lens _pldshvsmcCallback
      (\ s a -> s{_pldshvsmcCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresMessagesCreate
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresMessagesCreate
             = Message
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresMessagesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresMessagesCreate'{..}
          = go _pldshvsmcParent _pldshvsmcXgafv
              _pldshvsmcUploadProtocol
              _pldshvsmcAccessToken
              _pldshvsmcUploadType
              _pldshvsmcCallback
              (Just AltJSON)
              _pldshvsmcPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresMessagesCreateResource)
                      mempty
