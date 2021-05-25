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
-- Module      : Network.Google.Resource.Run.Namespaces.Services.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List services.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.services.list@.
module Network.Google.Resource.Run.Namespaces.Services.List
    (
    -- * REST Resource
      NamespacesServicesListResource

    -- * Creating a Request
    , namespacesServicesList
    , NamespacesServicesList

    -- * Request Lenses
    , nslParent
    , nslXgafv
    , nslFieldSelector
    , nslUploadProtocol
    , nslAccessToken
    , nslResourceVersion
    , nslLabelSelector
    , nslUploadType
    , nslLimit
    , nslIncludeUninitialized
    , nslContinue
    , nslWatch
    , nslCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.services.list@ method which the
-- 'NamespacesServicesList' request conforms to.
type NamespacesServicesListResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "parent" Text :>
             "services" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "fieldSelector" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "resourceVersion" Text :>
                         QueryParam "labelSelector" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "limit" (Textual Int32) :>
                               QueryParam "includeUninitialized" Bool :>
                                 QueryParam "continue" Text :>
                                   QueryParam "watch" Bool :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListServicesResponse

-- | List services.
--
-- /See:/ 'namespacesServicesList' smart constructor.
data NamespacesServicesList =
  NamespacesServicesList'
    { _nslParent :: !Text
    , _nslXgafv :: !(Maybe Xgafv)
    , _nslFieldSelector :: !(Maybe Text)
    , _nslUploadProtocol :: !(Maybe Text)
    , _nslAccessToken :: !(Maybe Text)
    , _nslResourceVersion :: !(Maybe Text)
    , _nslLabelSelector :: !(Maybe Text)
    , _nslUploadType :: !(Maybe Text)
    , _nslLimit :: !(Maybe (Textual Int32))
    , _nslIncludeUninitialized :: !(Maybe Bool)
    , _nslContinue :: !(Maybe Text)
    , _nslWatch :: !(Maybe Bool)
    , _nslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nslParent'
--
-- * 'nslXgafv'
--
-- * 'nslFieldSelector'
--
-- * 'nslUploadProtocol'
--
-- * 'nslAccessToken'
--
-- * 'nslResourceVersion'
--
-- * 'nslLabelSelector'
--
-- * 'nslUploadType'
--
-- * 'nslLimit'
--
-- * 'nslIncludeUninitialized'
--
-- * 'nslContinue'
--
-- * 'nslWatch'
--
-- * 'nslCallback'
namespacesServicesList
    :: Text -- ^ 'nslParent'
    -> NamespacesServicesList
namespacesServicesList pNslParent_ =
  NamespacesServicesList'
    { _nslParent = pNslParent_
    , _nslXgafv = Nothing
    , _nslFieldSelector = Nothing
    , _nslUploadProtocol = Nothing
    , _nslAccessToken = Nothing
    , _nslResourceVersion = Nothing
    , _nslLabelSelector = Nothing
    , _nslUploadType = Nothing
    , _nslLimit = Nothing
    , _nslIncludeUninitialized = Nothing
    , _nslContinue = Nothing
    , _nslWatch = Nothing
    , _nslCallback = Nothing
    }


-- | The namespace from which the services should be listed. For Cloud Run
-- (fully managed), replace {namespace_id} with the project ID or number.
nslParent :: Lens' NamespacesServicesList Text
nslParent
  = lens _nslParent (\ s a -> s{_nslParent = a})

-- | V1 error format.
nslXgafv :: Lens' NamespacesServicesList (Maybe Xgafv)
nslXgafv = lens _nslXgafv (\ s a -> s{_nslXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
nslFieldSelector :: Lens' NamespacesServicesList (Maybe Text)
nslFieldSelector
  = lens _nslFieldSelector
      (\ s a -> s{_nslFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nslUploadProtocol :: Lens' NamespacesServicesList (Maybe Text)
nslUploadProtocol
  = lens _nslUploadProtocol
      (\ s a -> s{_nslUploadProtocol = a})

-- | OAuth access token.
nslAccessToken :: Lens' NamespacesServicesList (Maybe Text)
nslAccessToken
  = lens _nslAccessToken
      (\ s a -> s{_nslAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
nslResourceVersion :: Lens' NamespacesServicesList (Maybe Text)
nslResourceVersion
  = lens _nslResourceVersion
      (\ s a -> s{_nslResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
nslLabelSelector :: Lens' NamespacesServicesList (Maybe Text)
nslLabelSelector
  = lens _nslLabelSelector
      (\ s a -> s{_nslLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nslUploadType :: Lens' NamespacesServicesList (Maybe Text)
nslUploadType
  = lens _nslUploadType
      (\ s a -> s{_nslUploadType = a})

-- | Optional. The maximum number of records that should be returned.
nslLimit :: Lens' NamespacesServicesList (Maybe Int32)
nslLimit
  = lens _nslLimit (\ s a -> s{_nslLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
nslIncludeUninitialized :: Lens' NamespacesServicesList (Maybe Bool)
nslIncludeUninitialized
  = lens _nslIncludeUninitialized
      (\ s a -> s{_nslIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
nslContinue :: Lens' NamespacesServicesList (Maybe Text)
nslContinue
  = lens _nslContinue (\ s a -> s{_nslContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
nslWatch :: Lens' NamespacesServicesList (Maybe Bool)
nslWatch = lens _nslWatch (\ s a -> s{_nslWatch = a})

-- | JSONP
nslCallback :: Lens' NamespacesServicesList (Maybe Text)
nslCallback
  = lens _nslCallback (\ s a -> s{_nslCallback = a})

instance GoogleRequest NamespacesServicesList where
        type Rs NamespacesServicesList = ListServicesResponse
        type Scopes NamespacesServicesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesServicesList'{..}
          = go _nslParent _nslXgafv _nslFieldSelector
              _nslUploadProtocol
              _nslAccessToken
              _nslResourceVersion
              _nslLabelSelector
              _nslUploadType
              _nslLimit
              _nslIncludeUninitialized
              _nslContinue
              _nslWatch
              _nslCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesServicesListResource)
                      mempty
