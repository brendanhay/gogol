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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Operations.List
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.operations.list@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Operations.List
    (
    -- * REST Resource
      BillingAccountsLocationsOperationsListResource

    -- * Creating a Request
    , billingAccountsLocationsOperationsList
    , BillingAccountsLocationsOperationsList

    -- * Request Lenses
    , balolXgafv
    , balolUploadProtocol
    , balolAccessToken
    , balolUploadType
    , balolName
    , balolFilter
    , balolPageToken
    , balolPageSize
    , balolCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.operations.list@ method which the
-- 'BillingAccountsLocationsOperationsList' request conforms to.
type BillingAccountsLocationsOperationsListResource =
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
-- /See:/ 'billingAccountsLocationsOperationsList' smart constructor.
data BillingAccountsLocationsOperationsList =
  BillingAccountsLocationsOperationsList'
    { _balolXgafv :: !(Maybe Xgafv)
    , _balolUploadProtocol :: !(Maybe Text)
    , _balolAccessToken :: !(Maybe Text)
    , _balolUploadType :: !(Maybe Text)
    , _balolName :: !Text
    , _balolFilter :: !(Maybe Text)
    , _balolPageToken :: !(Maybe Text)
    , _balolPageSize :: !(Maybe (Textual Int32))
    , _balolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balolXgafv'
--
-- * 'balolUploadProtocol'
--
-- * 'balolAccessToken'
--
-- * 'balolUploadType'
--
-- * 'balolName'
--
-- * 'balolFilter'
--
-- * 'balolPageToken'
--
-- * 'balolPageSize'
--
-- * 'balolCallback'
billingAccountsLocationsOperationsList
    :: Text -- ^ 'balolName'
    -> BillingAccountsLocationsOperationsList
billingAccountsLocationsOperationsList pBalolName_ =
  BillingAccountsLocationsOperationsList'
    { _balolXgafv = Nothing
    , _balolUploadProtocol = Nothing
    , _balolAccessToken = Nothing
    , _balolUploadType = Nothing
    , _balolName = pBalolName_
    , _balolFilter = Nothing
    , _balolPageToken = Nothing
    , _balolPageSize = Nothing
    , _balolCallback = Nothing
    }


-- | V1 error format.
balolXgafv :: Lens' BillingAccountsLocationsOperationsList (Maybe Xgafv)
balolXgafv
  = lens _balolXgafv (\ s a -> s{_balolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balolUploadProtocol :: Lens' BillingAccountsLocationsOperationsList (Maybe Text)
balolUploadProtocol
  = lens _balolUploadProtocol
      (\ s a -> s{_balolUploadProtocol = a})

-- | OAuth access token.
balolAccessToken :: Lens' BillingAccountsLocationsOperationsList (Maybe Text)
balolAccessToken
  = lens _balolAccessToken
      (\ s a -> s{_balolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balolUploadType :: Lens' BillingAccountsLocationsOperationsList (Maybe Text)
balolUploadType
  = lens _balolUploadType
      (\ s a -> s{_balolUploadType = a})

-- | The name of the operation\'s parent resource.
balolName :: Lens' BillingAccountsLocationsOperationsList Text
balolName
  = lens _balolName (\ s a -> s{_balolName = a})

-- | The standard list filter.
balolFilter :: Lens' BillingAccountsLocationsOperationsList (Maybe Text)
balolFilter
  = lens _balolFilter (\ s a -> s{_balolFilter = a})

-- | The standard list page token.
balolPageToken :: Lens' BillingAccountsLocationsOperationsList (Maybe Text)
balolPageToken
  = lens _balolPageToken
      (\ s a -> s{_balolPageToken = a})

-- | The standard list page size.
balolPageSize :: Lens' BillingAccountsLocationsOperationsList (Maybe Int32)
balolPageSize
  = lens _balolPageSize
      (\ s a -> s{_balolPageSize = a})
      . mapping _Coerce

-- | JSONP
balolCallback :: Lens' BillingAccountsLocationsOperationsList (Maybe Text)
balolCallback
  = lens _balolCallback
      (\ s a -> s{_balolCallback = a})

instance GoogleRequest
           BillingAccountsLocationsOperationsList
         where
        type Rs BillingAccountsLocationsOperationsList =
             ListOperationsResponse
        type Scopes BillingAccountsLocationsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient
          BillingAccountsLocationsOperationsList'{..}
          = go _balolName _balolXgafv _balolUploadProtocol
              _balolAccessToken
              _balolUploadType
              _balolFilter
              _balolPageToken
              _balolPageSize
              _balolCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsLocationsOperationsListResource)
                      mempty
