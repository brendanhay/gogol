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
-- Module      : Network.Google.Resource.Content.Accountstatuses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status of a Merchant Center account. No itemLevelIssues
-- are returned for multi-client accounts.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accountstatuses.get@.
module Network.Google.Resource.Content.Accountstatuses.Get
    (
    -- * REST Resource
      AccountstatusesGetResource

    -- * Creating a Request
    , accountstatusesGet
    , AccountstatusesGet

    -- * Request Lenses
    , aaXgafv
    , aaMerchantId
    , aaUploadProtocol
    , aaAccessToken
    , aaUploadType
    , aaAccountId
    , aaDestinations
    , aaCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountstatuses.get@ method which the
-- 'AccountstatusesGet' request conforms to.
type AccountstatusesGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accountstatuses" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParams "destinations" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] AccountStatus

-- | Retrieves the status of a Merchant Center account. No itemLevelIssues
-- are returned for multi-client accounts.
--
-- /See:/ 'accountstatusesGet' smart constructor.
data AccountstatusesGet =
  AccountstatusesGet'
    { _aaXgafv :: !(Maybe Xgafv)
    , _aaMerchantId :: !(Textual Word64)
    , _aaUploadProtocol :: !(Maybe Text)
    , _aaAccessToken :: !(Maybe Text)
    , _aaUploadType :: !(Maybe Text)
    , _aaAccountId :: !(Textual Word64)
    , _aaDestinations :: !(Maybe [Text])
    , _aaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaXgafv'
--
-- * 'aaMerchantId'
--
-- * 'aaUploadProtocol'
--
-- * 'aaAccessToken'
--
-- * 'aaUploadType'
--
-- * 'aaAccountId'
--
-- * 'aaDestinations'
--
-- * 'aaCallback'
accountstatusesGet
    :: Word64 -- ^ 'aaMerchantId'
    -> Word64 -- ^ 'aaAccountId'
    -> AccountstatusesGet
accountstatusesGet pAaMerchantId_ pAaAccountId_ =
  AccountstatusesGet'
    { _aaXgafv = Nothing
    , _aaMerchantId = _Coerce # pAaMerchantId_
    , _aaUploadProtocol = Nothing
    , _aaAccessToken = Nothing
    , _aaUploadType = Nothing
    , _aaAccountId = _Coerce # pAaAccountId_
    , _aaDestinations = Nothing
    , _aaCallback = Nothing
    }


-- | V1 error format.
aaXgafv :: Lens' AccountstatusesGet (Maybe Xgafv)
aaXgafv = lens _aaXgafv (\ s a -> s{_aaXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
aaMerchantId :: Lens' AccountstatusesGet Word64
aaMerchantId
  = lens _aaMerchantId (\ s a -> s{_aaMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aaUploadProtocol :: Lens' AccountstatusesGet (Maybe Text)
aaUploadProtocol
  = lens _aaUploadProtocol
      (\ s a -> s{_aaUploadProtocol = a})

-- | OAuth access token.
aaAccessToken :: Lens' AccountstatusesGet (Maybe Text)
aaAccessToken
  = lens _aaAccessToken
      (\ s a -> s{_aaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aaUploadType :: Lens' AccountstatusesGet (Maybe Text)
aaUploadType
  = lens _aaUploadType (\ s a -> s{_aaUploadType = a})

-- | The ID of the account.
aaAccountId :: Lens' AccountstatusesGet Word64
aaAccountId
  = lens _aaAccountId (\ s a -> s{_aaAccountId = a}) .
      _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
aaDestinations :: Lens' AccountstatusesGet [Text]
aaDestinations
  = lens _aaDestinations
      (\ s a -> s{_aaDestinations = a})
      . _Default
      . _Coerce

-- | JSONP
aaCallback :: Lens' AccountstatusesGet (Maybe Text)
aaCallback
  = lens _aaCallback (\ s a -> s{_aaCallback = a})

instance GoogleRequest AccountstatusesGet where
        type Rs AccountstatusesGet = AccountStatus
        type Scopes AccountstatusesGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountstatusesGet'{..}
          = go _aaMerchantId _aaAccountId _aaXgafv
              _aaUploadProtocol
              _aaAccessToken
              _aaUploadType
              (_aaDestinations ^. _Default)
              _aaCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesGetResource)
                      mempty
