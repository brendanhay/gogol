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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an Access Level. The longrunning operation from this RPC will
-- have a successful status once the Access Level has propagated to
-- long-lasting storage. Access Levels containing errors will result in an
-- error response for the first error encountered.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.create@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Create
    (
    -- * REST Resource
      AccessPoliciesAccessLevelsCreateResource

    -- * Creating a Request
    , accessPoliciesAccessLevelsCreate
    , AccessPoliciesAccessLevelsCreate

    -- * Request Lenses
    , apalcParent
    , apalcXgafv
    , apalcUploadProtocol
    , apalcAccessToken
    , apalcUploadType
    , apalcPayload
    , apalcCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.create@ method which the
-- 'AccessPoliciesAccessLevelsCreate' request conforms to.
type AccessPoliciesAccessLevelsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "accessLevels" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AccessLevel :> Post '[JSON] Operation

-- | Create an Access Level. The longrunning operation from this RPC will
-- have a successful status once the Access Level has propagated to
-- long-lasting storage. Access Levels containing errors will result in an
-- error response for the first error encountered.
--
-- /See:/ 'accessPoliciesAccessLevelsCreate' smart constructor.
data AccessPoliciesAccessLevelsCreate =
  AccessPoliciesAccessLevelsCreate'
    { _apalcParent         :: !Text
    , _apalcXgafv          :: !(Maybe Xgafv)
    , _apalcUploadProtocol :: !(Maybe Text)
    , _apalcAccessToken    :: !(Maybe Text)
    , _apalcUploadType     :: !(Maybe Text)
    , _apalcPayload        :: !AccessLevel
    , _apalcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesAccessLevelsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apalcParent'
--
-- * 'apalcXgafv'
--
-- * 'apalcUploadProtocol'
--
-- * 'apalcAccessToken'
--
-- * 'apalcUploadType'
--
-- * 'apalcPayload'
--
-- * 'apalcCallback'
accessPoliciesAccessLevelsCreate
    :: Text -- ^ 'apalcParent'
    -> AccessLevel -- ^ 'apalcPayload'
    -> AccessPoliciesAccessLevelsCreate
accessPoliciesAccessLevelsCreate pApalcParent_ pApalcPayload_ =
  AccessPoliciesAccessLevelsCreate'
    { _apalcParent = pApalcParent_
    , _apalcXgafv = Nothing
    , _apalcUploadProtocol = Nothing
    , _apalcAccessToken = Nothing
    , _apalcUploadType = Nothing
    , _apalcPayload = pApalcPayload_
    , _apalcCallback = Nothing
    }


-- | Required. Resource name for the access policy which owns this Access
-- Level. Format: \`accessPolicies\/{policy_id}\`
apalcParent :: Lens' AccessPoliciesAccessLevelsCreate Text
apalcParent
  = lens _apalcParent (\ s a -> s{_apalcParent = a})

-- | V1 error format.
apalcXgafv :: Lens' AccessPoliciesAccessLevelsCreate (Maybe Xgafv)
apalcXgafv
  = lens _apalcXgafv (\ s a -> s{_apalcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apalcUploadProtocol :: Lens' AccessPoliciesAccessLevelsCreate (Maybe Text)
apalcUploadProtocol
  = lens _apalcUploadProtocol
      (\ s a -> s{_apalcUploadProtocol = a})

-- | OAuth access token.
apalcAccessToken :: Lens' AccessPoliciesAccessLevelsCreate (Maybe Text)
apalcAccessToken
  = lens _apalcAccessToken
      (\ s a -> s{_apalcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apalcUploadType :: Lens' AccessPoliciesAccessLevelsCreate (Maybe Text)
apalcUploadType
  = lens _apalcUploadType
      (\ s a -> s{_apalcUploadType = a})

-- | Multipart request metadata.
apalcPayload :: Lens' AccessPoliciesAccessLevelsCreate AccessLevel
apalcPayload
  = lens _apalcPayload (\ s a -> s{_apalcPayload = a})

-- | JSONP
apalcCallback :: Lens' AccessPoliciesAccessLevelsCreate (Maybe Text)
apalcCallback
  = lens _apalcCallback
      (\ s a -> s{_apalcCallback = a})

instance GoogleRequest
           AccessPoliciesAccessLevelsCreate
         where
        type Rs AccessPoliciesAccessLevelsCreate = Operation
        type Scopes AccessPoliciesAccessLevelsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesAccessLevelsCreate'{..}
          = go _apalcParent _apalcXgafv _apalcUploadProtocol
              _apalcAccessToken
              _apalcUploadType
              _apalcCallback
              (Just AltJSON)
              _apalcPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesAccessLevelsCreateResource)
                      mempty
