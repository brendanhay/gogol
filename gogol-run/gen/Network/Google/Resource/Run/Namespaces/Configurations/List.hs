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
-- Module      : Network.Google.Resource.Run.Namespaces.Configurations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List configurations.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.configurations.list@.
module Network.Google.Resource.Run.Namespaces.Configurations.List
    (
    -- * REST Resource
      NamespacesConfigurationsListResource

    -- * Creating a Request
    , namespacesConfigurationsList
    , NamespacesConfigurationsList

    -- * Request Lenses
    , nclParent
    , nclXgafv
    , nclFieldSelector
    , nclUploadProtocol
    , nclAccessToken
    , nclResourceVersion
    , nclLabelSelector
    , nclUploadType
    , nclLimit
    , nclIncludeUninitialized
    , nclContinue
    , nclWatch
    , nclCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.configurations.list@ method which the
-- 'NamespacesConfigurationsList' request conforms to.
type NamespacesConfigurationsListResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "parent" Text :>
             "configurations" :>
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
                                         Get '[JSON] ListConfigurationsResponse

-- | List configurations.
--
-- /See:/ 'namespacesConfigurationsList' smart constructor.
data NamespacesConfigurationsList =
  NamespacesConfigurationsList'
    { _nclParent :: !Text
    , _nclXgafv :: !(Maybe Xgafv)
    , _nclFieldSelector :: !(Maybe Text)
    , _nclUploadProtocol :: !(Maybe Text)
    , _nclAccessToken :: !(Maybe Text)
    , _nclResourceVersion :: !(Maybe Text)
    , _nclLabelSelector :: !(Maybe Text)
    , _nclUploadType :: !(Maybe Text)
    , _nclLimit :: !(Maybe (Textual Int32))
    , _nclIncludeUninitialized :: !(Maybe Bool)
    , _nclContinue :: !(Maybe Text)
    , _nclWatch :: !(Maybe Bool)
    , _nclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesConfigurationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nclParent'
--
-- * 'nclXgafv'
--
-- * 'nclFieldSelector'
--
-- * 'nclUploadProtocol'
--
-- * 'nclAccessToken'
--
-- * 'nclResourceVersion'
--
-- * 'nclLabelSelector'
--
-- * 'nclUploadType'
--
-- * 'nclLimit'
--
-- * 'nclIncludeUninitialized'
--
-- * 'nclContinue'
--
-- * 'nclWatch'
--
-- * 'nclCallback'
namespacesConfigurationsList
    :: Text -- ^ 'nclParent'
    -> NamespacesConfigurationsList
namespacesConfigurationsList pNclParent_ =
  NamespacesConfigurationsList'
    { _nclParent = pNclParent_
    , _nclXgafv = Nothing
    , _nclFieldSelector = Nothing
    , _nclUploadProtocol = Nothing
    , _nclAccessToken = Nothing
    , _nclResourceVersion = Nothing
    , _nclLabelSelector = Nothing
    , _nclUploadType = Nothing
    , _nclLimit = Nothing
    , _nclIncludeUninitialized = Nothing
    , _nclContinue = Nothing
    , _nclWatch = Nothing
    , _nclCallback = Nothing
    }


-- | The namespace from which the configurations should be listed. For Cloud
-- Run (fully managed), replace {namespace_id} with the project ID or
-- number.
nclParent :: Lens' NamespacesConfigurationsList Text
nclParent
  = lens _nclParent (\ s a -> s{_nclParent = a})

-- | V1 error format.
nclXgafv :: Lens' NamespacesConfigurationsList (Maybe Xgafv)
nclXgafv = lens _nclXgafv (\ s a -> s{_nclXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
nclFieldSelector :: Lens' NamespacesConfigurationsList (Maybe Text)
nclFieldSelector
  = lens _nclFieldSelector
      (\ s a -> s{_nclFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nclUploadProtocol :: Lens' NamespacesConfigurationsList (Maybe Text)
nclUploadProtocol
  = lens _nclUploadProtocol
      (\ s a -> s{_nclUploadProtocol = a})

-- | OAuth access token.
nclAccessToken :: Lens' NamespacesConfigurationsList (Maybe Text)
nclAccessToken
  = lens _nclAccessToken
      (\ s a -> s{_nclAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
nclResourceVersion :: Lens' NamespacesConfigurationsList (Maybe Text)
nclResourceVersion
  = lens _nclResourceVersion
      (\ s a -> s{_nclResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
nclLabelSelector :: Lens' NamespacesConfigurationsList (Maybe Text)
nclLabelSelector
  = lens _nclLabelSelector
      (\ s a -> s{_nclLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nclUploadType :: Lens' NamespacesConfigurationsList (Maybe Text)
nclUploadType
  = lens _nclUploadType
      (\ s a -> s{_nclUploadType = a})

-- | Optional. The maximum number of records that should be returned.
nclLimit :: Lens' NamespacesConfigurationsList (Maybe Int32)
nclLimit
  = lens _nclLimit (\ s a -> s{_nclLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
nclIncludeUninitialized :: Lens' NamespacesConfigurationsList (Maybe Bool)
nclIncludeUninitialized
  = lens _nclIncludeUninitialized
      (\ s a -> s{_nclIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
nclContinue :: Lens' NamespacesConfigurationsList (Maybe Text)
nclContinue
  = lens _nclContinue (\ s a -> s{_nclContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
nclWatch :: Lens' NamespacesConfigurationsList (Maybe Bool)
nclWatch = lens _nclWatch (\ s a -> s{_nclWatch = a})

-- | JSONP
nclCallback :: Lens' NamespacesConfigurationsList (Maybe Text)
nclCallback
  = lens _nclCallback (\ s a -> s{_nclCallback = a})

instance GoogleRequest NamespacesConfigurationsList
         where
        type Rs NamespacesConfigurationsList =
             ListConfigurationsResponse
        type Scopes NamespacesConfigurationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesConfigurationsList'{..}
          = go _nclParent _nclXgafv _nclFieldSelector
              _nclUploadProtocol
              _nclAccessToken
              _nclResourceVersion
              _nclLabelSelector
              _nclUploadType
              _nclLimit
              _nclIncludeUninitialized
              _nclContinue
              _nclWatch
              _nclCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesConfigurationsListResource)
                      mempty
