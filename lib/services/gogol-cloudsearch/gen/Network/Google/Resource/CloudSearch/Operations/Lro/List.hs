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
-- Module      : Network.Google.Resource.CloudSearch.Operations.Lro.List
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.operations.lro.list@.
module Network.Google.Resource.CloudSearch.Operations.Lro.List
    (
    -- * REST Resource
      OperationsLroListResource

    -- * Creating a Request
    , operationsLroList
    , OperationsLroList

    -- * Request Lenses
    , ollXgafv
    , ollUploadProtocol
    , ollAccessToken
    , ollUploadType
    , ollName
    , ollFilter
    , ollPageToken
    , ollPageSize
    , ollCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.operations.lro.list@ method which the
-- 'OperationsLroList' request conforms to.
type OperationsLroListResource =
     "v1" :>
       Capture "name" Text :>
         "lro" :>
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
-- /See:/ 'operationsLroList' smart constructor.
data OperationsLroList =
  OperationsLroList'
    { _ollXgafv :: !(Maybe Xgafv)
    , _ollUploadProtocol :: !(Maybe Text)
    , _ollAccessToken :: !(Maybe Text)
    , _ollUploadType :: !(Maybe Text)
    , _ollName :: !Text
    , _ollFilter :: !(Maybe Text)
    , _ollPageToken :: !(Maybe Text)
    , _ollPageSize :: !(Maybe (Textual Int32))
    , _ollCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationsLroList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ollXgafv'
--
-- * 'ollUploadProtocol'
--
-- * 'ollAccessToken'
--
-- * 'ollUploadType'
--
-- * 'ollName'
--
-- * 'ollFilter'
--
-- * 'ollPageToken'
--
-- * 'ollPageSize'
--
-- * 'ollCallback'
operationsLroList
    :: Text -- ^ 'ollName'
    -> OperationsLroList
operationsLroList pOllName_ =
  OperationsLroList'
    { _ollXgafv = Nothing
    , _ollUploadProtocol = Nothing
    , _ollAccessToken = Nothing
    , _ollUploadType = Nothing
    , _ollName = pOllName_
    , _ollFilter = Nothing
    , _ollPageToken = Nothing
    , _ollPageSize = Nothing
    , _ollCallback = Nothing
    }


-- | V1 error format.
ollXgafv :: Lens' OperationsLroList (Maybe Xgafv)
ollXgafv = lens _ollXgafv (\ s a -> s{_ollXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ollUploadProtocol :: Lens' OperationsLroList (Maybe Text)
ollUploadProtocol
  = lens _ollUploadProtocol
      (\ s a -> s{_ollUploadProtocol = a})

-- | OAuth access token.
ollAccessToken :: Lens' OperationsLroList (Maybe Text)
ollAccessToken
  = lens _ollAccessToken
      (\ s a -> s{_ollAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ollUploadType :: Lens' OperationsLroList (Maybe Text)
ollUploadType
  = lens _ollUploadType
      (\ s a -> s{_ollUploadType = a})

-- | The name of the operation\'s parent resource.
ollName :: Lens' OperationsLroList Text
ollName = lens _ollName (\ s a -> s{_ollName = a})

-- | The standard list filter.
ollFilter :: Lens' OperationsLroList (Maybe Text)
ollFilter
  = lens _ollFilter (\ s a -> s{_ollFilter = a})

-- | The standard list page token.
ollPageToken :: Lens' OperationsLroList (Maybe Text)
ollPageToken
  = lens _ollPageToken (\ s a -> s{_ollPageToken = a})

-- | The standard list page size.
ollPageSize :: Lens' OperationsLroList (Maybe Int32)
ollPageSize
  = lens _ollPageSize (\ s a -> s{_ollPageSize = a}) .
      mapping _Coerce

-- | JSONP
ollCallback :: Lens' OperationsLroList (Maybe Text)
ollCallback
  = lens _ollCallback (\ s a -> s{_ollCallback = a})

instance GoogleRequest OperationsLroList where
        type Rs OperationsLroList = ListOperationsResponse
        type Scopes OperationsLroList =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.debug",
               "https://www.googleapis.com/auth/cloud_search.indexing",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient OperationsLroList'{..}
          = go _ollName _ollXgafv _ollUploadProtocol
              _ollAccessToken
              _ollUploadType
              _ollFilter
              _ollPageToken
              _ollPageSize
              _ollCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy OperationsLroListResource)
                      mempty
