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
-- Module      : Network.Google.Resource.AppEngine.Experimental.Apps.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.experimental.apps.operations.list@.
module Network.Google.Resource.AppEngine.Experimental.Apps.Operations.List
    (
    -- * REST Resource
      ExperimentalAppsOperationsListResource

    -- * Creating a Request
    , experimentalAppsOperationsList
    , ExperimentalAppsOperationsList

    -- * Request Lenses
    , eaolXgafv
    , eaolUploadProtocol
    , eaolPp
    , eaolAccessToken
    , eaolUploadType
    , eaolBearerToken
    , eaolAppsId
    , eaolFilter
    , eaolPageToken
    , eaolPageSize
    , eaolCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.experimental.apps.operations.list@ method which the
-- 'ExperimentalAppsOperationsList' request conforms to.
type ExperimentalAppsOperationsListResource =
     "experimental" :>
       "apps" :>
         Capture "appsId" Text :>
           "operations" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
--
-- /See:/ 'experimentalAppsOperationsList' smart constructor.
data ExperimentalAppsOperationsList = ExperimentalAppsOperationsList'
    { _eaolXgafv          :: !(Maybe Text)
    , _eaolUploadProtocol :: !(Maybe Text)
    , _eaolPp             :: !Bool
    , _eaolAccessToken    :: !(Maybe Text)
    , _eaolUploadType     :: !(Maybe Text)
    , _eaolBearerToken    :: !(Maybe Text)
    , _eaolAppsId         :: !Text
    , _eaolFilter         :: !(Maybe Text)
    , _eaolPageToken      :: !(Maybe Text)
    , _eaolPageSize       :: !(Maybe (Textual Int32))
    , _eaolCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentalAppsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaolXgafv'
--
-- * 'eaolUploadProtocol'
--
-- * 'eaolPp'
--
-- * 'eaolAccessToken'
--
-- * 'eaolUploadType'
--
-- * 'eaolBearerToken'
--
-- * 'eaolAppsId'
--
-- * 'eaolFilter'
--
-- * 'eaolPageToken'
--
-- * 'eaolPageSize'
--
-- * 'eaolCallback'
experimentalAppsOperationsList
    :: Text -- ^ 'eaolAppsId'
    -> ExperimentalAppsOperationsList
experimentalAppsOperationsList pEaolAppsId_ =
    ExperimentalAppsOperationsList'
    { _eaolXgafv = Nothing
    , _eaolUploadProtocol = Nothing
    , _eaolPp = True
    , _eaolAccessToken = Nothing
    , _eaolUploadType = Nothing
    , _eaolBearerToken = Nothing
    , _eaolAppsId = pEaolAppsId_
    , _eaolFilter = Nothing
    , _eaolPageToken = Nothing
    , _eaolPageSize = Nothing
    , _eaolCallback = Nothing
    }

-- | V1 error format.
eaolXgafv :: Lens' ExperimentalAppsOperationsList (Maybe Text)
eaolXgafv
  = lens _eaolXgafv (\ s a -> s{_eaolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eaolUploadProtocol :: Lens' ExperimentalAppsOperationsList (Maybe Text)
eaolUploadProtocol
  = lens _eaolUploadProtocol
      (\ s a -> s{_eaolUploadProtocol = a})

-- | Pretty-print response.
eaolPp :: Lens' ExperimentalAppsOperationsList Bool
eaolPp = lens _eaolPp (\ s a -> s{_eaolPp = a})

-- | OAuth access token.
eaolAccessToken :: Lens' ExperimentalAppsOperationsList (Maybe Text)
eaolAccessToken
  = lens _eaolAccessToken
      (\ s a -> s{_eaolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eaolUploadType :: Lens' ExperimentalAppsOperationsList (Maybe Text)
eaolUploadType
  = lens _eaolUploadType
      (\ s a -> s{_eaolUploadType = a})

-- | OAuth bearer token.
eaolBearerToken :: Lens' ExperimentalAppsOperationsList (Maybe Text)
eaolBearerToken
  = lens _eaolBearerToken
      (\ s a -> s{_eaolBearerToken = a})

-- | Part of \`name\`. The name of the operation collection.
eaolAppsId :: Lens' ExperimentalAppsOperationsList Text
eaolAppsId
  = lens _eaolAppsId (\ s a -> s{_eaolAppsId = a})

-- | The standard list filter.
eaolFilter :: Lens' ExperimentalAppsOperationsList (Maybe Text)
eaolFilter
  = lens _eaolFilter (\ s a -> s{_eaolFilter = a})

-- | The standard list page token.
eaolPageToken :: Lens' ExperimentalAppsOperationsList (Maybe Text)
eaolPageToken
  = lens _eaolPageToken
      (\ s a -> s{_eaolPageToken = a})

-- | The standard list page size.
eaolPageSize :: Lens' ExperimentalAppsOperationsList (Maybe Int32)
eaolPageSize
  = lens _eaolPageSize (\ s a -> s{_eaolPageSize = a})
      . mapping _Coerce

-- | JSONP
eaolCallback :: Lens' ExperimentalAppsOperationsList (Maybe Text)
eaolCallback
  = lens _eaolCallback (\ s a -> s{_eaolCallback = a})

instance GoogleRequest ExperimentalAppsOperationsList
         where
        type Rs ExperimentalAppsOperationsList =
             ListOperationsResponse
        type Scopes ExperimentalAppsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ExperimentalAppsOperationsList'{..}
          = go _eaolAppsId _eaolXgafv _eaolUploadProtocol
              (Just _eaolPp)
              _eaolAccessToken
              _eaolUploadType
              _eaolBearerToken
              _eaolFilter
              _eaolPageToken
              _eaolPageSize
              _eaolCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ExperimentalAppsOperationsListResource)
                      mempty
