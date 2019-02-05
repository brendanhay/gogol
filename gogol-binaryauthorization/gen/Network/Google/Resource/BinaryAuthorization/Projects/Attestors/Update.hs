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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.update@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Update
    (
    -- * REST Resource
      ProjectsAttestorsUpdateResource

    -- * Creating a Request
    , projectsAttestorsUpdate
    , ProjectsAttestorsUpdate

    -- * Request Lenses
    , pauXgafv
    , pauUploadProtocol
    , pauAccessToken
    , pauUploadType
    , pauPayload
    , pauName
    , pauCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.update@ method which the
-- 'ProjectsAttestorsUpdate' request conforms to.
type ProjectsAttestorsUpdateResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Attestor :> Put '[JSON] Attestor

-- | Updates an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ 'projectsAttestorsUpdate' smart constructor.
data ProjectsAttestorsUpdate = ProjectsAttestorsUpdate'
    { _pauXgafv          :: !(Maybe Xgafv)
    , _pauUploadProtocol :: !(Maybe Text)
    , _pauAccessToken    :: !(Maybe Text)
    , _pauUploadType     :: !(Maybe Text)
    , _pauPayload        :: !Attestor
    , _pauName           :: !Text
    , _pauCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAttestorsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pauXgafv'
--
-- * 'pauUploadProtocol'
--
-- * 'pauAccessToken'
--
-- * 'pauUploadType'
--
-- * 'pauPayload'
--
-- * 'pauName'
--
-- * 'pauCallback'
projectsAttestorsUpdate
    :: Attestor -- ^ 'pauPayload'
    -> Text -- ^ 'pauName'
    -> ProjectsAttestorsUpdate
projectsAttestorsUpdate pPauPayload_ pPauName_ =
    ProjectsAttestorsUpdate'
    { _pauXgafv = Nothing
    , _pauUploadProtocol = Nothing
    , _pauAccessToken = Nothing
    , _pauUploadType = Nothing
    , _pauPayload = pPauPayload_
    , _pauName = pPauName_
    , _pauCallback = Nothing
    }

-- | V1 error format.
pauXgafv :: Lens' ProjectsAttestorsUpdate (Maybe Xgafv)
pauXgafv = lens _pauXgafv (\ s a -> s{_pauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pauUploadProtocol :: Lens' ProjectsAttestorsUpdate (Maybe Text)
pauUploadProtocol
  = lens _pauUploadProtocol
      (\ s a -> s{_pauUploadProtocol = a})

-- | OAuth access token.
pauAccessToken :: Lens' ProjectsAttestorsUpdate (Maybe Text)
pauAccessToken
  = lens _pauAccessToken
      (\ s a -> s{_pauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pauUploadType :: Lens' ProjectsAttestorsUpdate (Maybe Text)
pauUploadType
  = lens _pauUploadType
      (\ s a -> s{_pauUploadType = a})

-- | Multipart request metadata.
pauPayload :: Lens' ProjectsAttestorsUpdate Attestor
pauPayload
  = lens _pauPayload (\ s a -> s{_pauPayload = a})

-- | Required. The resource name, in the format:
-- \`projects\/*\/attestors\/*\`. This field may not be updated.
pauName :: Lens' ProjectsAttestorsUpdate Text
pauName = lens _pauName (\ s a -> s{_pauName = a})

-- | JSONP
pauCallback :: Lens' ProjectsAttestorsUpdate (Maybe Text)
pauCallback
  = lens _pauCallback (\ s a -> s{_pauCallback = a})

instance GoogleRequest ProjectsAttestorsUpdate where
        type Rs ProjectsAttestorsUpdate = Attestor
        type Scopes ProjectsAttestorsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsAttestorsUpdate'{..}
          = go _pauName _pauXgafv _pauUploadProtocol
              _pauAccessToken
              _pauUploadType
              _pauCallback
              (Just AltJSON)
              _pauPayload
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAttestorsUpdateResource)
                      mempty
