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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an HL7v2 message.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresMessagesDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresMessagesDelete
    , ProjectsLocationsDataSetsHl7V2StoresMessagesDelete

    -- * Request Lenses
    , pldshvsmdXgafv
    , pldshvsmdUploadProtocol
    , pldshvsmdAccessToken
    , pldshvsmdUploadType
    , pldshvsmdName
    , pldshvsmdCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.delete@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresMessagesDelete' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresMessagesDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an HL7v2 message.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresMessagesDelete' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresMessagesDelete =
  ProjectsLocationsDataSetsHl7V2StoresMessagesDelete'
    { _pldshvsmdXgafv :: !(Maybe Xgafv)
    , _pldshvsmdUploadProtocol :: !(Maybe Text)
    , _pldshvsmdAccessToken :: !(Maybe Text)
    , _pldshvsmdUploadType :: !(Maybe Text)
    , _pldshvsmdName :: !Text
    , _pldshvsmdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresMessagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsmdXgafv'
--
-- * 'pldshvsmdUploadProtocol'
--
-- * 'pldshvsmdAccessToken'
--
-- * 'pldshvsmdUploadType'
--
-- * 'pldshvsmdName'
--
-- * 'pldshvsmdCallback'
projectsLocationsDataSetsHl7V2StoresMessagesDelete
    :: Text -- ^ 'pldshvsmdName'
    -> ProjectsLocationsDataSetsHl7V2StoresMessagesDelete
projectsLocationsDataSetsHl7V2StoresMessagesDelete pPldshvsmdName_ =
  ProjectsLocationsDataSetsHl7V2StoresMessagesDelete'
    { _pldshvsmdXgafv = Nothing
    , _pldshvsmdUploadProtocol = Nothing
    , _pldshvsmdAccessToken = Nothing
    , _pldshvsmdUploadType = Nothing
    , _pldshvsmdName = pPldshvsmdName_
    , _pldshvsmdCallback = Nothing
    }


-- | V1 error format.
pldshvsmdXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesDelete (Maybe Xgafv)
pldshvsmdXgafv
  = lens _pldshvsmdXgafv
      (\ s a -> s{_pldshvsmdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsmdUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesDelete (Maybe Text)
pldshvsmdUploadProtocol
  = lens _pldshvsmdUploadProtocol
      (\ s a -> s{_pldshvsmdUploadProtocol = a})

-- | OAuth access token.
pldshvsmdAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesDelete (Maybe Text)
pldshvsmdAccessToken
  = lens _pldshvsmdAccessToken
      (\ s a -> s{_pldshvsmdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsmdUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesDelete (Maybe Text)
pldshvsmdUploadType
  = lens _pldshvsmdUploadType
      (\ s a -> s{_pldshvsmdUploadType = a})

-- | The resource name of the HL7v2 message to delete.
pldshvsmdName :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesDelete Text
pldshvsmdName
  = lens _pldshvsmdName
      (\ s a -> s{_pldshvsmdName = a})

-- | JSONP
pldshvsmdCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesDelete (Maybe Text)
pldshvsmdCallback
  = lens _pldshvsmdCallback
      (\ s a -> s{_pldshvsmdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresMessagesDelete
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresMessagesDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresMessagesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresMessagesDelete'{..}
          = go _pldshvsmdName _pldshvsmdXgafv
              _pldshvsmdUploadProtocol
              _pldshvsmdAccessToken
              _pldshvsmdUploadType
              _pldshvsmdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresMessagesDeleteResource)
                      mempty
