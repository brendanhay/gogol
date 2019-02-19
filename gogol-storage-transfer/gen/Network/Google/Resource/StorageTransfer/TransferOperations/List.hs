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
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding allows API services to override the binding to use
-- different resource name schemes, such as \`users\/*\/operations\`. To
-- override the binding, API services can add a binding such as
-- \`\"\/v1\/{name=users\/*}\/operations\"\` to their service
-- configuration. For backwards compatibility, the default name includes
-- the operations collection id, however overriding users must ensure the
-- name binding is the parent resource, without the operations collection
-- id.
--
-- /See:/ <https://cloud.google.com/storage/transfer Storage Transfer API Reference> for @storagetransfer.transferOperations.list@.
module Network.Google.Resource.StorageTransfer.TransferOperations.List
    (
    -- * REST Resource
      TransferOperationsListResource

    -- * Creating a Request
    , transferOperationsList
    , TransferOperationsList

    -- * Request Lenses
    , tolXgafv
    , tolUploadProtocol
    , tolAccessToken
    , tolUploadType
    , tolName
    , tolFilter
    , tolPageToken
    , tolPageSize
    , tolCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.list@ method which the
-- 'TransferOperationsList' request conforms to.
type TransferOperationsListResource =
     "v1" :>
       Capture "name" Text :>
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
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding allows API services to override the binding to use
-- different resource name schemes, such as \`users\/*\/operations\`. To
-- override the binding, API services can add a binding such as
-- \`\"\/v1\/{name=users\/*}\/operations\"\` to their service
-- configuration. For backwards compatibility, the default name includes
-- the operations collection id, however overriding users must ensure the
-- name binding is the parent resource, without the operations collection
-- id.
--
-- /See:/ 'transferOperationsList' smart constructor.
data TransferOperationsList =
  TransferOperationsList'
    { _tolXgafv          :: !(Maybe Xgafv)
    , _tolUploadProtocol :: !(Maybe Text)
    , _tolAccessToken    :: !(Maybe Text)
    , _tolUploadType     :: !(Maybe Text)
    , _tolName           :: !Text
    , _tolFilter         :: !(Maybe Text)
    , _tolPageToken      :: !(Maybe Text)
    , _tolPageSize       :: !(Maybe (Textual Int32))
    , _tolCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TransferOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tolXgafv'
--
-- * 'tolUploadProtocol'
--
-- * 'tolAccessToken'
--
-- * 'tolUploadType'
--
-- * 'tolName'
--
-- * 'tolFilter'
--
-- * 'tolPageToken'
--
-- * 'tolPageSize'
--
-- * 'tolCallback'
transferOperationsList
    :: Text -- ^ 'tolName'
    -> TransferOperationsList
transferOperationsList pTolName_ =
  TransferOperationsList'
    { _tolXgafv = Nothing
    , _tolUploadProtocol = Nothing
    , _tolAccessToken = Nothing
    , _tolUploadType = Nothing
    , _tolName = pTolName_
    , _tolFilter = Nothing
    , _tolPageToken = Nothing
    , _tolPageSize = Nothing
    , _tolCallback = Nothing
    }

-- | V1 error format.
tolXgafv :: Lens' TransferOperationsList (Maybe Xgafv)
tolXgafv = lens _tolXgafv (\ s a -> s{_tolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tolUploadProtocol :: Lens' TransferOperationsList (Maybe Text)
tolUploadProtocol
  = lens _tolUploadProtocol
      (\ s a -> s{_tolUploadProtocol = a})

-- | OAuth access token.
tolAccessToken :: Lens' TransferOperationsList (Maybe Text)
tolAccessToken
  = lens _tolAccessToken
      (\ s a -> s{_tolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tolUploadType :: Lens' TransferOperationsList (Maybe Text)
tolUploadType
  = lens _tolUploadType
      (\ s a -> s{_tolUploadType = a})

-- | The value \`transferOperations\`.
tolName :: Lens' TransferOperationsList Text
tolName = lens _tolName (\ s a -> s{_tolName = a})

-- | A list of query parameters specified as JSON text in the form of
-- {\\\"project_id\\\" : \\\"my_project_id\\\", \\\"job_names\\\" :
-- [\\\"jobid1\\\", \\\"jobid2\\\",...], \\\"operation_names\\\" :
-- [\\\"opid1\\\", \\\"opid2\\\",...],
-- \\\"transfer_statuses\\\":[\\\"status1\\\", \\\"status2\\\",...]}. Since
-- \`job_names\`, \`operation_names\`, and \`transfer_statuses\` support
-- multiple values, they must be specified with array notation.
-- \`job_names\`, \`operation_names\`, and \`transfer_statuses\` are
-- optional.
tolFilter :: Lens' TransferOperationsList (Maybe Text)
tolFilter
  = lens _tolFilter (\ s a -> s{_tolFilter = a})

-- | The list page token.
tolPageToken :: Lens' TransferOperationsList (Maybe Text)
tolPageToken
  = lens _tolPageToken (\ s a -> s{_tolPageToken = a})

-- | The list page size. The max allowed value is 256.
tolPageSize :: Lens' TransferOperationsList (Maybe Int32)
tolPageSize
  = lens _tolPageSize (\ s a -> s{_tolPageSize = a}) .
      mapping _Coerce

-- | JSONP
tolCallback :: Lens' TransferOperationsList (Maybe Text)
tolCallback
  = lens _tolCallback (\ s a -> s{_tolCallback = a})

instance GoogleRequest TransferOperationsList where
        type Rs TransferOperationsList =
             ListOperationsResponse
        type Scopes TransferOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TransferOperationsList'{..}
          = go _tolName _tolXgafv _tolUploadProtocol
              _tolAccessToken
              _tolUploadType
              _tolFilter
              _tolPageToken
              _tolPageSize
              _tolCallback
              (Just AltJSON)
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferOperationsListResource)
                      mempty
