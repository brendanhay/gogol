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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an Access Level by resource name. The longrunning operation from
-- this RPC will have a successful status once the Access Level has been
-- removed from long-lasting storage.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.delete@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Delete
    (
    -- * REST Resource
      AccessPoliciesAccessLevelsDeleteResource

    -- * Creating a Request
    , accessPoliciesAccessLevelsDelete
    , AccessPoliciesAccessLevelsDelete

    -- * Request Lenses
    , apaldXgafv
    , apaldUploadProtocol
    , apaldAccessToken
    , apaldUploadType
    , apaldName
    , apaldCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.delete@ method which the
-- 'AccessPoliciesAccessLevelsDelete' request conforms to.
type AccessPoliciesAccessLevelsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Delete an Access Level by resource name. The longrunning operation from
-- this RPC will have a successful status once the Access Level has been
-- removed from long-lasting storage.
--
-- /See:/ 'accessPoliciesAccessLevelsDelete' smart constructor.
data AccessPoliciesAccessLevelsDelete =
  AccessPoliciesAccessLevelsDelete'
    { _apaldXgafv :: !(Maybe Xgafv)
    , _apaldUploadProtocol :: !(Maybe Text)
    , _apaldAccessToken :: !(Maybe Text)
    , _apaldUploadType :: !(Maybe Text)
    , _apaldName :: !Text
    , _apaldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesAccessLevelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apaldXgafv'
--
-- * 'apaldUploadProtocol'
--
-- * 'apaldAccessToken'
--
-- * 'apaldUploadType'
--
-- * 'apaldName'
--
-- * 'apaldCallback'
accessPoliciesAccessLevelsDelete
    :: Text -- ^ 'apaldName'
    -> AccessPoliciesAccessLevelsDelete
accessPoliciesAccessLevelsDelete pApaldName_ =
  AccessPoliciesAccessLevelsDelete'
    { _apaldXgafv = Nothing
    , _apaldUploadProtocol = Nothing
    , _apaldAccessToken = Nothing
    , _apaldUploadType = Nothing
    , _apaldName = pApaldName_
    , _apaldCallback = Nothing
    }


-- | V1 error format.
apaldXgafv :: Lens' AccessPoliciesAccessLevelsDelete (Maybe Xgafv)
apaldXgafv
  = lens _apaldXgafv (\ s a -> s{_apaldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apaldUploadProtocol :: Lens' AccessPoliciesAccessLevelsDelete (Maybe Text)
apaldUploadProtocol
  = lens _apaldUploadProtocol
      (\ s a -> s{_apaldUploadProtocol = a})

-- | OAuth access token.
apaldAccessToken :: Lens' AccessPoliciesAccessLevelsDelete (Maybe Text)
apaldAccessToken
  = lens _apaldAccessToken
      (\ s a -> s{_apaldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apaldUploadType :: Lens' AccessPoliciesAccessLevelsDelete (Maybe Text)
apaldUploadType
  = lens _apaldUploadType
      (\ s a -> s{_apaldUploadType = a})

-- | Required. Resource name for the Access Level. Format:
-- \`accessPolicies\/{policy_id}\/accessLevels\/{access_level_id}\`
apaldName :: Lens' AccessPoliciesAccessLevelsDelete Text
apaldName
  = lens _apaldName (\ s a -> s{_apaldName = a})

-- | JSONP
apaldCallback :: Lens' AccessPoliciesAccessLevelsDelete (Maybe Text)
apaldCallback
  = lens _apaldCallback
      (\ s a -> s{_apaldCallback = a})

instance GoogleRequest
           AccessPoliciesAccessLevelsDelete
         where
        type Rs AccessPoliciesAccessLevelsDelete = Operation
        type Scopes AccessPoliciesAccessLevelsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesAccessLevelsDelete'{..}
          = go _apaldName _apaldXgafv _apaldUploadProtocol
              _apaldAccessToken
              _apaldUploadType
              _apaldCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesAccessLevelsDeleteResource)
                      mempty
