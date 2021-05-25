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
-- Module      : Network.Google.Resource.DNS.Policies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing Policy.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.policies.get@.
module Network.Google.Resource.DNS.Policies.Get
    (
    -- * REST Resource
      PoliciesGetResource

    -- * Creating a Request
    , policiesGet
    , PoliciesGet

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pProject
    , pAccessToken
    , pUploadType
    , pPolicy
    , pClientOperationId
    , pCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.policies.get@ method which the
-- 'PoliciesGet' request conforms to.
type PoliciesGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Fetch the representation of an existing Policy.
--
-- /See:/ 'policiesGet' smart constructor.
data PoliciesGet =
  PoliciesGet'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pProject :: !Text
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPolicy :: !Text
    , _pClientOperationId :: !(Maybe Text)
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pProject'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPolicy'
--
-- * 'pClientOperationId'
--
-- * 'pCallback'
policiesGet
    :: Text -- ^ 'pProject'
    -> Text -- ^ 'pPolicy'
    -> PoliciesGet
policiesGet pPProject_ pPPolicy_ =
  PoliciesGet'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pProject = pPProject_
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPolicy = pPPolicy_
    , _pClientOperationId = Nothing
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' PoliciesGet (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' PoliciesGet (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | Identifies the project addressed by this request.
pProject :: Lens' PoliciesGet Text
pProject = lens _pProject (\ s a -> s{_pProject = a})

-- | OAuth access token.
pAccessToken :: Lens' PoliciesGet (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' PoliciesGet (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | User given friendly name of the policy addressed by this request.
pPolicy :: Lens' PoliciesGet Text
pPolicy = lens _pPolicy (\ s a -> s{_pPolicy = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
pClientOperationId :: Lens' PoliciesGet (Maybe Text)
pClientOperationId
  = lens _pClientOperationId
      (\ s a -> s{_pClientOperationId = a})

-- | JSONP
pCallback :: Lens' PoliciesGet (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest PoliciesGet where
        type Rs PoliciesGet = Policy
        type Scopes PoliciesGet = '[]
        requestClient PoliciesGet'{..}
          = go _pProject _pPolicy _pXgafv _pUploadProtocol
              _pAccessToken
              _pUploadType
              _pClientOperationId
              _pCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy PoliciesGetResource)
                      mempty
