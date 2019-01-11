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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an \`AccessPolicy\`. Fails if this organization already has a
-- \`AccessPolicy\`. The longrunning Operation will have a successful
-- status once the \`AccessPolicy\` has propagated to long-lasting storage.
-- Syntactic and basic semantic errors will be returned in \`metadata\` as
-- a BadRequest proto.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.create@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.Create
    (
    -- * REST Resource
      AccessPoliciesCreateResource

    -- * Creating a Request
    , accessPoliciesCreate
    , AccessPoliciesCreate

    -- * Request Lenses
    , apcXgafv
    , apcUploadProtocol
    , apcAccessToken
    , apcUploadType
    , apcPayload
    , apcCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.create@ method which the
-- 'AccessPoliciesCreate' request conforms to.
type AccessPoliciesCreateResource =
     "v1beta" :>
       "accessPolicies" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AccessPolicy :>
                       Post '[JSON] Operation

-- | Create an \`AccessPolicy\`. Fails if this organization already has a
-- \`AccessPolicy\`. The longrunning Operation will have a successful
-- status once the \`AccessPolicy\` has propagated to long-lasting storage.
-- Syntactic and basic semantic errors will be returned in \`metadata\` as
-- a BadRequest proto.
--
-- /See:/ 'accessPoliciesCreate' smart constructor.
data AccessPoliciesCreate = AccessPoliciesCreate'
    { _apcXgafv          :: !(Maybe Xgafv)
    , _apcUploadProtocol :: !(Maybe Text)
    , _apcAccessToken    :: !(Maybe Text)
    , _apcUploadType     :: !(Maybe Text)
    , _apcPayload        :: !AccessPolicy
    , _apcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessPoliciesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcXgafv'
--
-- * 'apcUploadProtocol'
--
-- * 'apcAccessToken'
--
-- * 'apcUploadType'
--
-- * 'apcPayload'
--
-- * 'apcCallback'
accessPoliciesCreate
    :: AccessPolicy -- ^ 'apcPayload'
    -> AccessPoliciesCreate
accessPoliciesCreate pApcPayload_ =
    AccessPoliciesCreate'
    { _apcXgafv = Nothing
    , _apcUploadProtocol = Nothing
    , _apcAccessToken = Nothing
    , _apcUploadType = Nothing
    , _apcPayload = pApcPayload_
    , _apcCallback = Nothing
    }

-- | V1 error format.
apcXgafv :: Lens' AccessPoliciesCreate (Maybe Xgafv)
apcXgafv = lens _apcXgafv (\ s a -> s{_apcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apcUploadProtocol :: Lens' AccessPoliciesCreate (Maybe Text)
apcUploadProtocol
  = lens _apcUploadProtocol
      (\ s a -> s{_apcUploadProtocol = a})

-- | OAuth access token.
apcAccessToken :: Lens' AccessPoliciesCreate (Maybe Text)
apcAccessToken
  = lens _apcAccessToken
      (\ s a -> s{_apcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apcUploadType :: Lens' AccessPoliciesCreate (Maybe Text)
apcUploadType
  = lens _apcUploadType
      (\ s a -> s{_apcUploadType = a})

-- | Multipart request metadata.
apcPayload :: Lens' AccessPoliciesCreate AccessPolicy
apcPayload
  = lens _apcPayload (\ s a -> s{_apcPayload = a})

-- | JSONP
apcCallback :: Lens' AccessPoliciesCreate (Maybe Text)
apcCallback
  = lens _apcCallback (\ s a -> s{_apcCallback = a})

instance GoogleRequest AccessPoliciesCreate where
        type Rs AccessPoliciesCreate = Operation
        type Scopes AccessPoliciesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesCreate'{..}
          = go _apcXgafv _apcUploadProtocol _apcAccessToken
              _apcUploadType
              _apcCallback
              (Just AltJSON)
              _apcPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccessPoliciesCreateResource)
                      mempty
