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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the ad clients available in an account.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.list@.
module Network.Google.Resource.AdSense.Accounts.AdClients.List
    (
    -- * REST Resource
      AccountsAdClientsListResource

    -- * Creating a Request
    , accountsAdClientsList
    , AccountsAdClientsList

    -- * Request Lenses
    , aaclParent
    , aaclXgafv
    , aaclUploadProtocol
    , aaclAccessToken
    , aaclUploadType
    , aaclPageToken
    , aaclPageSize
    , aaclCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.list@ method which the
-- 'AccountsAdClientsList' request conforms to.
type AccountsAdClientsListResource =
     "v2" :>
       Capture "parent" Text :>
         "adclients" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAdClientsResponse

-- | Lists all the ad clients available in an account.
--
-- /See:/ 'accountsAdClientsList' smart constructor.
data AccountsAdClientsList =
  AccountsAdClientsList'
    { _aaclParent :: !Text
    , _aaclXgafv :: !(Maybe Xgafv)
    , _aaclUploadProtocol :: !(Maybe Text)
    , _aaclAccessToken :: !(Maybe Text)
    , _aaclUploadType :: !(Maybe Text)
    , _aaclPageToken :: !(Maybe Text)
    , _aaclPageSize :: !(Maybe (Textual Int32))
    , _aaclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaclParent'
--
-- * 'aaclXgafv'
--
-- * 'aaclUploadProtocol'
--
-- * 'aaclAccessToken'
--
-- * 'aaclUploadType'
--
-- * 'aaclPageToken'
--
-- * 'aaclPageSize'
--
-- * 'aaclCallback'
accountsAdClientsList
    :: Text -- ^ 'aaclParent'
    -> AccountsAdClientsList
accountsAdClientsList pAaclParent_ =
  AccountsAdClientsList'
    { _aaclParent = pAaclParent_
    , _aaclXgafv = Nothing
    , _aaclUploadProtocol = Nothing
    , _aaclAccessToken = Nothing
    , _aaclUploadType = Nothing
    , _aaclPageToken = Nothing
    , _aaclPageSize = Nothing
    , _aaclCallback = Nothing
    }


-- | Required. The account which owns the collection of ad clients. Format:
-- accounts\/{account}
aaclParent :: Lens' AccountsAdClientsList Text
aaclParent
  = lens _aaclParent (\ s a -> s{_aaclParent = a})

-- | V1 error format.
aaclXgafv :: Lens' AccountsAdClientsList (Maybe Xgafv)
aaclXgafv
  = lens _aaclXgafv (\ s a -> s{_aaclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aaclUploadProtocol :: Lens' AccountsAdClientsList (Maybe Text)
aaclUploadProtocol
  = lens _aaclUploadProtocol
      (\ s a -> s{_aaclUploadProtocol = a})

-- | OAuth access token.
aaclAccessToken :: Lens' AccountsAdClientsList (Maybe Text)
aaclAccessToken
  = lens _aaclAccessToken
      (\ s a -> s{_aaclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aaclUploadType :: Lens' AccountsAdClientsList (Maybe Text)
aaclUploadType
  = lens _aaclUploadType
      (\ s a -> s{_aaclUploadType = a})

-- | A page token, received from a previous \`ListAdClients\` call. Provide
-- this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListAdClients\` must match the call that
-- provided the page token.
aaclPageToken :: Lens' AccountsAdClientsList (Maybe Text)
aaclPageToken
  = lens _aaclPageToken
      (\ s a -> s{_aaclPageToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging. If unspecified, at most 10000 ad clients will be returned. The
-- maximum value is 10000; values above 10000 will be coerced to 10000.
aaclPageSize :: Lens' AccountsAdClientsList (Maybe Int32)
aaclPageSize
  = lens _aaclPageSize (\ s a -> s{_aaclPageSize = a})
      . mapping _Coerce

-- | JSONP
aaclCallback :: Lens' AccountsAdClientsList (Maybe Text)
aaclCallback
  = lens _aaclCallback (\ s a -> s{_aaclCallback = a})

instance GoogleRequest AccountsAdClientsList where
        type Rs AccountsAdClientsList = ListAdClientsResponse
        type Scopes AccountsAdClientsList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdClientsList'{..}
          = go _aaclParent _aaclXgafv _aaclUploadProtocol
              _aaclAccessToken
              _aaclUploadType
              _aaclPageToken
              _aaclPageSize
              _aaclCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdClientsListResource)
                      mempty
