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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all AccessPolicies under a container.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.list@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.List
    (
    -- * REST Resource
      AccessPoliciesListResource

    -- * Creating a Request
    , accessPoliciesList
    , AccessPoliciesList

    -- * Request Lenses
    , aplParent
    , aplXgafv
    , aplUploadProtocol
    , aplAccessToken
    , aplUploadType
    , aplPageToken
    , aplPageSize
    , aplCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.list@ method which the
-- 'AccessPoliciesList' request conforms to.
type AccessPoliciesListResource =
     "v1beta" :>
       "accessPolicies" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAccessPoliciesResponse

-- | List all AccessPolicies under a container.
--
-- /See:/ 'accessPoliciesList' smart constructor.
data AccessPoliciesList =
  AccessPoliciesList'
    { _aplParent         :: !(Maybe Text)
    , _aplXgafv          :: !(Maybe Xgafv)
    , _aplUploadProtocol :: !(Maybe Text)
    , _aplAccessToken    :: !(Maybe Text)
    , _aplUploadType     :: !(Maybe Text)
    , _aplPageToken      :: !(Maybe Text)
    , _aplPageSize       :: !(Maybe (Textual Int32))
    , _aplCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplParent'
--
-- * 'aplXgafv'
--
-- * 'aplUploadProtocol'
--
-- * 'aplAccessToken'
--
-- * 'aplUploadType'
--
-- * 'aplPageToken'
--
-- * 'aplPageSize'
--
-- * 'aplCallback'
accessPoliciesList
    :: AccessPoliciesList
accessPoliciesList =
  AccessPoliciesList'
    { _aplParent = Nothing
    , _aplXgafv = Nothing
    , _aplUploadProtocol = Nothing
    , _aplAccessToken = Nothing
    , _aplUploadType = Nothing
    , _aplPageToken = Nothing
    , _aplPageSize = Nothing
    , _aplCallback = Nothing
    }


-- | Required. Resource name for the container to list AccessPolicy instances
-- from. Format: \`organizations\/{org_id}\`
aplParent :: Lens' AccessPoliciesList (Maybe Text)
aplParent
  = lens _aplParent (\ s a -> s{_aplParent = a})

-- | V1 error format.
aplXgafv :: Lens' AccessPoliciesList (Maybe Xgafv)
aplXgafv = lens _aplXgafv (\ s a -> s{_aplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aplUploadProtocol :: Lens' AccessPoliciesList (Maybe Text)
aplUploadProtocol
  = lens _aplUploadProtocol
      (\ s a -> s{_aplUploadProtocol = a})

-- | OAuth access token.
aplAccessToken :: Lens' AccessPoliciesList (Maybe Text)
aplAccessToken
  = lens _aplAccessToken
      (\ s a -> s{_aplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aplUploadType :: Lens' AccessPoliciesList (Maybe Text)
aplUploadType
  = lens _aplUploadType
      (\ s a -> s{_aplUploadType = a})

-- | Next page token for the next batch of AccessPolicy instances. Defaults
-- to the first page of results.
aplPageToken :: Lens' AccessPoliciesList (Maybe Text)
aplPageToken
  = lens _aplPageToken (\ s a -> s{_aplPageToken = a})

-- | Number of AccessPolicy instances to include in the list. Default 100.
aplPageSize :: Lens' AccessPoliciesList (Maybe Int32)
aplPageSize
  = lens _aplPageSize (\ s a -> s{_aplPageSize = a}) .
      mapping _Coerce

-- | JSONP
aplCallback :: Lens' AccessPoliciesList (Maybe Text)
aplCallback
  = lens _aplCallback (\ s a -> s{_aplCallback = a})

instance GoogleRequest AccessPoliciesList where
        type Rs AccessPoliciesList =
             ListAccessPoliciesResponse
        type Scopes AccessPoliciesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesList'{..}
          = go _aplParent _aplXgafv _aplUploadProtocol
              _aplAccessToken
              _aplUploadType
              _aplPageToken
              _aplPageSize
              _aplCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccessPoliciesListResource)
                      mempty
