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
-- Module      : Network.Google.Resource.CloudShell.Operations.List
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
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.operations.list@.
module Network.Google.Resource.CloudShell.Operations.List
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

import           Network.Google.CloudShell.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudshell.operations.list@ method which the
-- 'OperationsList' request conforms to.
type OperationsListResource =
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
-- /See:/ 'operationsList' smart constructor.
data OperationsList =
  OperationsList'
    { _olXgafv          :: !(Maybe Xgafv)
    , _olUploadProtocol :: !(Maybe Text)
    , _olAccessToken    :: !(Maybe Text)
    , _olUploadType     :: !(Maybe Text)
    , _olName           :: !Text
    , _olFilter         :: !(Maybe Text)
    , _olPageToken      :: !(Maybe Text)
    , _olPageSize       :: !(Maybe (Textual Int32))
    , _olCallback       :: !(Maybe Text)
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
    :: Text -- ^ 'olName'
    -> OperationsList
operationsList pOlName_ =
  OperationsList'
    { _olXgafv = Nothing
    , _olUploadProtocol = Nothing
    , _olAccessToken = Nothing
    , _olUploadType = Nothing
    , _olName = pOlName_
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

-- | The name of the operation\'s parent resource.
olName :: Lens' OperationsList Text
olName = lens _olName (\ s a -> s{_olName = a})

-- | The standard list filter.
olFilter :: Lens' OperationsList (Maybe Text)
olFilter = lens _olFilter (\ s a -> s{_olFilter = a})

-- | The standard list page token.
olPageToken :: Lens' OperationsList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | The standard list page size.
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
          = go _olName _olXgafv _olUploadProtocol
              _olAccessToken
              _olUploadType
              _olFilter
              _olPageToken
              _olPageSize
              _olCallback
              (Just AltJSON)
              cloudShellService
          where go
                  = buildClient (Proxy :: Proxy OperationsListResource)
                      mempty
