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
-- Module      : Network.Google.Resource.DNS.Policies.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing Policy.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.policies.update@.
module Network.Google.Resource.DNS.Policies.Update
    (
    -- * REST Resource
      PoliciesUpdateResource

    -- * Creating a Request
    , policiesUpdate
    , PoliciesUpdate

    -- * Request Lenses
    , puXgafv
    , puUploadProtocol
    , puProject
    , puAccessToken
    , puUploadType
    , puPayload
    , puPolicy
    , puClientOperationId
    , puCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.policies.update@ method which the
-- 'PoliciesUpdate' request conforms to.
type PoliciesUpdateResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "policies" :>
               Capture "policy" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "clientOperationId" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Policy :>
                                 Put '[JSON] PoliciesUpdateResponse

-- | Update an existing Policy.
--
-- /See:/ 'policiesUpdate' smart constructor.
data PoliciesUpdate =
  PoliciesUpdate'
    { _puXgafv :: !(Maybe Xgafv)
    , _puUploadProtocol :: !(Maybe Text)
    , _puProject :: !Text
    , _puAccessToken :: !(Maybe Text)
    , _puUploadType :: !(Maybe Text)
    , _puPayload :: !Policy
    , _puPolicy :: !Text
    , _puClientOperationId :: !(Maybe Text)
    , _puCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puProject'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puPayload'
--
-- * 'puPolicy'
--
-- * 'puClientOperationId'
--
-- * 'puCallback'
policiesUpdate
    :: Text -- ^ 'puProject'
    -> Policy -- ^ 'puPayload'
    -> Text -- ^ 'puPolicy'
    -> PoliciesUpdate
policiesUpdate pPuProject_ pPuPayload_ pPuPolicy_ =
  PoliciesUpdate'
    { _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puProject = pPuProject_
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puPayload = pPuPayload_
    , _puPolicy = pPuPolicy_
    , _puClientOperationId = Nothing
    , _puCallback = Nothing
    }


-- | V1 error format.
puXgafv :: Lens' PoliciesUpdate (Maybe Xgafv)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' PoliciesUpdate (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | Identifies the project addressed by this request.
puProject :: Lens' PoliciesUpdate Text
puProject
  = lens _puProject (\ s a -> s{_puProject = a})

-- | OAuth access token.
puAccessToken :: Lens' PoliciesUpdate (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' PoliciesUpdate (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | Multipart request metadata.
puPayload :: Lens' PoliciesUpdate Policy
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | User given friendly name of the policy addressed by this request.
puPolicy :: Lens' PoliciesUpdate Text
puPolicy = lens _puPolicy (\ s a -> s{_puPolicy = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
puClientOperationId :: Lens' PoliciesUpdate (Maybe Text)
puClientOperationId
  = lens _puClientOperationId
      (\ s a -> s{_puClientOperationId = a})

-- | JSONP
puCallback :: Lens' PoliciesUpdate (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest PoliciesUpdate where
        type Rs PoliciesUpdate = PoliciesUpdateResponse
        type Scopes PoliciesUpdate = '[]
        requestClient PoliciesUpdate'{..}
          = go _puProject _puPolicy _puXgafv _puUploadProtocol
              _puAccessToken
              _puUploadType
              _puClientOperationId
              _puCallback
              (Just AltJSON)
              _puPayload
              dNSService
          where go
                  = buildClient (Proxy :: Proxy PoliciesUpdateResource)
                      mempty
