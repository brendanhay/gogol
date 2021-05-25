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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates dataset metadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsPatch
    , ProjectsLocationsDataSetsPatch

    -- * Request Lenses
    , pldspXgafv
    , pldspUploadProtocol
    , pldspUpdateMask
    , pldspAccessToken
    , pldspUploadType
    , pldspPayload
    , pldspName
    , pldspCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.patch@ method which the
-- 'ProjectsLocationsDataSetsPatch' request conforms to.
type ProjectsLocationsDataSetsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DataSet :> Patch '[JSON] DataSet

-- | Updates dataset metadata.
--
-- /See:/ 'projectsLocationsDataSetsPatch' smart constructor.
data ProjectsLocationsDataSetsPatch =
  ProjectsLocationsDataSetsPatch'
    { _pldspXgafv :: !(Maybe Xgafv)
    , _pldspUploadProtocol :: !(Maybe Text)
    , _pldspUpdateMask :: !(Maybe GFieldMask)
    , _pldspAccessToken :: !(Maybe Text)
    , _pldspUploadType :: !(Maybe Text)
    , _pldspPayload :: !DataSet
    , _pldspName :: !Text
    , _pldspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldspXgafv'
--
-- * 'pldspUploadProtocol'
--
-- * 'pldspUpdateMask'
--
-- * 'pldspAccessToken'
--
-- * 'pldspUploadType'
--
-- * 'pldspPayload'
--
-- * 'pldspName'
--
-- * 'pldspCallback'
projectsLocationsDataSetsPatch
    :: DataSet -- ^ 'pldspPayload'
    -> Text -- ^ 'pldspName'
    -> ProjectsLocationsDataSetsPatch
projectsLocationsDataSetsPatch pPldspPayload_ pPldspName_ =
  ProjectsLocationsDataSetsPatch'
    { _pldspXgafv = Nothing
    , _pldspUploadProtocol = Nothing
    , _pldspUpdateMask = Nothing
    , _pldspAccessToken = Nothing
    , _pldspUploadType = Nothing
    , _pldspPayload = pPldspPayload_
    , _pldspName = pPldspName_
    , _pldspCallback = Nothing
    }


-- | V1 error format.
pldspXgafv :: Lens' ProjectsLocationsDataSetsPatch (Maybe Xgafv)
pldspXgafv
  = lens _pldspXgafv (\ s a -> s{_pldspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldspUploadProtocol :: Lens' ProjectsLocationsDataSetsPatch (Maybe Text)
pldspUploadProtocol
  = lens _pldspUploadProtocol
      (\ s a -> s{_pldspUploadProtocol = a})

-- | The update mask applies to the resource. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
pldspUpdateMask :: Lens' ProjectsLocationsDataSetsPatch (Maybe GFieldMask)
pldspUpdateMask
  = lens _pldspUpdateMask
      (\ s a -> s{_pldspUpdateMask = a})

-- | OAuth access token.
pldspAccessToken :: Lens' ProjectsLocationsDataSetsPatch (Maybe Text)
pldspAccessToken
  = lens _pldspAccessToken
      (\ s a -> s{_pldspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldspUploadType :: Lens' ProjectsLocationsDataSetsPatch (Maybe Text)
pldspUploadType
  = lens _pldspUploadType
      (\ s a -> s{_pldspUploadType = a})

-- | Multipart request metadata.
pldspPayload :: Lens' ProjectsLocationsDataSetsPatch DataSet
pldspPayload
  = lens _pldspPayload (\ s a -> s{_pldspPayload = a})

-- | Resource name of the dataset, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\`.
pldspName :: Lens' ProjectsLocationsDataSetsPatch Text
pldspName
  = lens _pldspName (\ s a -> s{_pldspName = a})

-- | JSONP
pldspCallback :: Lens' ProjectsLocationsDataSetsPatch (Maybe Text)
pldspCallback
  = lens _pldspCallback
      (\ s a -> s{_pldspCallback = a})

instance GoogleRequest ProjectsLocationsDataSetsPatch
         where
        type Rs ProjectsLocationsDataSetsPatch = DataSet
        type Scopes ProjectsLocationsDataSetsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDataSetsPatch'{..}
          = go _pldspName _pldspXgafv _pldspUploadProtocol
              _pldspUpdateMask
              _pldspAccessToken
              _pldspUploadType
              _pldspCallback
              (Just AltJSON)
              _pldspPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsPatchResource)
                      mempty
