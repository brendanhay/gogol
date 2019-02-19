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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.Creatives.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a single creative. A creative is deactivated upon deletion and
-- does not count against active snippet quota. A deleted creative should
-- not be used in bidding (all bids with that creative will be rejected).
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.creatives.delete@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.Creatives.Delete
    (
    -- * REST Resource
      BiddersAccountsCreativesDeleteResource

    -- * Creating a Request
    , biddersAccountsCreativesDelete
    , BiddersAccountsCreativesDelete

    -- * Request Lenses
    , bacdXgafv
    , bacdUploadProtocol
    , bacdAccessToken
    , bacdUploadType
    , bacdCreativeId
    , bacdOwnerName
    , bacdCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.creatives.delete@ method which the
-- 'BiddersAccountsCreativesDelete' request conforms to.
type BiddersAccountsCreativesDeleteResource =
     "v2beta1" :>
       Capture "ownerName" Text :>
         "creatives" :>
           Capture "creativeId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a single creative. A creative is deactivated upon deletion and
-- does not count against active snippet quota. A deleted creative should
-- not be used in bidding (all bids with that creative will be rejected).
--
-- /See:/ 'biddersAccountsCreativesDelete' smart constructor.
data BiddersAccountsCreativesDelete =
  BiddersAccountsCreativesDelete'
    { _bacdXgafv          :: !(Maybe Xgafv)
    , _bacdUploadProtocol :: !(Maybe Text)
    , _bacdAccessToken    :: !(Maybe Text)
    , _bacdUploadType     :: !(Maybe Text)
    , _bacdCreativeId     :: !Text
    , _bacdOwnerName      :: !Text
    , _bacdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BiddersAccountsCreativesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacdXgafv'
--
-- * 'bacdUploadProtocol'
--
-- * 'bacdAccessToken'
--
-- * 'bacdUploadType'
--
-- * 'bacdCreativeId'
--
-- * 'bacdOwnerName'
--
-- * 'bacdCallback'
biddersAccountsCreativesDelete
    :: Text -- ^ 'bacdCreativeId'
    -> Text -- ^ 'bacdOwnerName'
    -> BiddersAccountsCreativesDelete
biddersAccountsCreativesDelete pBacdCreativeId_ pBacdOwnerName_ =
  BiddersAccountsCreativesDelete'
    { _bacdXgafv = Nothing
    , _bacdUploadProtocol = Nothing
    , _bacdAccessToken = Nothing
    , _bacdUploadType = Nothing
    , _bacdCreativeId = pBacdCreativeId_
    , _bacdOwnerName = pBacdOwnerName_
    , _bacdCallback = Nothing
    }

-- | V1 error format.
bacdXgafv :: Lens' BiddersAccountsCreativesDelete (Maybe Xgafv)
bacdXgafv
  = lens _bacdXgafv (\ s a -> s{_bacdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bacdUploadProtocol :: Lens' BiddersAccountsCreativesDelete (Maybe Text)
bacdUploadProtocol
  = lens _bacdUploadProtocol
      (\ s a -> s{_bacdUploadProtocol = a})

-- | OAuth access token.
bacdAccessToken :: Lens' BiddersAccountsCreativesDelete (Maybe Text)
bacdAccessToken
  = lens _bacdAccessToken
      (\ s a -> s{_bacdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bacdUploadType :: Lens' BiddersAccountsCreativesDelete (Maybe Text)
bacdUploadType
  = lens _bacdUploadType
      (\ s a -> s{_bacdUploadType = a})

-- | The ID of the creative to delete.
bacdCreativeId :: Lens' BiddersAccountsCreativesDelete Text
bacdCreativeId
  = lens _bacdCreativeId
      (\ s a -> s{_bacdCreativeId = a})

-- | Name of the owner (bidder or account) of the creative to be deleted. For
-- example: - For an account-level creative for the buyer account
-- representing bidder 123: \`bidders\/123\/accounts\/123\` - For an
-- account-level creative for the child seat buyer account 456 whose bidder
-- is 123: \`bidders\/123\/accounts\/456\`
bacdOwnerName :: Lens' BiddersAccountsCreativesDelete Text
bacdOwnerName
  = lens _bacdOwnerName
      (\ s a -> s{_bacdOwnerName = a})

-- | JSONP
bacdCallback :: Lens' BiddersAccountsCreativesDelete (Maybe Text)
bacdCallback
  = lens _bacdCallback (\ s a -> s{_bacdCallback = a})

instance GoogleRequest BiddersAccountsCreativesDelete
         where
        type Rs BiddersAccountsCreativesDelete = Empty
        type Scopes BiddersAccountsCreativesDelete =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersAccountsCreativesDelete'{..}
          = go _bacdOwnerName _bacdCreativeId _bacdXgafv
              _bacdUploadProtocol
              _bacdAccessToken
              _bacdUploadType
              _bacdCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersAccountsCreativesDeleteResource)
                      mempty
