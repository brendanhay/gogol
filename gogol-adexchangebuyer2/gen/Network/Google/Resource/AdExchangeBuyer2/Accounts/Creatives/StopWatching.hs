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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.StopWatching
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops watching a creative. Will stop push notifications being sent to
-- the topics when the creative changes status.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.stopWatching@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.StopWatching
    (
    -- * REST Resource
      AccountsCreativesStopWatchingResource

    -- * Creating a Request
    , accountsCreativesStopWatching
    , AccountsCreativesStopWatching

    -- * Request Lenses
    , acswXgafv
    , acswUploadProtocol
    , acswAccessToken
    , acswUploadType
    , acswCreativeId
    , acswPayload
    , acswAccountId
    , acswCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.stopWatching@ method which the
-- 'AccountsCreativesStopWatching' request conforms to.
type AccountsCreativesStopWatchingResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "creatives" :>
             CaptureMode "creativeId" "stopWatching" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] StopWatchingCreativeRequest :>
                             Post '[JSON] Empty

-- | Stops watching a creative. Will stop push notifications being sent to
-- the topics when the creative changes status.
--
-- /See:/ 'accountsCreativesStopWatching' smart constructor.
data AccountsCreativesStopWatching = AccountsCreativesStopWatching'
    { _acswXgafv          :: !(Maybe Xgafv)
    , _acswUploadProtocol :: !(Maybe Text)
    , _acswAccessToken    :: !(Maybe Text)
    , _acswUploadType     :: !(Maybe Text)
    , _acswCreativeId     :: !Text
    , _acswPayload        :: !StopWatchingCreativeRequest
    , _acswAccountId      :: !Text
    , _acswCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCreativesStopWatching' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acswXgafv'
--
-- * 'acswUploadProtocol'
--
-- * 'acswAccessToken'
--
-- * 'acswUploadType'
--
-- * 'acswCreativeId'
--
-- * 'acswPayload'
--
-- * 'acswAccountId'
--
-- * 'acswCallback'
accountsCreativesStopWatching
    :: Text -- ^ 'acswCreativeId'
    -> StopWatchingCreativeRequest -- ^ 'acswPayload'
    -> Text -- ^ 'acswAccountId'
    -> AccountsCreativesStopWatching
accountsCreativesStopWatching pAcswCreativeId_ pAcswPayload_ pAcswAccountId_ =
    AccountsCreativesStopWatching'
    { _acswXgafv = Nothing
    , _acswUploadProtocol = Nothing
    , _acswAccessToken = Nothing
    , _acswUploadType = Nothing
    , _acswCreativeId = pAcswCreativeId_
    , _acswPayload = pAcswPayload_
    , _acswAccountId = pAcswAccountId_
    , _acswCallback = Nothing
    }

-- | V1 error format.
acswXgafv :: Lens' AccountsCreativesStopWatching (Maybe Xgafv)
acswXgafv
  = lens _acswXgafv (\ s a -> s{_acswXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acswUploadProtocol :: Lens' AccountsCreativesStopWatching (Maybe Text)
acswUploadProtocol
  = lens _acswUploadProtocol
      (\ s a -> s{_acswUploadProtocol = a})

-- | OAuth access token.
acswAccessToken :: Lens' AccountsCreativesStopWatching (Maybe Text)
acswAccessToken
  = lens _acswAccessToken
      (\ s a -> s{_acswAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acswUploadType :: Lens' AccountsCreativesStopWatching (Maybe Text)
acswUploadType
  = lens _acswUploadType
      (\ s a -> s{_acswUploadType = a})

-- | The creative ID of the creative to stop notifications for. Specify \"-\"
-- to specify stopping account level notifications.
acswCreativeId :: Lens' AccountsCreativesStopWatching Text
acswCreativeId
  = lens _acswCreativeId
      (\ s a -> s{_acswCreativeId = a})

-- | Multipart request metadata.
acswPayload :: Lens' AccountsCreativesStopWatching StopWatchingCreativeRequest
acswPayload
  = lens _acswPayload (\ s a -> s{_acswPayload = a})

-- | The account of the creative to stop notifications for.
acswAccountId :: Lens' AccountsCreativesStopWatching Text
acswAccountId
  = lens _acswAccountId
      (\ s a -> s{_acswAccountId = a})

-- | JSONP
acswCallback :: Lens' AccountsCreativesStopWatching (Maybe Text)
acswCallback
  = lens _acswCallback (\ s a -> s{_acswCallback = a})

instance GoogleRequest AccountsCreativesStopWatching
         where
        type Rs AccountsCreativesStopWatching = Empty
        type Scopes AccountsCreativesStopWatching =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsCreativesStopWatching'{..}
          = go _acswAccountId _acswCreativeId _acswXgafv
              _acswUploadProtocol
              _acswAccessToken
              _acswUploadType
              _acswCallback
              (Just AltJSON)
              _acswPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsCreativesStopWatchingResource)
                      mempty
