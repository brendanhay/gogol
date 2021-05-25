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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all Service Perimeters for an access policy.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.list@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.List
    (
    -- * REST Resource
      AccessPoliciesServicePerimetersListResource

    -- * Creating a Request
    , accessPoliciesServicePerimetersList
    , AccessPoliciesServicePerimetersList

    -- * Request Lenses
    , apsplParent
    , apsplXgafv
    , apsplUploadProtocol
    , apsplAccessToken
    , apsplUploadType
    , apsplPageToken
    , apsplPageSize
    , apsplCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.list@ method which the
-- 'AccessPoliciesServicePerimetersList' request conforms to.
type AccessPoliciesServicePerimetersListResource =
     "v1" :>
       Capture "parent" Text :>
         "servicePerimeters" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListServicePerimetersResponse

-- | List all Service Perimeters for an access policy.
--
-- /See:/ 'accessPoliciesServicePerimetersList' smart constructor.
data AccessPoliciesServicePerimetersList =
  AccessPoliciesServicePerimetersList'
    { _apsplParent :: !Text
    , _apsplXgafv :: !(Maybe Xgafv)
    , _apsplUploadProtocol :: !(Maybe Text)
    , _apsplAccessToken :: !(Maybe Text)
    , _apsplUploadType :: !(Maybe Text)
    , _apsplPageToken :: !(Maybe Text)
    , _apsplPageSize :: !(Maybe (Textual Int32))
    , _apsplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesServicePerimetersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apsplParent'
--
-- * 'apsplXgafv'
--
-- * 'apsplUploadProtocol'
--
-- * 'apsplAccessToken'
--
-- * 'apsplUploadType'
--
-- * 'apsplPageToken'
--
-- * 'apsplPageSize'
--
-- * 'apsplCallback'
accessPoliciesServicePerimetersList
    :: Text -- ^ 'apsplParent'
    -> AccessPoliciesServicePerimetersList
accessPoliciesServicePerimetersList pApsplParent_ =
  AccessPoliciesServicePerimetersList'
    { _apsplParent = pApsplParent_
    , _apsplXgafv = Nothing
    , _apsplUploadProtocol = Nothing
    , _apsplAccessToken = Nothing
    , _apsplUploadType = Nothing
    , _apsplPageToken = Nothing
    , _apsplPageSize = Nothing
    , _apsplCallback = Nothing
    }


-- | Required. Resource name for the access policy to list Service Perimeters
-- from. Format: \`accessPolicies\/{policy_id}\`
apsplParent :: Lens' AccessPoliciesServicePerimetersList Text
apsplParent
  = lens _apsplParent (\ s a -> s{_apsplParent = a})

-- | V1 error format.
apsplXgafv :: Lens' AccessPoliciesServicePerimetersList (Maybe Xgafv)
apsplXgafv
  = lens _apsplXgafv (\ s a -> s{_apsplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apsplUploadProtocol :: Lens' AccessPoliciesServicePerimetersList (Maybe Text)
apsplUploadProtocol
  = lens _apsplUploadProtocol
      (\ s a -> s{_apsplUploadProtocol = a})

-- | OAuth access token.
apsplAccessToken :: Lens' AccessPoliciesServicePerimetersList (Maybe Text)
apsplAccessToken
  = lens _apsplAccessToken
      (\ s a -> s{_apsplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apsplUploadType :: Lens' AccessPoliciesServicePerimetersList (Maybe Text)
apsplUploadType
  = lens _apsplUploadType
      (\ s a -> s{_apsplUploadType = a})

-- | Next page token for the next batch of Service Perimeter instances.
-- Defaults to the first page of results.
apsplPageToken :: Lens' AccessPoliciesServicePerimetersList (Maybe Text)
apsplPageToken
  = lens _apsplPageToken
      (\ s a -> s{_apsplPageToken = a})

-- | Number of Service Perimeters to include in the list. Default 100.
apsplPageSize :: Lens' AccessPoliciesServicePerimetersList (Maybe Int32)
apsplPageSize
  = lens _apsplPageSize
      (\ s a -> s{_apsplPageSize = a})
      . mapping _Coerce

-- | JSONP
apsplCallback :: Lens' AccessPoliciesServicePerimetersList (Maybe Text)
apsplCallback
  = lens _apsplCallback
      (\ s a -> s{_apsplCallback = a})

instance GoogleRequest
           AccessPoliciesServicePerimetersList
         where
        type Rs AccessPoliciesServicePerimetersList =
             ListServicePerimetersResponse
        type Scopes AccessPoliciesServicePerimetersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessPoliciesServicePerimetersList'{..}
          = go _apsplParent _apsplXgafv _apsplUploadProtocol
              _apsplAccessToken
              _apsplUploadType
              _apsplPageToken
              _apsplPageSize
              _apsplCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesServicePerimetersListResource)
                      mempty
