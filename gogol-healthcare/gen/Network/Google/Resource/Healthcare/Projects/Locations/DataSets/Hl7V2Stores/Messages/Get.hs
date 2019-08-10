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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an HL7v2 message.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresMessagesGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresMessagesGet
    , ProjectsLocationsDataSetsHl7V2StoresMessagesGet

    -- * Request Lenses
    , pldshvsmgXgafv
    , pldshvsmgUploadProtocol
    , pldshvsmgAccessToken
    , pldshvsmgUploadType
    , pldshvsmgName
    , pldshvsmgView
    , pldshvsmgCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.get@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresMessagesGet' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresMessagesGetResource
     =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "view" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Message

-- | Gets an HL7v2 message.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresMessagesGet' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresMessagesGet =
  ProjectsLocationsDataSetsHl7V2StoresMessagesGet'
    { _pldshvsmgXgafv          :: !(Maybe Xgafv)
    , _pldshvsmgUploadProtocol :: !(Maybe Text)
    , _pldshvsmgAccessToken    :: !(Maybe Text)
    , _pldshvsmgUploadType     :: !(Maybe Text)
    , _pldshvsmgName           :: !Text
    , _pldshvsmgView           :: !(Maybe Text)
    , _pldshvsmgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresMessagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsmgXgafv'
--
-- * 'pldshvsmgUploadProtocol'
--
-- * 'pldshvsmgAccessToken'
--
-- * 'pldshvsmgUploadType'
--
-- * 'pldshvsmgName'
--
-- * 'pldshvsmgView'
--
-- * 'pldshvsmgCallback'
projectsLocationsDataSetsHl7V2StoresMessagesGet
    :: Text -- ^ 'pldshvsmgName'
    -> ProjectsLocationsDataSetsHl7V2StoresMessagesGet
projectsLocationsDataSetsHl7V2StoresMessagesGet pPldshvsmgName_ =
  ProjectsLocationsDataSetsHl7V2StoresMessagesGet'
    { _pldshvsmgXgafv = Nothing
    , _pldshvsmgUploadProtocol = Nothing
    , _pldshvsmgAccessToken = Nothing
    , _pldshvsmgUploadType = Nothing
    , _pldshvsmgName = pPldshvsmgName_
    , _pldshvsmgView = Nothing
    , _pldshvsmgCallback = Nothing
    }


-- | V1 error format.
pldshvsmgXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesGet (Maybe Xgafv)
pldshvsmgXgafv
  = lens _pldshvsmgXgafv
      (\ s a -> s{_pldshvsmgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsmgUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesGet (Maybe Text)
pldshvsmgUploadProtocol
  = lens _pldshvsmgUploadProtocol
      (\ s a -> s{_pldshvsmgUploadProtocol = a})

-- | OAuth access token.
pldshvsmgAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesGet (Maybe Text)
pldshvsmgAccessToken
  = lens _pldshvsmgAccessToken
      (\ s a -> s{_pldshvsmgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsmgUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesGet (Maybe Text)
pldshvsmgUploadType
  = lens _pldshvsmgUploadType
      (\ s a -> s{_pldshvsmgUploadType = a})

-- | The resource name of the HL7v2 message to retrieve.
pldshvsmgName :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesGet Text
pldshvsmgName
  = lens _pldshvsmgName
      (\ s a -> s{_pldshvsmgName = a})

-- | Specifies which parts of the Message resource should be returned in the
-- response.
pldshvsmgView :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesGet (Maybe Text)
pldshvsmgView
  = lens _pldshvsmgView
      (\ s a -> s{_pldshvsmgView = a})

-- | JSONP
pldshvsmgCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesGet (Maybe Text)
pldshvsmgCallback
  = lens _pldshvsmgCallback
      (\ s a -> s{_pldshvsmgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresMessagesGet
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresMessagesGet
             = Message
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresMessagesGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresMessagesGet'{..}
          = go _pldshvsmgName _pldshvsmgXgafv
              _pldshvsmgUploadProtocol
              _pldshvsmgAccessToken
              _pldshvsmgUploadType
              _pldshvsmgView
              _pldshvsmgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresMessagesGetResource)
                      mempty
