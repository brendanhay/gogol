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
-- Module      : Network.Google.Resource.CloudFunctions.Operations.List
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
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.operations.list@.
module Network.Google.Resource.CloudFunctions.Operations.List
    (
    -- * REST Resource
      OperationsListResource

    -- * Creating a Request
    , operationsList
    , OperationsList

    -- * Request Lenses
    , olXgafv
    , olUploadProtocol
    , olAccessToken
    , olUploadType
    , olName
    , olFilter
    , olPageToken
    , olPageSize
    , olCallback
    ) where

import Network.Google.CloudFunctions.Types
import Network.Google.Prelude

-- | A resource alias for @cloudfunctions.operations.list@ method which the
-- 'OperationsList' request conforms to.
type OperationsListResource =
     "v1" :>
       "operations" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "name" Text :>
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
-- /See:/ 'operationsList' smart constructor.
data OperationsList =
  OperationsList'
    { _olXgafv :: !(Maybe Xgafv)
    , _olUploadProtocol :: !(Maybe Text)
    , _olAccessToken :: !(Maybe Text)
    , _olUploadType :: !(Maybe Text)
    , _olName :: !(Maybe Text)
    , _olFilter :: !(Maybe Text)
    , _olPageToken :: !(Maybe Text)
    , _olPageSize :: !(Maybe (Textual Int32))
    , _olCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olXgafv'
--
-- * 'olUploadProtocol'
--
-- * 'olAccessToken'
--
-- * 'olUploadType'
--
-- * 'olName'
--
-- * 'olFilter'
--
-- * 'olPageToken'
--
-- * 'olPageSize'
--
-- * 'olCallback'
operationsList
    :: OperationsList
operationsList =
  OperationsList'
    { _olXgafv = Nothing
    , _olUploadProtocol = Nothing
    , _olAccessToken = Nothing
    , _olUploadType = Nothing
    , _olName = Nothing
    , _olFilter = Nothing
    , _olPageToken = Nothing
    , _olPageSize = Nothing
    , _olCallback = Nothing
    }


-- | V1 error format.
olXgafv :: Lens' OperationsList (Maybe Xgafv)
olXgafv = lens _olXgafv (\ s a -> s{_olXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olUploadProtocol :: Lens' OperationsList (Maybe Text)
olUploadProtocol
  = lens _olUploadProtocol
      (\ s a -> s{_olUploadProtocol = a})

-- | OAuth access token.
olAccessToken :: Lens' OperationsList (Maybe Text)
olAccessToken
  = lens _olAccessToken
      (\ s a -> s{_olAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olUploadType :: Lens' OperationsList (Maybe Text)
olUploadType
  = lens _olUploadType (\ s a -> s{_olUploadType = a})

-- | Must not be set.
olName :: Lens' OperationsList (Maybe Text)
olName = lens _olName (\ s a -> s{_olName = a})

-- | Required. A filter for matching the requested operations. The supported
-- formats of *filter* are: To query for a specific function:
-- project:*,location:*,function:* To query for all of the latest
-- operations for a project: project:*,latest:true
olFilter :: Lens' OperationsList (Maybe Text)
olFilter = lens _olFilter (\ s a -> s{_olFilter = a})

-- | Token identifying which result to start with, which is returned by a
-- previous list call. Pagination is only supported when querying for a
-- specific function.
olPageToken :: Lens' OperationsList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | The maximum number of records that should be returned. Requested page
-- size cannot exceed 100. If not set, the default page size is 100.
-- Pagination is only supported when querying for a specific function.
olPageSize :: Lens' OperationsList (Maybe Int32)
olPageSize
  = lens _olPageSize (\ s a -> s{_olPageSize = a}) .
      mapping _Coerce

-- | JSONP
olCallback :: Lens' OperationsList (Maybe Text)
olCallback
  = lens _olCallback (\ s a -> s{_olCallback = a})

instance GoogleRequest OperationsList where
        type Rs OperationsList = ListOperationsResponse
        type Scopes OperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OperationsList'{..}
          = go _olXgafv _olUploadProtocol _olAccessToken
              _olUploadType
              _olName
              _olFilter
              _olPageToken
              _olPageSize
              _olCallback
              (Just AltJSON)
              cloudFunctionsService
          where go
                  = buildClient (Proxy :: Proxy OperationsListResource)
                      mempty
