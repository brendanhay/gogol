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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Operations.List
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.operations.list@.
module Network.Google.Resource.Logging.Folders.Locations.Operations.List
    (
    -- * REST Resource
      FoldersLocationsOperationsListResource

    -- * Creating a Request
    , foldersLocationsOperationsList
    , FoldersLocationsOperationsList

    -- * Request Lenses
    , flolXgafv
    , flolUploadProtocol
    , flolAccessToken
    , flolUploadType
    , flolName
    , flolFilter
    , flolPageToken
    , flolPageSize
    , flolCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.operations.list@ method which the
-- 'FoldersLocationsOperationsList' request conforms to.
type FoldersLocationsOperationsListResource =
     "v2" :>
       Capture "name" Text :>
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
-- /See:/ 'foldersLocationsOperationsList' smart constructor.
data FoldersLocationsOperationsList =
  FoldersLocationsOperationsList'
    { _flolXgafv :: !(Maybe Xgafv)
    , _flolUploadProtocol :: !(Maybe Text)
    , _flolAccessToken :: !(Maybe Text)
    , _flolUploadType :: !(Maybe Text)
    , _flolName :: !Text
    , _flolFilter :: !(Maybe Text)
    , _flolPageToken :: !(Maybe Text)
    , _flolPageSize :: !(Maybe (Textual Int32))
    , _flolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flolXgafv'
--
-- * 'flolUploadProtocol'
--
-- * 'flolAccessToken'
--
-- * 'flolUploadType'
--
-- * 'flolName'
--
-- * 'flolFilter'
--
-- * 'flolPageToken'
--
-- * 'flolPageSize'
--
-- * 'flolCallback'
foldersLocationsOperationsList
    :: Text -- ^ 'flolName'
    -> FoldersLocationsOperationsList
foldersLocationsOperationsList pFlolName_ =
  FoldersLocationsOperationsList'
    { _flolXgafv = Nothing
    , _flolUploadProtocol = Nothing
    , _flolAccessToken = Nothing
    , _flolUploadType = Nothing
    , _flolName = pFlolName_
    , _flolFilter = Nothing
    , _flolPageToken = Nothing
    , _flolPageSize = Nothing
    , _flolCallback = Nothing
    }


-- | V1 error format.
flolXgafv :: Lens' FoldersLocationsOperationsList (Maybe Xgafv)
flolXgafv
  = lens _flolXgafv (\ s a -> s{_flolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flolUploadProtocol :: Lens' FoldersLocationsOperationsList (Maybe Text)
flolUploadProtocol
  = lens _flolUploadProtocol
      (\ s a -> s{_flolUploadProtocol = a})

-- | OAuth access token.
flolAccessToken :: Lens' FoldersLocationsOperationsList (Maybe Text)
flolAccessToken
  = lens _flolAccessToken
      (\ s a -> s{_flolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flolUploadType :: Lens' FoldersLocationsOperationsList (Maybe Text)
flolUploadType
  = lens _flolUploadType
      (\ s a -> s{_flolUploadType = a})

-- | The name of the operation\'s parent resource.
flolName :: Lens' FoldersLocationsOperationsList Text
flolName = lens _flolName (\ s a -> s{_flolName = a})

-- | The standard list filter.
flolFilter :: Lens' FoldersLocationsOperationsList (Maybe Text)
flolFilter
  = lens _flolFilter (\ s a -> s{_flolFilter = a})

-- | The standard list page token.
flolPageToken :: Lens' FoldersLocationsOperationsList (Maybe Text)
flolPageToken
  = lens _flolPageToken
      (\ s a -> s{_flolPageToken = a})

-- | The standard list page size.
flolPageSize :: Lens' FoldersLocationsOperationsList (Maybe Int32)
flolPageSize
  = lens _flolPageSize (\ s a -> s{_flolPageSize = a})
      . mapping _Coerce

-- | JSONP
flolCallback :: Lens' FoldersLocationsOperationsList (Maybe Text)
flolCallback
  = lens _flolCallback (\ s a -> s{_flolCallback = a})

instance GoogleRequest FoldersLocationsOperationsList
         where
        type Rs FoldersLocationsOperationsList =
             ListOperationsResponse
        type Scopes FoldersLocationsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLocationsOperationsList'{..}
          = go _flolName _flolXgafv _flolUploadProtocol
              _flolAccessToken
              _flolUploadType
              _flolFilter
              _flolPageToken
              _flolPageSize
              _flolCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsOperationsListResource)
                      mempty
