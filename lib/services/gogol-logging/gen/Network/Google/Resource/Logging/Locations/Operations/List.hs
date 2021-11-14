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
-- Module      : Network.Google.Resource.Logging.Locations.Operations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.operations.list@.
module Network.Google.Resource.Logging.Locations.Operations.List
    (
    -- * REST Resource
      LocationsOperationsListResource

    -- * Creating a Request
    , locationsOperationsList
    , LocationsOperationsList

    -- * Request Lenses
    , lolXgafv
    , lolUploadProtocol
    , lolAccessToken
    , lolUploadType
    , lolName
    , lolFilter
    , lolPageToken
    , lolPageSize
    , lolCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.operations.list@ method which the
-- 'LocationsOperationsList' request conforms to.
type LocationsOperationsListResource =
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
-- /See:/ 'locationsOperationsList' smart constructor.
data LocationsOperationsList =
  LocationsOperationsList'
    { _lolXgafv :: !(Maybe Xgafv)
    , _lolUploadProtocol :: !(Maybe Text)
    , _lolAccessToken :: !(Maybe Text)
    , _lolUploadType :: !(Maybe Text)
    , _lolName :: !Text
    , _lolFilter :: !(Maybe Text)
    , _lolPageToken :: !(Maybe Text)
    , _lolPageSize :: !(Maybe (Textual Int32))
    , _lolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lolXgafv'
--
-- * 'lolUploadProtocol'
--
-- * 'lolAccessToken'
--
-- * 'lolUploadType'
--
-- * 'lolName'
--
-- * 'lolFilter'
--
-- * 'lolPageToken'
--
-- * 'lolPageSize'
--
-- * 'lolCallback'
locationsOperationsList
    :: Text -- ^ 'lolName'
    -> LocationsOperationsList
locationsOperationsList pLolName_ =
  LocationsOperationsList'
    { _lolXgafv = Nothing
    , _lolUploadProtocol = Nothing
    , _lolAccessToken = Nothing
    , _lolUploadType = Nothing
    , _lolName = pLolName_
    , _lolFilter = Nothing
    , _lolPageToken = Nothing
    , _lolPageSize = Nothing
    , _lolCallback = Nothing
    }


-- | V1 error format.
lolXgafv :: Lens' LocationsOperationsList (Maybe Xgafv)
lolXgafv = lens _lolXgafv (\ s a -> s{_lolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lolUploadProtocol :: Lens' LocationsOperationsList (Maybe Text)
lolUploadProtocol
  = lens _lolUploadProtocol
      (\ s a -> s{_lolUploadProtocol = a})

-- | OAuth access token.
lolAccessToken :: Lens' LocationsOperationsList (Maybe Text)
lolAccessToken
  = lens _lolAccessToken
      (\ s a -> s{_lolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lolUploadType :: Lens' LocationsOperationsList (Maybe Text)
lolUploadType
  = lens _lolUploadType
      (\ s a -> s{_lolUploadType = a})

-- | The name of the operation\'s parent resource.
lolName :: Lens' LocationsOperationsList Text
lolName = lens _lolName (\ s a -> s{_lolName = a})

-- | The standard list filter.
lolFilter :: Lens' LocationsOperationsList (Maybe Text)
lolFilter
  = lens _lolFilter (\ s a -> s{_lolFilter = a})

-- | The standard list page token.
lolPageToken :: Lens' LocationsOperationsList (Maybe Text)
lolPageToken
  = lens _lolPageToken (\ s a -> s{_lolPageToken = a})

-- | The standard list page size.
lolPageSize :: Lens' LocationsOperationsList (Maybe Int32)
lolPageSize
  = lens _lolPageSize (\ s a -> s{_lolPageSize = a}) .
      mapping _Coerce

-- | JSONP
lolCallback :: Lens' LocationsOperationsList (Maybe Text)
lolCallback
  = lens _lolCallback (\ s a -> s{_lolCallback = a})

instance GoogleRequest LocationsOperationsList where
        type Rs LocationsOperationsList =
             ListOperationsResponse
        type Scopes LocationsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LocationsOperationsList'{..}
          = go _lolName _lolXgafv _lolUploadProtocol
              _lolAccessToken
              _lolUploadType
              _lolFilter
              _lolPageToken
              _lolPageSize
              _lolCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsOperationsListResource)
                      mempty
