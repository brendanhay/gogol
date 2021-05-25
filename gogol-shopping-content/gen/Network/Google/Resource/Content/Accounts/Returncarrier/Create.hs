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
-- Module      : Network.Google.Resource.Content.Accounts.Returncarrier.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Links return carrier to a merchant account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.returncarrier.create@.
module Network.Google.Resource.Content.Accounts.Returncarrier.Create
    (
    -- * REST Resource
      AccountsReturncarrierCreateResource

    -- * Creating a Request
    , accountsReturncarrierCreate
    , AccountsReturncarrierCreate

    -- * Request Lenses
    , arcXgafv
    , arcUploadProtocol
    , arcAccessToken
    , arcUploadType
    , arcPayload
    , arcAccountId
    , arcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.returncarrier.create@ method which the
-- 'AccountsReturncarrierCreate' request conforms to.
type AccountsReturncarrierCreateResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "returncarrier" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountReturnCarrier :>
                             Post '[JSON] AccountReturnCarrier

-- | Links return carrier to a merchant account.
--
-- /See:/ 'accountsReturncarrierCreate' smart constructor.
data AccountsReturncarrierCreate =
  AccountsReturncarrierCreate'
    { _arcXgafv :: !(Maybe Xgafv)
    , _arcUploadProtocol :: !(Maybe Text)
    , _arcAccessToken :: !(Maybe Text)
    , _arcUploadType :: !(Maybe Text)
    , _arcPayload :: !AccountReturnCarrier
    , _arcAccountId :: !(Textual Int64)
    , _arcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReturncarrierCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arcXgafv'
--
-- * 'arcUploadProtocol'
--
-- * 'arcAccessToken'
--
-- * 'arcUploadType'
--
-- * 'arcPayload'
--
-- * 'arcAccountId'
--
-- * 'arcCallback'
accountsReturncarrierCreate
    :: AccountReturnCarrier -- ^ 'arcPayload'
    -> Int64 -- ^ 'arcAccountId'
    -> AccountsReturncarrierCreate
accountsReturncarrierCreate pArcPayload_ pArcAccountId_ =
  AccountsReturncarrierCreate'
    { _arcXgafv = Nothing
    , _arcUploadProtocol = Nothing
    , _arcAccessToken = Nothing
    , _arcUploadType = Nothing
    , _arcPayload = pArcPayload_
    , _arcAccountId = _Coerce # pArcAccountId_
    , _arcCallback = Nothing
    }


-- | V1 error format.
arcXgafv :: Lens' AccountsReturncarrierCreate (Maybe Xgafv)
arcXgafv = lens _arcXgafv (\ s a -> s{_arcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arcUploadProtocol :: Lens' AccountsReturncarrierCreate (Maybe Text)
arcUploadProtocol
  = lens _arcUploadProtocol
      (\ s a -> s{_arcUploadProtocol = a})

-- | OAuth access token.
arcAccessToken :: Lens' AccountsReturncarrierCreate (Maybe Text)
arcAccessToken
  = lens _arcAccessToken
      (\ s a -> s{_arcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arcUploadType :: Lens' AccountsReturncarrierCreate (Maybe Text)
arcUploadType
  = lens _arcUploadType
      (\ s a -> s{_arcUploadType = a})

-- | Multipart request metadata.
arcPayload :: Lens' AccountsReturncarrierCreate AccountReturnCarrier
arcPayload
  = lens _arcPayload (\ s a -> s{_arcPayload = a})

-- | Required. The Merchant Center Account Id under which the Return Carrier
-- is to be linked.
arcAccountId :: Lens' AccountsReturncarrierCreate Int64
arcAccountId
  = lens _arcAccountId (\ s a -> s{_arcAccountId = a})
      . _Coerce

-- | JSONP
arcCallback :: Lens' AccountsReturncarrierCreate (Maybe Text)
arcCallback
  = lens _arcCallback (\ s a -> s{_arcCallback = a})

instance GoogleRequest AccountsReturncarrierCreate
         where
        type Rs AccountsReturncarrierCreate =
             AccountReturnCarrier
        type Scopes AccountsReturncarrierCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsReturncarrierCreate'{..}
          = go _arcAccountId _arcXgafv _arcUploadProtocol
              _arcAccessToken
              _arcUploadType
              _arcCallback
              (Just AltJSON)
              _arcPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReturncarrierCreateResource)
                      mempty
