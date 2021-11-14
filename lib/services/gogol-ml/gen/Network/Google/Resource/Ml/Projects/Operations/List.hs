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
-- Module      : Network.Google.Resource.Ml.Projects.Operations.List
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
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.operations.list@.
module Network.Google.Resource.Ml.Projects.Operations.List
    (
    -- * REST Resource
      ProjectsOperationsListResource

    -- * Creating a Request
    , projectsOperationsList
    , ProjectsOperationsList

    -- * Request Lenses
    , polXgafv
    , polUploadProtocol
    , polAccessToken
    , polUploadType
    , polName
    , polFilter
    , polPageToken
    , polPageSize
    , polCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.operations.list@ method which the
-- 'ProjectsOperationsList' request conforms to.
type ProjectsOperationsListResource =
     "v1" :>
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
                             Get '[JSON]
                               GoogleLongrunning__ListOperationsResponse

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
-- /See:/ 'projectsOperationsList' smart constructor.
data ProjectsOperationsList =
  ProjectsOperationsList'
    { _polXgafv :: !(Maybe Xgafv)
    , _polUploadProtocol :: !(Maybe Text)
    , _polAccessToken :: !(Maybe Text)
    , _polUploadType :: !(Maybe Text)
    , _polName :: !Text
    , _polFilter :: !(Maybe Text)
    , _polPageToken :: !(Maybe Text)
    , _polPageSize :: !(Maybe (Textual Int32))
    , _polCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polXgafv'
--
-- * 'polUploadProtocol'
--
-- * 'polAccessToken'
--
-- * 'polUploadType'
--
-- * 'polName'
--
-- * 'polFilter'
--
-- * 'polPageToken'
--
-- * 'polPageSize'
--
-- * 'polCallback'
projectsOperationsList
    :: Text -- ^ 'polName'
    -> ProjectsOperationsList
projectsOperationsList pPolName_ =
  ProjectsOperationsList'
    { _polXgafv = Nothing
    , _polUploadProtocol = Nothing
    , _polAccessToken = Nothing
    , _polUploadType = Nothing
    , _polName = pPolName_
    , _polFilter = Nothing
    , _polPageToken = Nothing
    , _polPageSize = Nothing
    , _polCallback = Nothing
    }


-- | V1 error format.
polXgafv :: Lens' ProjectsOperationsList (Maybe Xgafv)
polXgafv = lens _polXgafv (\ s a -> s{_polXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
polUploadProtocol :: Lens' ProjectsOperationsList (Maybe Text)
polUploadProtocol
  = lens _polUploadProtocol
      (\ s a -> s{_polUploadProtocol = a})

-- | OAuth access token.
polAccessToken :: Lens' ProjectsOperationsList (Maybe Text)
polAccessToken
  = lens _polAccessToken
      (\ s a -> s{_polAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
polUploadType :: Lens' ProjectsOperationsList (Maybe Text)
polUploadType
  = lens _polUploadType
      (\ s a -> s{_polUploadType = a})

-- | The name of the operation\'s parent resource.
polName :: Lens' ProjectsOperationsList Text
polName = lens _polName (\ s a -> s{_polName = a})

-- | The standard list filter.
polFilter :: Lens' ProjectsOperationsList (Maybe Text)
polFilter
  = lens _polFilter (\ s a -> s{_polFilter = a})

-- | The standard list page token.
polPageToken :: Lens' ProjectsOperationsList (Maybe Text)
polPageToken
  = lens _polPageToken (\ s a -> s{_polPageToken = a})

-- | The standard list page size.
polPageSize :: Lens' ProjectsOperationsList (Maybe Int32)
polPageSize
  = lens _polPageSize (\ s a -> s{_polPageSize = a}) .
      mapping _Coerce

-- | JSONP
polCallback :: Lens' ProjectsOperationsList (Maybe Text)
polCallback
  = lens _polCallback (\ s a -> s{_polCallback = a})

instance GoogleRequest ProjectsOperationsList where
        type Rs ProjectsOperationsList =
             GoogleLongrunning__ListOperationsResponse
        type Scopes ProjectsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOperationsList'{..}
          = go _polName _polXgafv _polUploadProtocol
              _polAccessToken
              _polUploadType
              _polFilter
              _polPageToken
              _polPageSize
              _polCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOperationsListResource)
                      mempty
