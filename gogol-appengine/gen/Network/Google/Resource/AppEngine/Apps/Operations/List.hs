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
-- Module      : Network.Google.Resource.AppEngine.Apps.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns UNIMPLEMENTED.NOTE: the
-- name binding allows API services to override the binding to use
-- different resource name schemes, such as users\/*\/operations. To
-- override the binding, API services can add a binding such as
-- \"\/v1\/{name=users\/*}\/operations\" to their service configuration.
-- For backwards compatibility, the default name includes the operations
-- collection id, however overriding users must ensure the name binding is
-- the parent resource, without the operations collection id.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.operations.list@.
module Network.Google.Resource.AppEngine.Apps.Operations.List
    (
    -- * REST Resource
      AppsOperationsListResource

    -- * Creating a Request
    , appsOperationsList
    , AppsOperationsList

    -- * Request Lenses
    , aolXgafv
    , aolUploadProtocol
    , aolAccessToken
    , aolUploadType
    , aolAppsId
    , aolFilter
    , aolPageToken
    , aolPageSize
    , aolCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.operations.list@ method which the
-- 'AppsOperationsList' request conforms to.
type AppsOperationsListResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "operations" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns UNIMPLEMENTED.NOTE: the
-- name binding allows API services to override the binding to use
-- different resource name schemes, such as users\/*\/operations. To
-- override the binding, API services can add a binding such as
-- \"\/v1\/{name=users\/*}\/operations\" to their service configuration.
-- For backwards compatibility, the default name includes the operations
-- collection id, however overriding users must ensure the name binding is
-- the parent resource, without the operations collection id.
--
-- /See:/ 'appsOperationsList' smart constructor.
data AppsOperationsList =
  AppsOperationsList'
    { _aolXgafv :: !(Maybe Xgafv)
    , _aolUploadProtocol :: !(Maybe Text)
    , _aolAccessToken :: !(Maybe Text)
    , _aolUploadType :: !(Maybe Text)
    , _aolAppsId :: !Text
    , _aolFilter :: !(Maybe Text)
    , _aolPageToken :: !(Maybe Text)
    , _aolPageSize :: !(Maybe (Textual Int32))
    , _aolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aolXgafv'
--
-- * 'aolUploadProtocol'
--
-- * 'aolAccessToken'
--
-- * 'aolUploadType'
--
-- * 'aolAppsId'
--
-- * 'aolFilter'
--
-- * 'aolPageToken'
--
-- * 'aolPageSize'
--
-- * 'aolCallback'
appsOperationsList
    :: Text -- ^ 'aolAppsId'
    -> AppsOperationsList
appsOperationsList pAolAppsId_ =
  AppsOperationsList'
    { _aolXgafv = Nothing
    , _aolUploadProtocol = Nothing
    , _aolAccessToken = Nothing
    , _aolUploadType = Nothing
    , _aolAppsId = pAolAppsId_
    , _aolFilter = Nothing
    , _aolPageToken = Nothing
    , _aolPageSize = Nothing
    , _aolCallback = Nothing
    }


-- | V1 error format.
aolXgafv :: Lens' AppsOperationsList (Maybe Xgafv)
aolXgafv = lens _aolXgafv (\ s a -> s{_aolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aolUploadProtocol :: Lens' AppsOperationsList (Maybe Text)
aolUploadProtocol
  = lens _aolUploadProtocol
      (\ s a -> s{_aolUploadProtocol = a})

-- | OAuth access token.
aolAccessToken :: Lens' AppsOperationsList (Maybe Text)
aolAccessToken
  = lens _aolAccessToken
      (\ s a -> s{_aolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aolUploadType :: Lens' AppsOperationsList (Maybe Text)
aolUploadType
  = lens _aolUploadType
      (\ s a -> s{_aolUploadType = a})

-- | Part of \`name\`. The name of the operation\'s parent resource.
aolAppsId :: Lens' AppsOperationsList Text
aolAppsId
  = lens _aolAppsId (\ s a -> s{_aolAppsId = a})

-- | The standard list filter.
aolFilter :: Lens' AppsOperationsList (Maybe Text)
aolFilter
  = lens _aolFilter (\ s a -> s{_aolFilter = a})

-- | The standard list page token.
aolPageToken :: Lens' AppsOperationsList (Maybe Text)
aolPageToken
  = lens _aolPageToken (\ s a -> s{_aolPageToken = a})

-- | The standard list page size.
aolPageSize :: Lens' AppsOperationsList (Maybe Int32)
aolPageSize
  = lens _aolPageSize (\ s a -> s{_aolPageSize = a}) .
      mapping _Coerce

-- | JSONP
aolCallback :: Lens' AppsOperationsList (Maybe Text)
aolCallback
  = lens _aolCallback (\ s a -> s{_aolCallback = a})

instance GoogleRequest AppsOperationsList where
        type Rs AppsOperationsList = ListOperationsResponse
        type Scopes AppsOperationsList =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsOperationsList'{..}
          = go _aolAppsId _aolXgafv _aolUploadProtocol
              _aolAccessToken
              _aolUploadType
              _aolFilter
              _aolPageToken
              _aolPageSize
              _aolCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsOperationsListResource)
                      mempty
