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
-- Module      : Network.Google.Resource.Run.Namespaces.DomainmAppings.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List domain mappings.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.domainmappings.list@.
module Network.Google.Resource.Run.Namespaces.DomainmAppings.List
    (
    -- * REST Resource
      NamespacesDomainmAppingsListResource

    -- * Creating a Request
    , namespacesDomainmAppingsList
    , NamespacesDomainmAppingsList

    -- * Request Lenses
    , ndalParent
    , ndalXgafv
    , ndalFieldSelector
    , ndalUploadProtocol
    , ndalAccessToken
    , ndalResourceVersion
    , ndalLabelSelector
    , ndalUploadType
    , ndalLimit
    , ndalIncludeUninitialized
    , ndalContinue
    , ndalWatch
    , ndalCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.domainmappings.list@ method which the
-- 'NamespacesDomainmAppingsList' request conforms to.
type NamespacesDomainmAppingsListResource =
     "apis" :>
       "domains.cloudrun.com" :>
         "v1" :>
           Capture "parent" Text :>
             "domainmappings" :>
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
                                         Get '[JSON] ListDomainMAppingsResponse

-- | List domain mappings.
--
-- /See:/ 'namespacesDomainmAppingsList' smart constructor.
data NamespacesDomainmAppingsList =
  NamespacesDomainmAppingsList'
    { _ndalParent :: !Text
    , _ndalXgafv :: !(Maybe Xgafv)
    , _ndalFieldSelector :: !(Maybe Text)
    , _ndalUploadProtocol :: !(Maybe Text)
    , _ndalAccessToken :: !(Maybe Text)
    , _ndalResourceVersion :: !(Maybe Text)
    , _ndalLabelSelector :: !(Maybe Text)
    , _ndalUploadType :: !(Maybe Text)
    , _ndalLimit :: !(Maybe (Textual Int32))
    , _ndalIncludeUninitialized :: !(Maybe Bool)
    , _ndalContinue :: !(Maybe Text)
    , _ndalWatch :: !(Maybe Bool)
    , _ndalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesDomainmAppingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndalParent'
--
-- * 'ndalXgafv'
--
-- * 'ndalFieldSelector'
--
-- * 'ndalUploadProtocol'
--
-- * 'ndalAccessToken'
--
-- * 'ndalResourceVersion'
--
-- * 'ndalLabelSelector'
--
-- * 'ndalUploadType'
--
-- * 'ndalLimit'
--
-- * 'ndalIncludeUninitialized'
--
-- * 'ndalContinue'
--
-- * 'ndalWatch'
--
-- * 'ndalCallback'
namespacesDomainmAppingsList
    :: Text -- ^ 'ndalParent'
    -> NamespacesDomainmAppingsList
namespacesDomainmAppingsList pNdalParent_ =
  NamespacesDomainmAppingsList'
    { _ndalParent = pNdalParent_
    , _ndalXgafv = Nothing
    , _ndalFieldSelector = Nothing
    , _ndalUploadProtocol = Nothing
    , _ndalAccessToken = Nothing
    , _ndalResourceVersion = Nothing
    , _ndalLabelSelector = Nothing
    , _ndalUploadType = Nothing
    , _ndalLimit = Nothing
    , _ndalIncludeUninitialized = Nothing
    , _ndalContinue = Nothing
    , _ndalWatch = Nothing
    , _ndalCallback = Nothing
    }


-- | The namespace from which the domain mappings should be listed. For Cloud
-- Run (fully managed), replace {namespace_id} with the project ID or
-- number.
ndalParent :: Lens' NamespacesDomainmAppingsList Text
ndalParent
  = lens _ndalParent (\ s a -> s{_ndalParent = a})

-- | V1 error format.
ndalXgafv :: Lens' NamespacesDomainmAppingsList (Maybe Xgafv)
ndalXgafv
  = lens _ndalXgafv (\ s a -> s{_ndalXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
ndalFieldSelector :: Lens' NamespacesDomainmAppingsList (Maybe Text)
ndalFieldSelector
  = lens _ndalFieldSelector
      (\ s a -> s{_ndalFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ndalUploadProtocol :: Lens' NamespacesDomainmAppingsList (Maybe Text)
ndalUploadProtocol
  = lens _ndalUploadProtocol
      (\ s a -> s{_ndalUploadProtocol = a})

-- | OAuth access token.
ndalAccessToken :: Lens' NamespacesDomainmAppingsList (Maybe Text)
ndalAccessToken
  = lens _ndalAccessToken
      (\ s a -> s{_ndalAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
ndalResourceVersion :: Lens' NamespacesDomainmAppingsList (Maybe Text)
ndalResourceVersion
  = lens _ndalResourceVersion
      (\ s a -> s{_ndalResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
ndalLabelSelector :: Lens' NamespacesDomainmAppingsList (Maybe Text)
ndalLabelSelector
  = lens _ndalLabelSelector
      (\ s a -> s{_ndalLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ndalUploadType :: Lens' NamespacesDomainmAppingsList (Maybe Text)
ndalUploadType
  = lens _ndalUploadType
      (\ s a -> s{_ndalUploadType = a})

-- | Optional. The maximum number of records that should be returned.
ndalLimit :: Lens' NamespacesDomainmAppingsList (Maybe Int32)
ndalLimit
  = lens _ndalLimit (\ s a -> s{_ndalLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
ndalIncludeUninitialized :: Lens' NamespacesDomainmAppingsList (Maybe Bool)
ndalIncludeUninitialized
  = lens _ndalIncludeUninitialized
      (\ s a -> s{_ndalIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
ndalContinue :: Lens' NamespacesDomainmAppingsList (Maybe Text)
ndalContinue
  = lens _ndalContinue (\ s a -> s{_ndalContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
ndalWatch :: Lens' NamespacesDomainmAppingsList (Maybe Bool)
ndalWatch
  = lens _ndalWatch (\ s a -> s{_ndalWatch = a})

-- | JSONP
ndalCallback :: Lens' NamespacesDomainmAppingsList (Maybe Text)
ndalCallback
  = lens _ndalCallback (\ s a -> s{_ndalCallback = a})

instance GoogleRequest NamespacesDomainmAppingsList
         where
        type Rs NamespacesDomainmAppingsList =
             ListDomainMAppingsResponse
        type Scopes NamespacesDomainmAppingsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesDomainmAppingsList'{..}
          = go _ndalParent _ndalXgafv _ndalFieldSelector
              _ndalUploadProtocol
              _ndalAccessToken
              _ndalResourceVersion
              _ndalLabelSelector
              _ndalUploadType
              _ndalLimit
              _ndalIncludeUninitialized
              _ndalContinue
              _ndalWatch
              _ndalCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesDomainmAppingsListResource)
                      mempty
