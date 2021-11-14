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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.ValidateAttestationOccurrence
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns whether the given Attestation for the given image URI was signed
-- by the given Attestor
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.validateAttestationOccurrence@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.ValidateAttestationOccurrence
    (
    -- * REST Resource
      ProjectsAttestorsValidateAttestationOccurrenceResource

    -- * Creating a Request
    , projectsAttestorsValidateAttestationOccurrence
    , ProjectsAttestorsValidateAttestationOccurrence

    -- * Request Lenses
    , pavaoXgafv
    , pavaoUploadProtocol
    , pavaoAccessToken
    , pavaoUploadType
    , pavaoPayload
    , pavaoAttestor
    , pavaoCallback
    ) where

import Network.Google.BinaryAuthorization.Types
import Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.validateAttestationOccurrence@ method which the
-- 'ProjectsAttestorsValidateAttestationOccurrence' request conforms to.
type ProjectsAttestorsValidateAttestationOccurrenceResource
     =
     "v1" :>
       CaptureMode "attestor"
         "validateAttestationOccurrence"
         Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ValidateAttestationOccurrenceRequest
                       :> Post '[JSON] ValidateAttestationOccurrenceResponse

-- | Returns whether the given Attestation for the given image URI was signed
-- by the given Attestor
--
-- /See:/ 'projectsAttestorsValidateAttestationOccurrence' smart constructor.
data ProjectsAttestorsValidateAttestationOccurrence =
  ProjectsAttestorsValidateAttestationOccurrence'
    { _pavaoXgafv :: !(Maybe Xgafv)
    , _pavaoUploadProtocol :: !(Maybe Text)
    , _pavaoAccessToken :: !(Maybe Text)
    , _pavaoUploadType :: !(Maybe Text)
    , _pavaoPayload :: !ValidateAttestationOccurrenceRequest
    , _pavaoAttestor :: !Text
    , _pavaoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAttestorsValidateAttestationOccurrence' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pavaoXgafv'
--
-- * 'pavaoUploadProtocol'
--
-- * 'pavaoAccessToken'
--
-- * 'pavaoUploadType'
--
-- * 'pavaoPayload'
--
-- * 'pavaoAttestor'
--
-- * 'pavaoCallback'
projectsAttestorsValidateAttestationOccurrence
    :: ValidateAttestationOccurrenceRequest -- ^ 'pavaoPayload'
    -> Text -- ^ 'pavaoAttestor'
    -> ProjectsAttestorsValidateAttestationOccurrence
projectsAttestorsValidateAttestationOccurrence pPavaoPayload_ pPavaoAttestor_ =
  ProjectsAttestorsValidateAttestationOccurrence'
    { _pavaoXgafv = Nothing
    , _pavaoUploadProtocol = Nothing
    , _pavaoAccessToken = Nothing
    , _pavaoUploadType = Nothing
    , _pavaoPayload = pPavaoPayload_
    , _pavaoAttestor = pPavaoAttestor_
    , _pavaoCallback = Nothing
    }


-- | V1 error format.
pavaoXgafv :: Lens' ProjectsAttestorsValidateAttestationOccurrence (Maybe Xgafv)
pavaoXgafv
  = lens _pavaoXgafv (\ s a -> s{_pavaoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pavaoUploadProtocol :: Lens' ProjectsAttestorsValidateAttestationOccurrence (Maybe Text)
pavaoUploadProtocol
  = lens _pavaoUploadProtocol
      (\ s a -> s{_pavaoUploadProtocol = a})

-- | OAuth access token.
pavaoAccessToken :: Lens' ProjectsAttestorsValidateAttestationOccurrence (Maybe Text)
pavaoAccessToken
  = lens _pavaoAccessToken
      (\ s a -> s{_pavaoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pavaoUploadType :: Lens' ProjectsAttestorsValidateAttestationOccurrence (Maybe Text)
pavaoUploadType
  = lens _pavaoUploadType
      (\ s a -> s{_pavaoUploadType = a})

-- | Multipart request metadata.
pavaoPayload :: Lens' ProjectsAttestorsValidateAttestationOccurrence ValidateAttestationOccurrenceRequest
pavaoPayload
  = lens _pavaoPayload (\ s a -> s{_pavaoPayload = a})

-- | Required. The resource name of the Attestor of the occurrence, in the
-- format \`projects\/*\/attestors\/*\`.
pavaoAttestor :: Lens' ProjectsAttestorsValidateAttestationOccurrence Text
pavaoAttestor
  = lens _pavaoAttestor
      (\ s a -> s{_pavaoAttestor = a})

-- | JSONP
pavaoCallback :: Lens' ProjectsAttestorsValidateAttestationOccurrence (Maybe Text)
pavaoCallback
  = lens _pavaoCallback
      (\ s a -> s{_pavaoCallback = a})

instance GoogleRequest
           ProjectsAttestorsValidateAttestationOccurrence
         where
        type Rs
               ProjectsAttestorsValidateAttestationOccurrence
             = ValidateAttestationOccurrenceResponse
        type Scopes
               ProjectsAttestorsValidateAttestationOccurrence
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsAttestorsValidateAttestationOccurrence'{..}
          = go _pavaoAttestor _pavaoXgafv _pavaoUploadProtocol
              _pavaoAccessToken
              _pavaoUploadType
              _pavaoCallback
              (Just AltJSON)
              _pavaoPayload
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsAttestorsValidateAttestationOccurrenceResource)
                      mempty
