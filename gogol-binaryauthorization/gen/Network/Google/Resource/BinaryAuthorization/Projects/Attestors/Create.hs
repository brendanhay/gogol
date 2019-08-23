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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an attestor, and returns a copy of the new attestor. Returns
-- NOT_FOUND if the project does not exist, INVALID_ARGUMENT if the request
-- is malformed, ALREADY_EXISTS if the attestor already exists.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.create@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Create
    (
    -- * REST Resource
      ProjectsAttestorsCreateResource

    -- * Creating a Request
    , projectsAttestorsCreate
    , ProjectsAttestorsCreate

    -- * Request Lenses
    , pacParent
    , pacXgafv
    , pacUploadProtocol
    , pacAccessToken
    , pacUploadType
    , pacPayload
    , pacAttestorId
    , pacCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.create@ method which the
-- 'ProjectsAttestorsCreate' request conforms to.
type ProjectsAttestorsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "attestors" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "attestorId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Attestor :> Post '[JSON] Attestor

-- | Creates an attestor, and returns a copy of the new attestor. Returns
-- NOT_FOUND if the project does not exist, INVALID_ARGUMENT if the request
-- is malformed, ALREADY_EXISTS if the attestor already exists.
--
-- /See:/ 'projectsAttestorsCreate' smart constructor.
data ProjectsAttestorsCreate =
  ProjectsAttestorsCreate'
    { _pacParent         :: !Text
    , _pacXgafv          :: !(Maybe Xgafv)
    , _pacUploadProtocol :: !(Maybe Text)
    , _pacAccessToken    :: !(Maybe Text)
    , _pacUploadType     :: !(Maybe Text)
    , _pacPayload        :: !Attestor
    , _pacAttestorId     :: !(Maybe Text)
    , _pacCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAttestorsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pacParent'
--
-- * 'pacXgafv'
--
-- * 'pacUploadProtocol'
--
-- * 'pacAccessToken'
--
-- * 'pacUploadType'
--
-- * 'pacPayload'
--
-- * 'pacAttestorId'
--
-- * 'pacCallback'
projectsAttestorsCreate
    :: Text -- ^ 'pacParent'
    -> Attestor -- ^ 'pacPayload'
    -> ProjectsAttestorsCreate
projectsAttestorsCreate pPacParent_ pPacPayload_ =
  ProjectsAttestorsCreate'
    { _pacParent = pPacParent_
    , _pacXgafv = Nothing
    , _pacUploadProtocol = Nothing
    , _pacAccessToken = Nothing
    , _pacUploadType = Nothing
    , _pacPayload = pPacPayload_
    , _pacAttestorId = Nothing
    , _pacCallback = Nothing
    }


-- | Required. The parent of this attestor.
pacParent :: Lens' ProjectsAttestorsCreate Text
pacParent
  = lens _pacParent (\ s a -> s{_pacParent = a})

-- | V1 error format.
pacXgafv :: Lens' ProjectsAttestorsCreate (Maybe Xgafv)
pacXgafv = lens _pacXgafv (\ s a -> s{_pacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pacUploadProtocol :: Lens' ProjectsAttestorsCreate (Maybe Text)
pacUploadProtocol
  = lens _pacUploadProtocol
      (\ s a -> s{_pacUploadProtocol = a})

-- | OAuth access token.
pacAccessToken :: Lens' ProjectsAttestorsCreate (Maybe Text)
pacAccessToken
  = lens _pacAccessToken
      (\ s a -> s{_pacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pacUploadType :: Lens' ProjectsAttestorsCreate (Maybe Text)
pacUploadType
  = lens _pacUploadType
      (\ s a -> s{_pacUploadType = a})

-- | Multipart request metadata.
pacPayload :: Lens' ProjectsAttestorsCreate Attestor
pacPayload
  = lens _pacPayload (\ s a -> s{_pacPayload = a})

-- | Required. The attestors ID.
pacAttestorId :: Lens' ProjectsAttestorsCreate (Maybe Text)
pacAttestorId
  = lens _pacAttestorId
      (\ s a -> s{_pacAttestorId = a})

-- | JSONP
pacCallback :: Lens' ProjectsAttestorsCreate (Maybe Text)
pacCallback
  = lens _pacCallback (\ s a -> s{_pacCallback = a})

instance GoogleRequest ProjectsAttestorsCreate where
        type Rs ProjectsAttestorsCreate = Attestor
        type Scopes ProjectsAttestorsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsAttestorsCreate'{..}
          = go _pacParent _pacXgafv _pacUploadProtocol
              _pacAccessToken
              _pacUploadType
              _pacAttestorId
              _pacCallback
              (Just AltJSON)
              _pacPayload
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAttestorsCreateResource)
                      mempty
