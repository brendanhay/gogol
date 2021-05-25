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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the requested filter set from the account with the given account
-- ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.delete@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Delete
    (
    -- * REST Resource
      BiddersFilterSetsDeleteResource

    -- * Creating a Request
    , biddersFilterSetsDelete
    , BiddersFilterSetsDelete

    -- * Request Lenses
    , bfsdXgafv
    , bfsdUploadProtocol
    , bfsdAccessToken
    , bfsdUploadType
    , bfsdName
    , bfsdCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.delete@ method which the
-- 'BiddersFilterSetsDelete' request conforms to.
type BiddersFilterSetsDeleteResource =
     "v2beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the requested filter set from the account with the given account
-- ID.
--
-- /See:/ 'biddersFilterSetsDelete' smart constructor.
data BiddersFilterSetsDelete =
  BiddersFilterSetsDelete'
    { _bfsdXgafv :: !(Maybe Xgafv)
    , _bfsdUploadProtocol :: !(Maybe Text)
    , _bfsdAccessToken :: !(Maybe Text)
    , _bfsdUploadType :: !(Maybe Text)
    , _bfsdName :: !Text
    , _bfsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsdXgafv'
--
-- * 'bfsdUploadProtocol'
--
-- * 'bfsdAccessToken'
--
-- * 'bfsdUploadType'
--
-- * 'bfsdName'
--
-- * 'bfsdCallback'
biddersFilterSetsDelete
    :: Text -- ^ 'bfsdName'
    -> BiddersFilterSetsDelete
biddersFilterSetsDelete pBfsdName_ =
  BiddersFilterSetsDelete'
    { _bfsdXgafv = Nothing
    , _bfsdUploadProtocol = Nothing
    , _bfsdAccessToken = Nothing
    , _bfsdUploadType = Nothing
    , _bfsdName = pBfsdName_
    , _bfsdCallback = Nothing
    }


-- | V1 error format.
bfsdXgafv :: Lens' BiddersFilterSetsDelete (Maybe Xgafv)
bfsdXgafv
  = lens _bfsdXgafv (\ s a -> s{_bfsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsdUploadProtocol :: Lens' BiddersFilterSetsDelete (Maybe Text)
bfsdUploadProtocol
  = lens _bfsdUploadProtocol
      (\ s a -> s{_bfsdUploadProtocol = a})

-- | OAuth access token.
bfsdAccessToken :: Lens' BiddersFilterSetsDelete (Maybe Text)
bfsdAccessToken
  = lens _bfsdAccessToken
      (\ s a -> s{_bfsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsdUploadType :: Lens' BiddersFilterSetsDelete (Maybe Text)
bfsdUploadType
  = lens _bfsdUploadType
      (\ s a -> s{_bfsdUploadType = a})

-- | Full name of the resource to delete. For example: - For a bidder-level
-- filter set for bidder 123: \`bidders\/123\/filterSets\/abc\` - For an
-- account-level filter set for the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsdName :: Lens' BiddersFilterSetsDelete Text
bfsdName = lens _bfsdName (\ s a -> s{_bfsdName = a})

-- | JSONP
bfsdCallback :: Lens' BiddersFilterSetsDelete (Maybe Text)
bfsdCallback
  = lens _bfsdCallback (\ s a -> s{_bfsdCallback = a})

instance GoogleRequest BiddersFilterSetsDelete where
        type Rs BiddersFilterSetsDelete = Empty
        type Scopes BiddersFilterSetsDelete =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersFilterSetsDelete'{..}
          = go _bfsdName _bfsdXgafv _bfsdUploadProtocol
              _bfsdAccessToken
              _bfsdUploadType
              _bfsdCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy BiddersFilterSetsDeleteResource)
                      mempty
