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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the message. The contents of the message in Message.data and data
-- extracted from the contents such as Message.create_time cannot be
-- altered. Only the Message.labels field is allowed to be updated. The
-- labels in the request are merged with the existing set of labels.
-- Existing labels with the same keys are updated.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresMessagesPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresMessagesPatch
    , ProjectsLocationsDataSetsHl7V2StoresMessagesPatch

    -- * Request Lenses
    , pldshvsmpXgafv
    , pldshvsmpUploadProtocol
    , pldshvsmpUpdateMask
    , pldshvsmpAccessToken
    , pldshvsmpUploadType
    , pldshvsmpPayload
    , pldshvsmpName
    , pldshvsmpCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.patch@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresMessagesPatch' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresMessagesPatchResource
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
                       ReqBody '[JSON] Message :> Patch '[JSON] Message

-- | Update the message. The contents of the message in Message.data and data
-- extracted from the contents such as Message.create_time cannot be
-- altered. Only the Message.labels field is allowed to be updated. The
-- labels in the request are merged with the existing set of labels.
-- Existing labels with the same keys are updated.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresMessagesPatch' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresMessagesPatch =
  ProjectsLocationsDataSetsHl7V2StoresMessagesPatch'
    { _pldshvsmpXgafv :: !(Maybe Xgafv)
    , _pldshvsmpUploadProtocol :: !(Maybe Text)
    , _pldshvsmpUpdateMask :: !(Maybe GFieldMask)
    , _pldshvsmpAccessToken :: !(Maybe Text)
    , _pldshvsmpUploadType :: !(Maybe Text)
    , _pldshvsmpPayload :: !Message
    , _pldshvsmpName :: !Text
    , _pldshvsmpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresMessagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsmpXgafv'
--
-- * 'pldshvsmpUploadProtocol'
--
-- * 'pldshvsmpUpdateMask'
--
-- * 'pldshvsmpAccessToken'
--
-- * 'pldshvsmpUploadType'
--
-- * 'pldshvsmpPayload'
--
-- * 'pldshvsmpName'
--
-- * 'pldshvsmpCallback'
projectsLocationsDataSetsHl7V2StoresMessagesPatch
    :: Message -- ^ 'pldshvsmpPayload'
    -> Text -- ^ 'pldshvsmpName'
    -> ProjectsLocationsDataSetsHl7V2StoresMessagesPatch
projectsLocationsDataSetsHl7V2StoresMessagesPatch pPldshvsmpPayload_ pPldshvsmpName_ =
  ProjectsLocationsDataSetsHl7V2StoresMessagesPatch'
    { _pldshvsmpXgafv = Nothing
    , _pldshvsmpUploadProtocol = Nothing
    , _pldshvsmpUpdateMask = Nothing
    , _pldshvsmpAccessToken = Nothing
    , _pldshvsmpUploadType = Nothing
    , _pldshvsmpPayload = pPldshvsmpPayload_
    , _pldshvsmpName = pPldshvsmpName_
    , _pldshvsmpCallback = Nothing
    }


-- | V1 error format.
pldshvsmpXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesPatch (Maybe Xgafv)
pldshvsmpXgafv
  = lens _pldshvsmpXgafv
      (\ s a -> s{_pldshvsmpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsmpUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesPatch (Maybe Text)
pldshvsmpUploadProtocol
  = lens _pldshvsmpUploadProtocol
      (\ s a -> s{_pldshvsmpUploadProtocol = a})

-- | The update mask applies to the resource. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
pldshvsmpUpdateMask :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesPatch (Maybe GFieldMask)
pldshvsmpUpdateMask
  = lens _pldshvsmpUpdateMask
      (\ s a -> s{_pldshvsmpUpdateMask = a})

-- | OAuth access token.
pldshvsmpAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesPatch (Maybe Text)
pldshvsmpAccessToken
  = lens _pldshvsmpAccessToken
      (\ s a -> s{_pldshvsmpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsmpUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesPatch (Maybe Text)
pldshvsmpUploadType
  = lens _pldshvsmpUploadType
      (\ s a -> s{_pldshvsmpUploadType = a})

-- | Multipart request metadata.
pldshvsmpPayload :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesPatch Message
pldshvsmpPayload
  = lens _pldshvsmpPayload
      (\ s a -> s{_pldshvsmpPayload = a})

-- | Resource name of the Message, of the form
-- \`projects\/{project_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7_v2_store_id}\/messages\/{message_id}\`.
-- Assigned by the server.
pldshvsmpName :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesPatch Text
pldshvsmpName
  = lens _pldshvsmpName
      (\ s a -> s{_pldshvsmpName = a})

-- | JSONP
pldshvsmpCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesPatch (Maybe Text)
pldshvsmpCallback
  = lens _pldshvsmpCallback
      (\ s a -> s{_pldshvsmpCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresMessagesPatch
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresMessagesPatch
             = Message
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresMessagesPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresMessagesPatch'{..}
          = go _pldshvsmpName _pldshvsmpXgafv
              _pldshvsmpUploadProtocol
              _pldshvsmpUpdateMask
              _pldshvsmpAccessToken
              _pldshvsmpUploadType
              _pldshvsmpCallback
              (Just AltJSON)
              _pldshvsmpPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresMessagesPatchResource)
                      mempty
