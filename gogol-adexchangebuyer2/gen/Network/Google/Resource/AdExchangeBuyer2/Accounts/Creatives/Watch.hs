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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watches a creative. Will result in push notifications being sent to the
-- topic when the creative changes status.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.watch@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Watch
    (
    -- * REST Resource
      AccountsCreativesWatchResource

    -- * Creating a Request
    , accountsCreativesWatch
    , AccountsCreativesWatch

    -- * Request Lenses
    , acwXgafv
    , acwUploadProtocol
    , acwAccessToken
    , acwUploadType
    , acwCreativeId
    , acwPayload
    , acwAccountId
    , acwCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.watch@ method which the
-- 'AccountsCreativesWatch' request conforms to.
type AccountsCreativesWatchResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "creatives" :>
             CaptureMode "creativeId" "watch" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] WatchCreativeRequest :>
                             Post '[JSON] Empty

-- | Watches a creative. Will result in push notifications being sent to the
-- topic when the creative changes status.
--
-- /See:/ 'accountsCreativesWatch' smart constructor.
data AccountsCreativesWatch =
  AccountsCreativesWatch'
    { _acwXgafv          :: !(Maybe Xgafv)
    , _acwUploadProtocol :: !(Maybe Text)
    , _acwAccessToken    :: !(Maybe Text)
    , _acwUploadType     :: !(Maybe Text)
    , _acwCreativeId     :: !Text
    , _acwPayload        :: !WatchCreativeRequest
    , _acwAccountId      :: !Text
    , _acwCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCreativesWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwXgafv'
--
-- * 'acwUploadProtocol'
--
-- * 'acwAccessToken'
--
-- * 'acwUploadType'
--
-- * 'acwCreativeId'
--
-- * 'acwPayload'
--
-- * 'acwAccountId'
--
-- * 'acwCallback'
accountsCreativesWatch
    :: Text -- ^ 'acwCreativeId'
    -> WatchCreativeRequest -- ^ 'acwPayload'
    -> Text -- ^ 'acwAccountId'
    -> AccountsCreativesWatch
accountsCreativesWatch pAcwCreativeId_ pAcwPayload_ pAcwAccountId_ =
  AccountsCreativesWatch'
    { _acwXgafv = Nothing
    , _acwUploadProtocol = Nothing
    , _acwAccessToken = Nothing
    , _acwUploadType = Nothing
    , _acwCreativeId = pAcwCreativeId_
    , _acwPayload = pAcwPayload_
    , _acwAccountId = pAcwAccountId_
    , _acwCallback = Nothing
    }


-- | V1 error format.
acwXgafv :: Lens' AccountsCreativesWatch (Maybe Xgafv)
acwXgafv = lens _acwXgafv (\ s a -> s{_acwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwUploadProtocol :: Lens' AccountsCreativesWatch (Maybe Text)
acwUploadProtocol
  = lens _acwUploadProtocol
      (\ s a -> s{_acwUploadProtocol = a})

-- | OAuth access token.
acwAccessToken :: Lens' AccountsCreativesWatch (Maybe Text)
acwAccessToken
  = lens _acwAccessToken
      (\ s a -> s{_acwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwUploadType :: Lens' AccountsCreativesWatch (Maybe Text)
acwUploadType
  = lens _acwUploadType
      (\ s a -> s{_acwUploadType = a})

-- | The creative ID to watch for status changes. Specify \"-\" to watch all
-- creatives under the above account. If both creative-level and
-- account-level notifications are sent, only a single notification will be
-- sent to the creative-level notification topic.
acwCreativeId :: Lens' AccountsCreativesWatch Text
acwCreativeId
  = lens _acwCreativeId
      (\ s a -> s{_acwCreativeId = a})

-- | Multipart request metadata.
acwPayload :: Lens' AccountsCreativesWatch WatchCreativeRequest
acwPayload
  = lens _acwPayload (\ s a -> s{_acwPayload = a})

-- | The account of the creative to watch.
acwAccountId :: Lens' AccountsCreativesWatch Text
acwAccountId
  = lens _acwAccountId (\ s a -> s{_acwAccountId = a})

-- | JSONP
acwCallback :: Lens' AccountsCreativesWatch (Maybe Text)
acwCallback
  = lens _acwCallback (\ s a -> s{_acwCallback = a})

instance GoogleRequest AccountsCreativesWatch where
        type Rs AccountsCreativesWatch = Empty
        type Scopes AccountsCreativesWatch =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsCreativesWatch'{..}
          = go _acwAccountId _acwCreativeId _acwXgafv
              _acwUploadProtocol
              _acwAccessToken
              _acwUploadType
              _acwCallback
              (Just AltJSON)
              _acwPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCreativesWatchResource)
                      mempty
