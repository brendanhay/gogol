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
-- Module      : Network.Google.Resource.CloudSearch.Debug.Identitysources.UnmAppedids.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists unmapped user identities for an identity source.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.debug.identitysources.unmappedids.list@.
module Network.Google.Resource.CloudSearch.Debug.Identitysources.UnmAppedids.List
    (
    -- * REST Resource
      DebugIdentitysourcesUnmAppedidsListResource

    -- * Creating a Request
    , debugIdentitysourcesUnmAppedidsList
    , DebugIdentitysourcesUnmAppedidsList

    -- * Request Lenses
    , diualParent
    , diualXgafv
    , diualResolutionStatusCode
    , diualUploadProtocol
    , diualAccessToken
    , diualUploadType
    , diualDebugOptionsEnableDebugging
    , diualPageToken
    , diualPageSize
    , diualCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.debug.identitysources.unmappedids.list@ method which the
-- 'DebugIdentitysourcesUnmAppedidsList' request conforms to.
type DebugIdentitysourcesUnmAppedidsListResource =
     "v1" :>
       "debug" :>
         Capture "parent" Text :>
           "unmappedids" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "resolutionStatusCode" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "debugOptions.enableDebugging" Bool :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListUnmAppedIdentitiesResponse

-- | Lists unmapped user identities for an identity source.
--
-- /See:/ 'debugIdentitysourcesUnmAppedidsList' smart constructor.
data DebugIdentitysourcesUnmAppedidsList = DebugIdentitysourcesUnmAppedidsList'
    { _diualParent                      :: !Text
    , _diualXgafv                       :: !(Maybe Xgafv)
    , _diualResolutionStatusCode        :: !(Maybe Text)
    , _diualUploadProtocol              :: !(Maybe Text)
    , _diualAccessToken                 :: !(Maybe Text)
    , _diualUploadType                  :: !(Maybe Text)
    , _diualDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _diualPageToken                   :: !(Maybe Text)
    , _diualPageSize                    :: !(Maybe (Textual Int32))
    , _diualCallback                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebugIdentitysourcesUnmAppedidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diualParent'
--
-- * 'diualXgafv'
--
-- * 'diualResolutionStatusCode'
--
-- * 'diualUploadProtocol'
--
-- * 'diualAccessToken'
--
-- * 'diualUploadType'
--
-- * 'diualDebugOptionsEnableDebugging'
--
-- * 'diualPageToken'
--
-- * 'diualPageSize'
--
-- * 'diualCallback'
debugIdentitysourcesUnmAppedidsList
    :: Text -- ^ 'diualParent'
    -> DebugIdentitysourcesUnmAppedidsList
debugIdentitysourcesUnmAppedidsList pDiualParent_ =
    DebugIdentitysourcesUnmAppedidsList'
    { _diualParent = pDiualParent_
    , _diualXgafv = Nothing
    , _diualResolutionStatusCode = Nothing
    , _diualUploadProtocol = Nothing
    , _diualAccessToken = Nothing
    , _diualUploadType = Nothing
    , _diualDebugOptionsEnableDebugging = Nothing
    , _diualPageToken = Nothing
    , _diualPageSize = Nothing
    , _diualCallback = Nothing
    }

-- | The name of the identity source, in the following format:
-- identitysources\/{source_id}
diualParent :: Lens' DebugIdentitysourcesUnmAppedidsList Text
diualParent
  = lens _diualParent (\ s a -> s{_diualParent = a})

-- | V1 error format.
diualXgafv :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Xgafv)
diualXgafv
  = lens _diualXgafv (\ s a -> s{_diualXgafv = a})

-- | Limit users selection to this status.
diualResolutionStatusCode :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Text)
diualResolutionStatusCode
  = lens _diualResolutionStatusCode
      (\ s a -> s{_diualResolutionStatusCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
diualUploadProtocol :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Text)
diualUploadProtocol
  = lens _diualUploadProtocol
      (\ s a -> s{_diualUploadProtocol = a})

-- | OAuth access token.
diualAccessToken :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Text)
diualAccessToken
  = lens _diualAccessToken
      (\ s a -> s{_diualAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
diualUploadType :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Text)
diualUploadType
  = lens _diualUploadType
      (\ s a -> s{_diualUploadType = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
diualDebugOptionsEnableDebugging :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Bool)
diualDebugOptionsEnableDebugging
  = lens _diualDebugOptionsEnableDebugging
      (\ s a -> s{_diualDebugOptionsEnableDebugging = a})

-- | The next_page_token value returned from a previous List request, if any.
diualPageToken :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Text)
diualPageToken
  = lens _diualPageToken
      (\ s a -> s{_diualPageToken = a})

-- | Maximum number of items to fetch in a request. Defaults to 100.
diualPageSize :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Int32)
diualPageSize
  = lens _diualPageSize
      (\ s a -> s{_diualPageSize = a})
      . mapping _Coerce

-- | JSONP
diualCallback :: Lens' DebugIdentitysourcesUnmAppedidsList (Maybe Text)
diualCallback
  = lens _diualCallback
      (\ s a -> s{_diualCallback = a})

instance GoogleRequest
         DebugIdentitysourcesUnmAppedidsList where
        type Rs DebugIdentitysourcesUnmAppedidsList =
             ListUnmAppedIdentitiesResponse
        type Scopes DebugIdentitysourcesUnmAppedidsList =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.debug"]
        requestClient
          DebugIdentitysourcesUnmAppedidsList'{..}
          = go _diualParent _diualXgafv
              _diualResolutionStatusCode
              _diualUploadProtocol
              _diualAccessToken
              _diualUploadType
              _diualDebugOptionsEnableDebugging
              _diualPageToken
              _diualPageSize
              _diualCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebugIdentitysourcesUnmAppedidsListResource)
                      mempty
