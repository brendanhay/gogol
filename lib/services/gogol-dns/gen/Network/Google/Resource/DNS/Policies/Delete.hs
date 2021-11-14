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
-- Module      : Network.Google.Resource.DNS.Policies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a previously created Policy. Will fail if the policy is still
-- being referenced by a network.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.policies.delete@.
module Network.Google.Resource.DNS.Policies.Delete
    (
    -- * REST Resource
      PoliciesDeleteResource

    -- * Creating a Request
    , policiesDelete
    , PoliciesDelete

    -- * Request Lenses
    , pdXgafv
    , pdUploadProtocol
    , pdProject
    , pdAccessToken
    , pdUploadType
    , pdPolicy
    , pdClientOperationId
    , pdCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.policies.delete@ method which the
-- 'PoliciesDelete' request conforms to.
type PoliciesDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a previously created Policy. Will fail if the policy is still
-- being referenced by a network.
--
-- /See:/ 'policiesDelete' smart constructor.
data PoliciesDelete =
  PoliciesDelete'
    { _pdXgafv :: !(Maybe Xgafv)
    , _pdUploadProtocol :: !(Maybe Text)
    , _pdProject :: !Text
    , _pdAccessToken :: !(Maybe Text)
    , _pdUploadType :: !(Maybe Text)
    , _pdPolicy :: !Text
    , _pdClientOperationId :: !(Maybe Text)
    , _pdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdXgafv'
--
-- * 'pdUploadProtocol'
--
-- * 'pdProject'
--
-- * 'pdAccessToken'
--
-- * 'pdUploadType'
--
-- * 'pdPolicy'
--
-- * 'pdClientOperationId'
--
-- * 'pdCallback'
policiesDelete
    :: Text -- ^ 'pdProject'
    -> Text -- ^ 'pdPolicy'
    -> PoliciesDelete
policiesDelete pPdProject_ pPdPolicy_ =
  PoliciesDelete'
    { _pdXgafv = Nothing
    , _pdUploadProtocol = Nothing
    , _pdProject = pPdProject_
    , _pdAccessToken = Nothing
    , _pdUploadType = Nothing
    , _pdPolicy = pPdPolicy_
    , _pdClientOperationId = Nothing
    , _pdCallback = Nothing
    }


-- | V1 error format.
pdXgafv :: Lens' PoliciesDelete (Maybe Xgafv)
pdXgafv = lens _pdXgafv (\ s a -> s{_pdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdUploadProtocol :: Lens' PoliciesDelete (Maybe Text)
pdUploadProtocol
  = lens _pdUploadProtocol
      (\ s a -> s{_pdUploadProtocol = a})

-- | Identifies the project addressed by this request.
pdProject :: Lens' PoliciesDelete Text
pdProject
  = lens _pdProject (\ s a -> s{_pdProject = a})

-- | OAuth access token.
pdAccessToken :: Lens' PoliciesDelete (Maybe Text)
pdAccessToken
  = lens _pdAccessToken
      (\ s a -> s{_pdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdUploadType :: Lens' PoliciesDelete (Maybe Text)
pdUploadType
  = lens _pdUploadType (\ s a -> s{_pdUploadType = a})

-- | User given friendly name of the policy addressed by this request.
pdPolicy :: Lens' PoliciesDelete Text
pdPolicy = lens _pdPolicy (\ s a -> s{_pdPolicy = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
pdClientOperationId :: Lens' PoliciesDelete (Maybe Text)
pdClientOperationId
  = lens _pdClientOperationId
      (\ s a -> s{_pdClientOperationId = a})

-- | JSONP
pdCallback :: Lens' PoliciesDelete (Maybe Text)
pdCallback
  = lens _pdCallback (\ s a -> s{_pdCallback = a})

instance GoogleRequest PoliciesDelete where
        type Rs PoliciesDelete = ()
        type Scopes PoliciesDelete = '[]
        requestClient PoliciesDelete'{..}
          = go _pdProject _pdPolicy _pdXgafv _pdUploadProtocol
              _pdAccessToken
              _pdUploadType
              _pdClientOperationId
              _pdCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy PoliciesDeleteResource)
                      mempty
