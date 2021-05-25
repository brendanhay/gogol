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
-- Module      : Network.Google.Resource.Run.Namespaces.Revisions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List revisions.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.revisions.list@.
module Network.Google.Resource.Run.Namespaces.Revisions.List
    (
    -- * REST Resource
      NamespacesRevisionsListResource

    -- * Creating a Request
    , namespacesRevisionsList
    , NamespacesRevisionsList

    -- * Request Lenses
    , nParent
    , nXgafv
    , nFieldSelector
    , nUploadProtocol
    , nAccessToken
    , nResourceVersion
    , nLabelSelector
    , nUploadType
    , nLimit
    , nIncludeUninitialized
    , nContinue
    , nWatch
    , nCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.revisions.list@ method which the
-- 'NamespacesRevisionsList' request conforms to.
type NamespacesRevisionsListResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "parent" Text :>
             "revisions" :>
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
                                         Get '[JSON] ListRevisionsResponse

-- | List revisions.
--
-- /See:/ 'namespacesRevisionsList' smart constructor.
data NamespacesRevisionsList =
  NamespacesRevisionsList'
    { _nParent :: !Text
    , _nXgafv :: !(Maybe Xgafv)
    , _nFieldSelector :: !(Maybe Text)
    , _nUploadProtocol :: !(Maybe Text)
    , _nAccessToken :: !(Maybe Text)
    , _nResourceVersion :: !(Maybe Text)
    , _nLabelSelector :: !(Maybe Text)
    , _nUploadType :: !(Maybe Text)
    , _nLimit :: !(Maybe (Textual Int32))
    , _nIncludeUninitialized :: !(Maybe Bool)
    , _nContinue :: !(Maybe Text)
    , _nWatch :: !(Maybe Bool)
    , _nCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesRevisionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nParent'
--
-- * 'nXgafv'
--
-- * 'nFieldSelector'
--
-- * 'nUploadProtocol'
--
-- * 'nAccessToken'
--
-- * 'nResourceVersion'
--
-- * 'nLabelSelector'
--
-- * 'nUploadType'
--
-- * 'nLimit'
--
-- * 'nIncludeUninitialized'
--
-- * 'nContinue'
--
-- * 'nWatch'
--
-- * 'nCallback'
namespacesRevisionsList
    :: Text -- ^ 'nParent'
    -> NamespacesRevisionsList
namespacesRevisionsList pNParent_ =
  NamespacesRevisionsList'
    { _nParent = pNParent_
    , _nXgafv = Nothing
    , _nFieldSelector = Nothing
    , _nUploadProtocol = Nothing
    , _nAccessToken = Nothing
    , _nResourceVersion = Nothing
    , _nLabelSelector = Nothing
    , _nUploadType = Nothing
    , _nLimit = Nothing
    , _nIncludeUninitialized = Nothing
    , _nContinue = Nothing
    , _nWatch = Nothing
    , _nCallback = Nothing
    }


-- | The namespace from which the revisions should be listed. For Cloud Run
-- (fully managed), replace {namespace_id} with the project ID or number.
nParent :: Lens' NamespacesRevisionsList Text
nParent = lens _nParent (\ s a -> s{_nParent = a})

-- | V1 error format.
nXgafv :: Lens' NamespacesRevisionsList (Maybe Xgafv)
nXgafv = lens _nXgafv (\ s a -> s{_nXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
nFieldSelector :: Lens' NamespacesRevisionsList (Maybe Text)
nFieldSelector
  = lens _nFieldSelector
      (\ s a -> s{_nFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nUploadProtocol :: Lens' NamespacesRevisionsList (Maybe Text)
nUploadProtocol
  = lens _nUploadProtocol
      (\ s a -> s{_nUploadProtocol = a})

-- | OAuth access token.
nAccessToken :: Lens' NamespacesRevisionsList (Maybe Text)
nAccessToken
  = lens _nAccessToken (\ s a -> s{_nAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
nResourceVersion :: Lens' NamespacesRevisionsList (Maybe Text)
nResourceVersion
  = lens _nResourceVersion
      (\ s a -> s{_nResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
nLabelSelector :: Lens' NamespacesRevisionsList (Maybe Text)
nLabelSelector
  = lens _nLabelSelector
      (\ s a -> s{_nLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nUploadType :: Lens' NamespacesRevisionsList (Maybe Text)
nUploadType
  = lens _nUploadType (\ s a -> s{_nUploadType = a})

-- | Optional. The maximum number of records that should be returned.
nLimit :: Lens' NamespacesRevisionsList (Maybe Int32)
nLimit
  = lens _nLimit (\ s a -> s{_nLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
nIncludeUninitialized :: Lens' NamespacesRevisionsList (Maybe Bool)
nIncludeUninitialized
  = lens _nIncludeUninitialized
      (\ s a -> s{_nIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
nContinue :: Lens' NamespacesRevisionsList (Maybe Text)
nContinue
  = lens _nContinue (\ s a -> s{_nContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
nWatch :: Lens' NamespacesRevisionsList (Maybe Bool)
nWatch = lens _nWatch (\ s a -> s{_nWatch = a})

-- | JSONP
nCallback :: Lens' NamespacesRevisionsList (Maybe Text)
nCallback
  = lens _nCallback (\ s a -> s{_nCallback = a})

instance GoogleRequest NamespacesRevisionsList where
        type Rs NamespacesRevisionsList =
             ListRevisionsResponse
        type Scopes NamespacesRevisionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesRevisionsList'{..}
          = go _nParent _nXgafv _nFieldSelector
              _nUploadProtocol
              _nAccessToken
              _nResourceVersion
              _nLabelSelector
              _nUploadType
              _nLimit
              _nIncludeUninitialized
              _nContinue
              _nWatch
              _nCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesRevisionsListResource)
                      mempty
