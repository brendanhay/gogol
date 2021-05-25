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
-- Module      : Network.Google.Resource.Content.Accounts.Returncarrier.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a return carrier in the merchant account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.returncarrier.patch@.
module Network.Google.Resource.Content.Accounts.Returncarrier.Patch
    (
    -- * REST Resource
      AccountsReturncarrierPatchResource

    -- * Creating a Request
    , accountsReturncarrierPatch
    , AccountsReturncarrierPatch

    -- * Request Lenses
    , arpXgafv
    , arpUploadProtocol
    , arpAccessToken
    , arpUploadType
    , arpPayload
    , arpAccountId
    , arpCarrierAccountId
    , arpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.returncarrier.patch@ method which the
-- 'AccountsReturncarrierPatch' request conforms to.
type AccountsReturncarrierPatchResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "returncarrier" :>
               Capture "carrierAccountId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AccountReturnCarrier :>
                               Patch '[JSON] AccountReturnCarrier

-- | Updates a return carrier in the merchant account.
--
-- /See:/ 'accountsReturncarrierPatch' smart constructor.
data AccountsReturncarrierPatch =
  AccountsReturncarrierPatch'
    { _arpXgafv :: !(Maybe Xgafv)
    , _arpUploadProtocol :: !(Maybe Text)
    , _arpAccessToken :: !(Maybe Text)
    , _arpUploadType :: !(Maybe Text)
    , _arpPayload :: !AccountReturnCarrier
    , _arpAccountId :: !(Textual Int64)
    , _arpCarrierAccountId :: !(Textual Int64)
    , _arpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReturncarrierPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arpXgafv'
--
-- * 'arpUploadProtocol'
--
-- * 'arpAccessToken'
--
-- * 'arpUploadType'
--
-- * 'arpPayload'
--
-- * 'arpAccountId'
--
-- * 'arpCarrierAccountId'
--
-- * 'arpCallback'
accountsReturncarrierPatch
    :: AccountReturnCarrier -- ^ 'arpPayload'
    -> Int64 -- ^ 'arpAccountId'
    -> Int64 -- ^ 'arpCarrierAccountId'
    -> AccountsReturncarrierPatch
accountsReturncarrierPatch pArpPayload_ pArpAccountId_ pArpCarrierAccountId_ =
  AccountsReturncarrierPatch'
    { _arpXgafv = Nothing
    , _arpUploadProtocol = Nothing
    , _arpAccessToken = Nothing
    , _arpUploadType = Nothing
    , _arpPayload = pArpPayload_
    , _arpAccountId = _Coerce # pArpAccountId_
    , _arpCarrierAccountId = _Coerce # pArpCarrierAccountId_
    , _arpCallback = Nothing
    }


-- | V1 error format.
arpXgafv :: Lens' AccountsReturncarrierPatch (Maybe Xgafv)
arpXgafv = lens _arpXgafv (\ s a -> s{_arpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arpUploadProtocol :: Lens' AccountsReturncarrierPatch (Maybe Text)
arpUploadProtocol
  = lens _arpUploadProtocol
      (\ s a -> s{_arpUploadProtocol = a})

-- | OAuth access token.
arpAccessToken :: Lens' AccountsReturncarrierPatch (Maybe Text)
arpAccessToken
  = lens _arpAccessToken
      (\ s a -> s{_arpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arpUploadType :: Lens' AccountsReturncarrierPatch (Maybe Text)
arpUploadType
  = lens _arpUploadType
      (\ s a -> s{_arpUploadType = a})

-- | Multipart request metadata.
arpPayload :: Lens' AccountsReturncarrierPatch AccountReturnCarrier
arpPayload
  = lens _arpPayload (\ s a -> s{_arpPayload = a})

-- | Required. The Merchant Center Account Id under which the Return Carrier
-- is to be linked.
arpAccountId :: Lens' AccountsReturncarrierPatch Int64
arpAccountId
  = lens _arpAccountId (\ s a -> s{_arpAccountId = a})
      . _Coerce

-- | Required. The Google-provided unique carrier ID, used to update the
-- resource.
arpCarrierAccountId :: Lens' AccountsReturncarrierPatch Int64
arpCarrierAccountId
  = lens _arpCarrierAccountId
      (\ s a -> s{_arpCarrierAccountId = a})
      . _Coerce

-- | JSONP
arpCallback :: Lens' AccountsReturncarrierPatch (Maybe Text)
arpCallback
  = lens _arpCallback (\ s a -> s{_arpCallback = a})

instance GoogleRequest AccountsReturncarrierPatch
         where
        type Rs AccountsReturncarrierPatch =
             AccountReturnCarrier
        type Scopes AccountsReturncarrierPatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsReturncarrierPatch'{..}
          = go _arpAccountId _arpCarrierAccountId _arpXgafv
              _arpUploadProtocol
              _arpAccessToken
              _arpUploadType
              _arpCallback
              (Just AltJSON)
              _arpPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReturncarrierPatchResource)
                      mempty
