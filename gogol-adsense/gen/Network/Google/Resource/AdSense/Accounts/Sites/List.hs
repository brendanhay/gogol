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
-- Module      : Network.Google.Resource.AdSense.Accounts.Sites.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the sites available in an account.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.sites.list@.
module Network.Google.Resource.AdSense.Accounts.Sites.List
    (
    -- * REST Resource
      AccountsSitesListResource

    -- * Creating a Request
    , accountsSitesList
    , AccountsSitesList

    -- * Request Lenses
    , aslParent
    , aslXgafv
    , aslUploadProtocol
    , aslAccessToken
    , aslUploadType
    , aslPageToken
    , aslPageSize
    , aslCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.sites.list@ method which the
-- 'AccountsSitesList' request conforms to.
type AccountsSitesListResource =
     "v2" :>
       Capture "parent" Text :>
         "sites" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSitesResponse

-- | Lists all the sites available in an account.
--
-- /See:/ 'accountsSitesList' smart constructor.
data AccountsSitesList =
  AccountsSitesList'
    { _aslParent :: !Text
    , _aslXgafv :: !(Maybe Xgafv)
    , _aslUploadProtocol :: !(Maybe Text)
    , _aslAccessToken :: !(Maybe Text)
    , _aslUploadType :: !(Maybe Text)
    , _aslPageToken :: !(Maybe Text)
    , _aslPageSize :: !(Maybe (Textual Int32))
    , _aslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsSitesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslParent'
--
-- * 'aslXgafv'
--
-- * 'aslUploadProtocol'
--
-- * 'aslAccessToken'
--
-- * 'aslUploadType'
--
-- * 'aslPageToken'
--
-- * 'aslPageSize'
--
-- * 'aslCallback'
accountsSitesList
    :: Text -- ^ 'aslParent'
    -> AccountsSitesList
accountsSitesList pAslParent_ =
  AccountsSitesList'
    { _aslParent = pAslParent_
    , _aslXgafv = Nothing
    , _aslUploadProtocol = Nothing
    , _aslAccessToken = Nothing
    , _aslUploadType = Nothing
    , _aslPageToken = Nothing
    , _aslPageSize = Nothing
    , _aslCallback = Nothing
    }


-- | Required. The account which owns the collection of sites. Format:
-- accounts\/{account}
aslParent :: Lens' AccountsSitesList Text
aslParent
  = lens _aslParent (\ s a -> s{_aslParent = a})

-- | V1 error format.
aslXgafv :: Lens' AccountsSitesList (Maybe Xgafv)
aslXgafv = lens _aslXgafv (\ s a -> s{_aslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aslUploadProtocol :: Lens' AccountsSitesList (Maybe Text)
aslUploadProtocol
  = lens _aslUploadProtocol
      (\ s a -> s{_aslUploadProtocol = a})

-- | OAuth access token.
aslAccessToken :: Lens' AccountsSitesList (Maybe Text)
aslAccessToken
  = lens _aslAccessToken
      (\ s a -> s{_aslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aslUploadType :: Lens' AccountsSitesList (Maybe Text)
aslUploadType
  = lens _aslUploadType
      (\ s a -> s{_aslUploadType = a})

-- | A page token, received from a previous \`ListSites\` call. Provide this
-- to retrieve the subsequent page. When paginating, all other parameters
-- provided to \`ListSites\` must match the call that provided the page
-- token.
aslPageToken :: Lens' AccountsSitesList (Maybe Text)
aslPageToken
  = lens _aslPageToken (\ s a -> s{_aslPageToken = a})

-- | The maximum number of sites to include in the response, used for paging.
-- If unspecified, at most 10000 sites will be returned. The maximum value
-- is 10000; values above 10000 will be coerced to 10000.
aslPageSize :: Lens' AccountsSitesList (Maybe Int32)
aslPageSize
  = lens _aslPageSize (\ s a -> s{_aslPageSize = a}) .
      mapping _Coerce

-- | JSONP
aslCallback :: Lens' AccountsSitesList (Maybe Text)
aslCallback
  = lens _aslCallback (\ s a -> s{_aslCallback = a})

instance GoogleRequest AccountsSitesList where
        type Rs AccountsSitesList = ListSitesResponse
        type Scopes AccountsSitesList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsSitesList'{..}
          = go _aslParent _aslXgafv _aslUploadProtocol
              _aslAccessToken
              _aslUploadType
              _aslPageToken
              _aslPageSize
              _aslCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsSitesListResource)
                      mempty
