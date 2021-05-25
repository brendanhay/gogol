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
-- Module      : Network.Google.Resource.Run.Namespaces.Routes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List routes.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.routes.list@.
module Network.Google.Resource.Run.Namespaces.Routes.List
    (
    -- * REST Resource
      NamespacesRoutesListResource

    -- * Creating a Request
    , namespacesRoutesList
    , NamespacesRoutesList

    -- * Request Lenses
    , nrlParent
    , nrlXgafv
    , nrlFieldSelector
    , nrlUploadProtocol
    , nrlAccessToken
    , nrlResourceVersion
    , nrlLabelSelector
    , nrlUploadType
    , nrlLimit
    , nrlIncludeUninitialized
    , nrlContinue
    , nrlWatch
    , nrlCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.routes.list@ method which the
-- 'NamespacesRoutesList' request conforms to.
type NamespacesRoutesListResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "parent" Text :>
             "routes" :>
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
                                         Get '[JSON] ListRoutesResponse

-- | List routes.
--
-- /See:/ 'namespacesRoutesList' smart constructor.
data NamespacesRoutesList =
  NamespacesRoutesList'
    { _nrlParent :: !Text
    , _nrlXgafv :: !(Maybe Xgafv)
    , _nrlFieldSelector :: !(Maybe Text)
    , _nrlUploadProtocol :: !(Maybe Text)
    , _nrlAccessToken :: !(Maybe Text)
    , _nrlResourceVersion :: !(Maybe Text)
    , _nrlLabelSelector :: !(Maybe Text)
    , _nrlUploadType :: !(Maybe Text)
    , _nrlLimit :: !(Maybe (Textual Int32))
    , _nrlIncludeUninitialized :: !(Maybe Bool)
    , _nrlContinue :: !(Maybe Text)
    , _nrlWatch :: !(Maybe Bool)
    , _nrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesRoutesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrlParent'
--
-- * 'nrlXgafv'
--
-- * 'nrlFieldSelector'
--
-- * 'nrlUploadProtocol'
--
-- * 'nrlAccessToken'
--
-- * 'nrlResourceVersion'
--
-- * 'nrlLabelSelector'
--
-- * 'nrlUploadType'
--
-- * 'nrlLimit'
--
-- * 'nrlIncludeUninitialized'
--
-- * 'nrlContinue'
--
-- * 'nrlWatch'
--
-- * 'nrlCallback'
namespacesRoutesList
    :: Text -- ^ 'nrlParent'
    -> NamespacesRoutesList
namespacesRoutesList pNrlParent_ =
  NamespacesRoutesList'
    { _nrlParent = pNrlParent_
    , _nrlXgafv = Nothing
    , _nrlFieldSelector = Nothing
    , _nrlUploadProtocol = Nothing
    , _nrlAccessToken = Nothing
    , _nrlResourceVersion = Nothing
    , _nrlLabelSelector = Nothing
    , _nrlUploadType = Nothing
    , _nrlLimit = Nothing
    , _nrlIncludeUninitialized = Nothing
    , _nrlContinue = Nothing
    , _nrlWatch = Nothing
    , _nrlCallback = Nothing
    }


-- | The namespace from which the routes should be listed. For Cloud Run
-- (fully managed), replace {namespace_id} with the project ID or number.
nrlParent :: Lens' NamespacesRoutesList Text
nrlParent
  = lens _nrlParent (\ s a -> s{_nrlParent = a})

-- | V1 error format.
nrlXgafv :: Lens' NamespacesRoutesList (Maybe Xgafv)
nrlXgafv = lens _nrlXgafv (\ s a -> s{_nrlXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
nrlFieldSelector :: Lens' NamespacesRoutesList (Maybe Text)
nrlFieldSelector
  = lens _nrlFieldSelector
      (\ s a -> s{_nrlFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nrlUploadProtocol :: Lens' NamespacesRoutesList (Maybe Text)
nrlUploadProtocol
  = lens _nrlUploadProtocol
      (\ s a -> s{_nrlUploadProtocol = a})

-- | OAuth access token.
nrlAccessToken :: Lens' NamespacesRoutesList (Maybe Text)
nrlAccessToken
  = lens _nrlAccessToken
      (\ s a -> s{_nrlAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
nrlResourceVersion :: Lens' NamespacesRoutesList (Maybe Text)
nrlResourceVersion
  = lens _nrlResourceVersion
      (\ s a -> s{_nrlResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
nrlLabelSelector :: Lens' NamespacesRoutesList (Maybe Text)
nrlLabelSelector
  = lens _nrlLabelSelector
      (\ s a -> s{_nrlLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nrlUploadType :: Lens' NamespacesRoutesList (Maybe Text)
nrlUploadType
  = lens _nrlUploadType
      (\ s a -> s{_nrlUploadType = a})

-- | Optional. The maximum number of records that should be returned.
nrlLimit :: Lens' NamespacesRoutesList (Maybe Int32)
nrlLimit
  = lens _nrlLimit (\ s a -> s{_nrlLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
nrlIncludeUninitialized :: Lens' NamespacesRoutesList (Maybe Bool)
nrlIncludeUninitialized
  = lens _nrlIncludeUninitialized
      (\ s a -> s{_nrlIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
nrlContinue :: Lens' NamespacesRoutesList (Maybe Text)
nrlContinue
  = lens _nrlContinue (\ s a -> s{_nrlContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
nrlWatch :: Lens' NamespacesRoutesList (Maybe Bool)
nrlWatch = lens _nrlWatch (\ s a -> s{_nrlWatch = a})

-- | JSONP
nrlCallback :: Lens' NamespacesRoutesList (Maybe Text)
nrlCallback
  = lens _nrlCallback (\ s a -> s{_nrlCallback = a})

instance GoogleRequest NamespacesRoutesList where
        type Rs NamespacesRoutesList = ListRoutesResponse
        type Scopes NamespacesRoutesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesRoutesList'{..}
          = go _nrlParent _nrlXgafv _nrlFieldSelector
              _nrlUploadProtocol
              _nrlAccessToken
              _nrlResourceVersion
              _nrlLabelSelector
              _nrlUploadType
              _nrlLimit
              _nrlIncludeUninitialized
              _nrlContinue
              _nrlWatch
              _nrlCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesRoutesListResource)
                      mempty
