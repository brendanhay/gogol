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
-- Module      : Network.Google.Resource.CloudSearch.Debug.Identitysources.Items.ListForunmAppedidentity
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists names of items associated with an unmapped identity.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.debug.identitysources.items.listForunmappedidentity@.
module Network.Google.Resource.CloudSearch.Debug.Identitysources.Items.ListForunmAppedidentity
    (
    -- * REST Resource
      DebugIdentitysourcesItemsListForunmAppedidentityResource

    -- * Creating a Request
    , debugIdentitysourcesItemsListForunmAppedidentity
    , DebugIdentitysourcesItemsListForunmAppedidentity

    -- * Request Lenses
    , diilfaUserResourceName
    , diilfaParent
    , diilfaXgafv
    , diilfaUploadProtocol
    , diilfaGroupResourceName
    , diilfaAccessToken
    , diilfaUploadType
    , diilfaDebugOptionsEnableDebugging
    , diilfaPageToken
    , diilfaPageSize
    , diilfaCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.debug.identitysources.items.listForunmappedidentity@ method which the
-- 'DebugIdentitysourcesItemsListForunmAppedidentity' request conforms to.
type DebugIdentitysourcesItemsListForunmAppedidentityResource
     =
     "v1" :>
       "debug" :>
         Capture "parent" Text :>
           "items:forunmappedidentity" :>
             QueryParam "userResourceName" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "groupResourceName" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "debugOptions.enableDebugging" Bool :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     ListItemNamesForUnmAppedIdentityResponse

-- | Lists names of items associated with an unmapped identity.
--
-- /See:/ 'debugIdentitysourcesItemsListForunmAppedidentity' smart constructor.
data DebugIdentitysourcesItemsListForunmAppedidentity = DebugIdentitysourcesItemsListForunmAppedidentity'
    { _diilfaUserResourceName            :: !(Maybe Text)
    , _diilfaParent                      :: !Text
    , _diilfaXgafv                       :: !(Maybe Xgafv)
    , _diilfaUploadProtocol              :: !(Maybe Text)
    , _diilfaGroupResourceName           :: !(Maybe Text)
    , _diilfaAccessToken                 :: !(Maybe Text)
    , _diilfaUploadType                  :: !(Maybe Text)
    , _diilfaDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _diilfaPageToken                   :: !(Maybe Text)
    , _diilfaPageSize                    :: !(Maybe (Textual Int32))
    , _diilfaCallback                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebugIdentitysourcesItemsListForunmAppedidentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diilfaUserResourceName'
--
-- * 'diilfaParent'
--
-- * 'diilfaXgafv'
--
-- * 'diilfaUploadProtocol'
--
-- * 'diilfaGroupResourceName'
--
-- * 'diilfaAccessToken'
--
-- * 'diilfaUploadType'
--
-- * 'diilfaDebugOptionsEnableDebugging'
--
-- * 'diilfaPageToken'
--
-- * 'diilfaPageSize'
--
-- * 'diilfaCallback'
debugIdentitysourcesItemsListForunmAppedidentity
    :: Text -- ^ 'diilfaParent'
    -> DebugIdentitysourcesItemsListForunmAppedidentity
debugIdentitysourcesItemsListForunmAppedidentity pDiilfaParent_ =
    DebugIdentitysourcesItemsListForunmAppedidentity'
    { _diilfaUserResourceName = Nothing
    , _diilfaParent = pDiilfaParent_
    , _diilfaXgafv = Nothing
    , _diilfaUploadProtocol = Nothing
    , _diilfaGroupResourceName = Nothing
    , _diilfaAccessToken = Nothing
    , _diilfaUploadType = Nothing
    , _diilfaDebugOptionsEnableDebugging = Nothing
    , _diilfaPageToken = Nothing
    , _diilfaPageSize = Nothing
    , _diilfaCallback = Nothing
    }

diilfaUserResourceName :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Text)
diilfaUserResourceName
  = lens _diilfaUserResourceName
      (\ s a -> s{_diilfaUserResourceName = a})

-- | The name of the identity source, in the following format:
-- identitysources\/{source_id}}
diilfaParent :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity Text
diilfaParent
  = lens _diilfaParent (\ s a -> s{_diilfaParent = a})

-- | V1 error format.
diilfaXgafv :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Xgafv)
diilfaXgafv
  = lens _diilfaXgafv (\ s a -> s{_diilfaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
diilfaUploadProtocol :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Text)
diilfaUploadProtocol
  = lens _diilfaUploadProtocol
      (\ s a -> s{_diilfaUploadProtocol = a})

diilfaGroupResourceName :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Text)
diilfaGroupResourceName
  = lens _diilfaGroupResourceName
      (\ s a -> s{_diilfaGroupResourceName = a})

-- | OAuth access token.
diilfaAccessToken :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Text)
diilfaAccessToken
  = lens _diilfaAccessToken
      (\ s a -> s{_diilfaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
diilfaUploadType :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Text)
diilfaUploadType
  = lens _diilfaUploadType
      (\ s a -> s{_diilfaUploadType = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
diilfaDebugOptionsEnableDebugging :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Bool)
diilfaDebugOptionsEnableDebugging
  = lens _diilfaDebugOptionsEnableDebugging
      (\ s a -> s{_diilfaDebugOptionsEnableDebugging = a})

-- | The next_page_token value returned from a previous List request, if any.
diilfaPageToken :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Text)
diilfaPageToken
  = lens _diilfaPageToken
      (\ s a -> s{_diilfaPageToken = a})

-- | Maximum number of items to fetch in a request. Defaults to 100.
diilfaPageSize :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Int32)
diilfaPageSize
  = lens _diilfaPageSize
      (\ s a -> s{_diilfaPageSize = a})
      . mapping _Coerce

-- | JSONP
diilfaCallback :: Lens' DebugIdentitysourcesItemsListForunmAppedidentity (Maybe Text)
diilfaCallback
  = lens _diilfaCallback
      (\ s a -> s{_diilfaCallback = a})

instance GoogleRequest
         DebugIdentitysourcesItemsListForunmAppedidentity
         where
        type Rs
               DebugIdentitysourcesItemsListForunmAppedidentity
             = ListItemNamesForUnmAppedIdentityResponse
        type Scopes
               DebugIdentitysourcesItemsListForunmAppedidentity
             =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.debug"]
        requestClient
          DebugIdentitysourcesItemsListForunmAppedidentity'{..}
          = go _diilfaParent _diilfaUserResourceName
              _diilfaXgafv
              _diilfaUploadProtocol
              _diilfaGroupResourceName
              _diilfaAccessToken
              _diilfaUploadType
              _diilfaDebugOptionsEnableDebugging
              _diilfaPageToken
              _diilfaPageSize
              _diilfaCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           DebugIdentitysourcesItemsListForunmAppedidentityResource)
                      mempty
