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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all Access Levels for an access policy.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.list@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.List
    (
    -- * REST Resource
      AccessPoliciesAccessLevelsListResource

    -- * Creating a Request
    , accessPoliciesAccessLevelsList
    , AccessPoliciesAccessLevelsList

    -- * Request Lenses
    , apallParent
    , apallXgafv
    , apallUploadProtocol
    , apallAccessToken
    , apallUploadType
    , apallAccessLevelFormat
    , apallPageToken
    , apallPageSize
    , apallCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.list@ method which the
-- 'AccessPoliciesAccessLevelsList' request conforms to.
type AccessPoliciesAccessLevelsListResource =
     "v1" :>
       Capture "parent" Text :>
         "accessLevels" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "accessLevelFormat"
                     AccessPoliciesAccessLevelsListAccessLevelFormat
                     :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListAccessLevelsResponse

-- | List all Access Levels for an access policy.
--
-- /See:/ 'accessPoliciesAccessLevelsList' smart constructor.
data AccessPoliciesAccessLevelsList =
  AccessPoliciesAccessLevelsList'
    { _apallParent :: !Text
    , _apallXgafv :: !(Maybe Xgafv)
    , _apallUploadProtocol :: !(Maybe Text)
    , _apallAccessToken :: !(Maybe Text)
    , _apallUploadType :: !(Maybe Text)
    , _apallAccessLevelFormat :: !(Maybe AccessPoliciesAccessLevelsListAccessLevelFormat)
    , _apallPageToken :: !(Maybe Text)
    , _apallPageSize :: !(Maybe (Textual Int32))
    , _apallCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesAccessLevelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apallParent'
--
-- * 'apallXgafv'
--
-- * 'apallUploadProtocol'
--
-- * 'apallAccessToken'
--
-- * 'apallUploadType'
--
-- * 'apallAccessLevelFormat'
--
-- * 'apallPageToken'
--
-- * 'apallPageSize'
--
-- * 'apallCallback'
accessPoliciesAccessLevelsList
    :: Text -- ^ 'apallParent'
    -> AccessPoliciesAccessLevelsList
accessPoliciesAccessLevelsList pApallParent_ =
  AccessPoliciesAccessLevelsList'
    { _apallParent = pApallParent_
    , _apallXgafv = Nothing
    , _apallUploadProtocol = Nothing
    , _apallAccessToken = Nothing
    , _apallUploadType = Nothing
    , _apallAccessLevelFormat = Nothing
    , _apallPageToken = Nothing
    , _apallPageSize = Nothing
    , _apallCallback = Nothing
    }


-- | Required. Resource name for the access policy to list Access Levels
-- from. Format: \`accessPolicies\/{policy_id}\`
apallParent :: Lens' AccessPoliciesAccessLevelsList Text
apallParent
  = lens _apallParent (\ s a -> s{_apallParent = a})

-- | V1 error format.
apallXgafv :: Lens' AccessPoliciesAccessLevelsList (Maybe Xgafv)
apallXgafv
  = lens _apallXgafv (\ s a -> s{_apallXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apallUploadProtocol :: Lens' AccessPoliciesAccessLevelsList (Maybe Text)
apallUploadProtocol
  = lens _apallUploadProtocol
      (\ s a -> s{_apallUploadProtocol = a})

-- | OAuth access token.
apallAccessToken :: Lens' AccessPoliciesAccessLevelsList (Maybe Text)
apallAccessToken
  = lens _apallAccessToken
      (\ s a -> s{_apallAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apallUploadType :: Lens' AccessPoliciesAccessLevelsList (Maybe Text)
apallUploadType
  = lens _apallUploadType
      (\ s a -> s{_apallUploadType = a})

-- | Whether to return \`BasicLevels\` in the Cloud Common Expression
-- language, as \`CustomLevels\`, rather than as \`BasicLevels\`. Defaults
-- to returning \`AccessLevels\` in the format they were defined.
apallAccessLevelFormat :: Lens' AccessPoliciesAccessLevelsList (Maybe AccessPoliciesAccessLevelsListAccessLevelFormat)
apallAccessLevelFormat
  = lens _apallAccessLevelFormat
      (\ s a -> s{_apallAccessLevelFormat = a})

-- | Next page token for the next batch of Access Level instances. Defaults
-- to the first page of results.
apallPageToken :: Lens' AccessPoliciesAccessLevelsList (Maybe Text)
apallPageToken
  = lens _apallPageToken
      (\ s a -> s{_apallPageToken = a})

-- | Number of Access Levels to include in the list. Default 100.
apallPageSize :: Lens' AccessPoliciesAccessLevelsList (Maybe Int32)
apallPageSize
  = lens _apallPageSize
      (\ s a -> s{_apallPageSize = a})
      . mapping _Coerce

-- | JSONP
apallCallback :: Lens' AccessPoliciesAccessLevelsList (Maybe Text)
apallCallback
  = lens _apallCallback
      (\ s a -> s{_apallCallback = a})

instance GoogleRequest AccessPoliciesAccessLevelsList
         where
        type Rs AccessPoliciesAccessLevelsList =
             ListAccessLevelsResponse
        type Scopes AccessPoliciesAccessLevelsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesAccessLevelsList'{..}
          = go _apallParent _apallXgafv _apallUploadProtocol
              _apallAccessToken
              _apallUploadType
              _apallAccessLevelFormat
              _apallPageToken
              _apallPageSize
              _apallCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesAccessLevelsListResource)
                      mempty
