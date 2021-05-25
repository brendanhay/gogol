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
-- Module      : Network.Google.Resource.DNS.Policies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Apply a partial update to an existing Policy.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.policies.patch@.
module Network.Google.Resource.DNS.Policies.Patch
    (
    -- * REST Resource
      PoliciesPatchResource

    -- * Creating a Request
    , policiesPatch
    , PoliciesPatch

    -- * Request Lenses
    , ppXgafv
    , ppUploadProtocol
    , ppProject
    , ppAccessToken
    , ppUploadType
    , ppPayload
    , ppPolicy
    , ppClientOperationId
    , ppCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.policies.patch@ method which the
-- 'PoliciesPatch' request conforms to.
type PoliciesPatchResource =
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
                                 Patch '[JSON] PoliciesPatchResponse

-- | Apply a partial update to an existing Policy.
--
-- /See:/ 'policiesPatch' smart constructor.
data PoliciesPatch =
  PoliciesPatch'
    { _ppXgafv :: !(Maybe Xgafv)
    , _ppUploadProtocol :: !(Maybe Text)
    , _ppProject :: !Text
    , _ppAccessToken :: !(Maybe Text)
    , _ppUploadType :: !(Maybe Text)
    , _ppPayload :: !Policy
    , _ppPolicy :: !Text
    , _ppClientOperationId :: !(Maybe Text)
    , _ppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppXgafv'
--
-- * 'ppUploadProtocol'
--
-- * 'ppProject'
--
-- * 'ppAccessToken'
--
-- * 'ppUploadType'
--
-- * 'ppPayload'
--
-- * 'ppPolicy'
--
-- * 'ppClientOperationId'
--
-- * 'ppCallback'
policiesPatch
    :: Text -- ^ 'ppProject'
    -> Policy -- ^ 'ppPayload'
    -> Text -- ^ 'ppPolicy'
    -> PoliciesPatch
policiesPatch pPpProject_ pPpPayload_ pPpPolicy_ =
  PoliciesPatch'
    { _ppXgafv = Nothing
    , _ppUploadProtocol = Nothing
    , _ppProject = pPpProject_
    , _ppAccessToken = Nothing
    , _ppUploadType = Nothing
    , _ppPayload = pPpPayload_
    , _ppPolicy = pPpPolicy_
    , _ppClientOperationId = Nothing
    , _ppCallback = Nothing
    }


-- | V1 error format.
ppXgafv :: Lens' PoliciesPatch (Maybe Xgafv)
ppXgafv = lens _ppXgafv (\ s a -> s{_ppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppUploadProtocol :: Lens' PoliciesPatch (Maybe Text)
ppUploadProtocol
  = lens _ppUploadProtocol
      (\ s a -> s{_ppUploadProtocol = a})

-- | Identifies the project addressed by this request.
ppProject :: Lens' PoliciesPatch Text
ppProject
  = lens _ppProject (\ s a -> s{_ppProject = a})

-- | OAuth access token.
ppAccessToken :: Lens' PoliciesPatch (Maybe Text)
ppAccessToken
  = lens _ppAccessToken
      (\ s a -> s{_ppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppUploadType :: Lens' PoliciesPatch (Maybe Text)
ppUploadType
  = lens _ppUploadType (\ s a -> s{_ppUploadType = a})

-- | Multipart request metadata.
ppPayload :: Lens' PoliciesPatch Policy
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | User given friendly name of the policy addressed by this request.
ppPolicy :: Lens' PoliciesPatch Text
ppPolicy = lens _ppPolicy (\ s a -> s{_ppPolicy = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
ppClientOperationId :: Lens' PoliciesPatch (Maybe Text)
ppClientOperationId
  = lens _ppClientOperationId
      (\ s a -> s{_ppClientOperationId = a})

-- | JSONP
ppCallback :: Lens' PoliciesPatch (Maybe Text)
ppCallback
  = lens _ppCallback (\ s a -> s{_ppCallback = a})

instance GoogleRequest PoliciesPatch where
        type Rs PoliciesPatch = PoliciesPatchResponse
        type Scopes PoliciesPatch = '[]
        requestClient PoliciesPatch'{..}
          = go _ppProject _ppPolicy _ppXgafv _ppUploadProtocol
              _ppAccessToken
              _ppUploadType
              _ppClientOperationId
              _ppCallback
              (Just AltJSON)
              _ppPayload
              dNSService
          where go
                  = buildClient (Proxy :: Proxy PoliciesPatchResource)
                      mempty
