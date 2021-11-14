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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an Access Level by resource name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.get@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Get
    (
    -- * REST Resource
      AccessPoliciesAccessLevelsGetResource

    -- * Creating a Request
    , accessPoliciesAccessLevelsGet
    , AccessPoliciesAccessLevelsGet

    -- * Request Lenses
    , apalgXgafv
    , apalgUploadProtocol
    , apalgAccessToken
    , apalgUploadType
    , apalgAccessLevelFormat
    , apalgName
    , apalgCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.get@ method which the
-- 'AccessPoliciesAccessLevelsGet' request conforms to.
type AccessPoliciesAccessLevelsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "accessLevelFormat"
                   AccessPoliciesAccessLevelsGetAccessLevelFormat
                   :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] AccessLevel

-- | Get an Access Level by resource name.
--
-- /See:/ 'accessPoliciesAccessLevelsGet' smart constructor.
data AccessPoliciesAccessLevelsGet =
  AccessPoliciesAccessLevelsGet'
    { _apalgXgafv :: !(Maybe Xgafv)
    , _apalgUploadProtocol :: !(Maybe Text)
    , _apalgAccessToken :: !(Maybe Text)
    , _apalgUploadType :: !(Maybe Text)
    , _apalgAccessLevelFormat :: !(Maybe AccessPoliciesAccessLevelsGetAccessLevelFormat)
    , _apalgName :: !Text
    , _apalgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesAccessLevelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apalgXgafv'
--
-- * 'apalgUploadProtocol'
--
-- * 'apalgAccessToken'
--
-- * 'apalgUploadType'
--
-- * 'apalgAccessLevelFormat'
--
-- * 'apalgName'
--
-- * 'apalgCallback'
accessPoliciesAccessLevelsGet
    :: Text -- ^ 'apalgName'
    -> AccessPoliciesAccessLevelsGet
accessPoliciesAccessLevelsGet pApalgName_ =
  AccessPoliciesAccessLevelsGet'
    { _apalgXgafv = Nothing
    , _apalgUploadProtocol = Nothing
    , _apalgAccessToken = Nothing
    , _apalgUploadType = Nothing
    , _apalgAccessLevelFormat = Nothing
    , _apalgName = pApalgName_
    , _apalgCallback = Nothing
    }


-- | V1 error format.
apalgXgafv :: Lens' AccessPoliciesAccessLevelsGet (Maybe Xgafv)
apalgXgafv
  = lens _apalgXgafv (\ s a -> s{_apalgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apalgUploadProtocol :: Lens' AccessPoliciesAccessLevelsGet (Maybe Text)
apalgUploadProtocol
  = lens _apalgUploadProtocol
      (\ s a -> s{_apalgUploadProtocol = a})

-- | OAuth access token.
apalgAccessToken :: Lens' AccessPoliciesAccessLevelsGet (Maybe Text)
apalgAccessToken
  = lens _apalgAccessToken
      (\ s a -> s{_apalgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apalgUploadType :: Lens' AccessPoliciesAccessLevelsGet (Maybe Text)
apalgUploadType
  = lens _apalgUploadType
      (\ s a -> s{_apalgUploadType = a})

-- | Whether to return \`BasicLevels\` in the Cloud Common Expression
-- Language rather than as \`BasicLevels\`. Defaults to AS_DEFINED, where
-- Access Levels are returned as \`BasicLevels\` or \`CustomLevels\` based
-- on how they were created. If set to CEL, all Access Levels are returned
-- as \`CustomLevels\`. In the CEL case, \`BasicLevels\` are translated to
-- equivalent \`CustomLevels\`.
apalgAccessLevelFormat :: Lens' AccessPoliciesAccessLevelsGet (Maybe AccessPoliciesAccessLevelsGetAccessLevelFormat)
apalgAccessLevelFormat
  = lens _apalgAccessLevelFormat
      (\ s a -> s{_apalgAccessLevelFormat = a})

-- | Required. Resource name for the Access Level. Format:
-- \`accessPolicies\/{policy_id}\/accessLevels\/{access_level_id}\`
apalgName :: Lens' AccessPoliciesAccessLevelsGet Text
apalgName
  = lens _apalgName (\ s a -> s{_apalgName = a})

-- | JSONP
apalgCallback :: Lens' AccessPoliciesAccessLevelsGet (Maybe Text)
apalgCallback
  = lens _apalgCallback
      (\ s a -> s{_apalgCallback = a})

instance GoogleRequest AccessPoliciesAccessLevelsGet
         where
        type Rs AccessPoliciesAccessLevelsGet = AccessLevel
        type Scopes AccessPoliciesAccessLevelsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesAccessLevelsGet'{..}
          = go _apalgName _apalgXgafv _apalgUploadProtocol
              _apalgAccessToken
              _apalgUploadType
              _apalgAccessLevelFormat
              _apalgCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesAccessLevelsGetResource)
                      mempty
