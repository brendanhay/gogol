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
-- Module      : Network.Google.Resource.CloudSearch.Debug.Datasources.Items.CheckAccess
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether an item is accessible by specified principal.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.debug.datasources.items.checkAccess@.
module Network.Google.Resource.CloudSearch.Debug.Datasources.Items.CheckAccess
    (
    -- * REST Resource
      DebugDatasourcesItemsCheckAccessResource

    -- * Creating a Request
    , debugDatasourcesItemsCheckAccess
    , DebugDatasourcesItemsCheckAccess

    -- * Request Lenses
    , ddicaXgafv
    , ddicaUploadProtocol
    , ddicaAccessToken
    , ddicaUploadType
    , ddicaPayload
    , ddicaName
    , ddicaDebugOptionsEnableDebugging
    , ddicaCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.debug.datasources.items.checkAccess@ method which the
-- 'DebugDatasourcesItemsCheckAccess' request conforms to.
type DebugDatasourcesItemsCheckAccessResource =
     "v1" :>
       "debug" :>
         CaptureMode "name" "checkAccess" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "debugOptions.enableDebugging" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Principal :>
                           Post '[JSON] CheckAccessResponse

-- | Checks whether an item is accessible by specified principal.
--
-- /See:/ 'debugDatasourcesItemsCheckAccess' smart constructor.
data DebugDatasourcesItemsCheckAccess =
  DebugDatasourcesItemsCheckAccess'
    { _ddicaXgafv                       :: !(Maybe Xgafv)
    , _ddicaUploadProtocol              :: !(Maybe Text)
    , _ddicaAccessToken                 :: !(Maybe Text)
    , _ddicaUploadType                  :: !(Maybe Text)
    , _ddicaPayload                     :: !Principal
    , _ddicaName                        :: !Text
    , _ddicaDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _ddicaCallback                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DebugDatasourcesItemsCheckAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddicaXgafv'
--
-- * 'ddicaUploadProtocol'
--
-- * 'ddicaAccessToken'
--
-- * 'ddicaUploadType'
--
-- * 'ddicaPayload'
--
-- * 'ddicaName'
--
-- * 'ddicaDebugOptionsEnableDebugging'
--
-- * 'ddicaCallback'
debugDatasourcesItemsCheckAccess
    :: Principal -- ^ 'ddicaPayload'
    -> Text -- ^ 'ddicaName'
    -> DebugDatasourcesItemsCheckAccess
debugDatasourcesItemsCheckAccess pDdicaPayload_ pDdicaName_ =
  DebugDatasourcesItemsCheckAccess'
    { _ddicaXgafv = Nothing
    , _ddicaUploadProtocol = Nothing
    , _ddicaAccessToken = Nothing
    , _ddicaUploadType = Nothing
    , _ddicaPayload = pDdicaPayload_
    , _ddicaName = pDdicaName_
    , _ddicaDebugOptionsEnableDebugging = Nothing
    , _ddicaCallback = Nothing
    }

-- | V1 error format.
ddicaXgafv :: Lens' DebugDatasourcesItemsCheckAccess (Maybe Xgafv)
ddicaXgafv
  = lens _ddicaXgafv (\ s a -> s{_ddicaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddicaUploadProtocol :: Lens' DebugDatasourcesItemsCheckAccess (Maybe Text)
ddicaUploadProtocol
  = lens _ddicaUploadProtocol
      (\ s a -> s{_ddicaUploadProtocol = a})

-- | OAuth access token.
ddicaAccessToken :: Lens' DebugDatasourcesItemsCheckAccess (Maybe Text)
ddicaAccessToken
  = lens _ddicaAccessToken
      (\ s a -> s{_ddicaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddicaUploadType :: Lens' DebugDatasourcesItemsCheckAccess (Maybe Text)
ddicaUploadType
  = lens _ddicaUploadType
      (\ s a -> s{_ddicaUploadType = a})

-- | Multipart request metadata.
ddicaPayload :: Lens' DebugDatasourcesItemsCheckAccess Principal
ddicaPayload
  = lens _ddicaPayload (\ s a -> s{_ddicaPayload = a})

-- | Item name, format: datasources\/{source_id}\/items\/{item_id}
ddicaName :: Lens' DebugDatasourcesItemsCheckAccess Text
ddicaName
  = lens _ddicaName (\ s a -> s{_ddicaName = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
ddicaDebugOptionsEnableDebugging :: Lens' DebugDatasourcesItemsCheckAccess (Maybe Bool)
ddicaDebugOptionsEnableDebugging
  = lens _ddicaDebugOptionsEnableDebugging
      (\ s a -> s{_ddicaDebugOptionsEnableDebugging = a})

-- | JSONP
ddicaCallback :: Lens' DebugDatasourcesItemsCheckAccess (Maybe Text)
ddicaCallback
  = lens _ddicaCallback
      (\ s a -> s{_ddicaCallback = a})

instance GoogleRequest
           DebugDatasourcesItemsCheckAccess
         where
        type Rs DebugDatasourcesItemsCheckAccess =
             CheckAccessResponse
        type Scopes DebugDatasourcesItemsCheckAccess =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.debug"]
        requestClient DebugDatasourcesItemsCheckAccess'{..}
          = go _ddicaName _ddicaXgafv _ddicaUploadProtocol
              _ddicaAccessToken
              _ddicaUploadType
              _ddicaDebugOptionsEnableDebugging
              _ddicaCallback
              (Just AltJSON)
              _ddicaPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebugDatasourcesItemsCheckAccessResource)
                      mempty
