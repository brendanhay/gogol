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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the specified filter set for the account with the given account
-- ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.create@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Create
    (
    -- * REST Resource
      BiddersFilterSetsCreateResource

    -- * Creating a Request
    , biddersFilterSetsCreate
    , BiddersFilterSetsCreate

    -- * Request Lenses
    , bfscXgafv
    , bfscUploadProtocol
    , bfscAccessToken
    , bfscUploadType
    , bfscOwnerName
    , bfscPayload
    , bfscIsTransient
    , bfscCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.create@ method which the
-- 'BiddersFilterSetsCreate' request conforms to.
type BiddersFilterSetsCreateResource =
     "v2beta1" :>
       Capture "ownerName" Text :>
         "filterSets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "isTransient" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FilterSet :> Post '[JSON] FilterSet

-- | Creates the specified filter set for the account with the given account
-- ID.
--
-- /See:/ 'biddersFilterSetsCreate' smart constructor.
data BiddersFilterSetsCreate =
  BiddersFilterSetsCreate'
    { _bfscXgafv          :: !(Maybe Xgafv)
    , _bfscUploadProtocol :: !(Maybe Text)
    , _bfscAccessToken    :: !(Maybe Text)
    , _bfscUploadType     :: !(Maybe Text)
    , _bfscOwnerName      :: !Text
    , _bfscPayload        :: !FilterSet
    , _bfscIsTransient    :: !(Maybe Bool)
    , _bfscCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfscXgafv'
--
-- * 'bfscUploadProtocol'
--
-- * 'bfscAccessToken'
--
-- * 'bfscUploadType'
--
-- * 'bfscOwnerName'
--
-- * 'bfscPayload'
--
-- * 'bfscIsTransient'
--
-- * 'bfscCallback'
biddersFilterSetsCreate
    :: Text -- ^ 'bfscOwnerName'
    -> FilterSet -- ^ 'bfscPayload'
    -> BiddersFilterSetsCreate
biddersFilterSetsCreate pBfscOwnerName_ pBfscPayload_ =
  BiddersFilterSetsCreate'
    { _bfscXgafv = Nothing
    , _bfscUploadProtocol = Nothing
    , _bfscAccessToken = Nothing
    , _bfscUploadType = Nothing
    , _bfscOwnerName = pBfscOwnerName_
    , _bfscPayload = pBfscPayload_
    , _bfscIsTransient = Nothing
    , _bfscCallback = Nothing
    }


-- | V1 error format.
bfscXgafv :: Lens' BiddersFilterSetsCreate (Maybe Xgafv)
bfscXgafv
  = lens _bfscXgafv (\ s a -> s{_bfscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfscUploadProtocol :: Lens' BiddersFilterSetsCreate (Maybe Text)
bfscUploadProtocol
  = lens _bfscUploadProtocol
      (\ s a -> s{_bfscUploadProtocol = a})

-- | OAuth access token.
bfscAccessToken :: Lens' BiddersFilterSetsCreate (Maybe Text)
bfscAccessToken
  = lens _bfscAccessToken
      (\ s a -> s{_bfscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfscUploadType :: Lens' BiddersFilterSetsCreate (Maybe Text)
bfscUploadType
  = lens _bfscUploadType
      (\ s a -> s{_bfscUploadType = a})

-- | Name of the owner (bidder or account) of the filter set to be created.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\` - For an account-level filter set for the buyer account
-- representing bidder 123: \`bidders\/123\/accounts\/123\` - For an
-- account-level filter set for the child seat buyer account 456 whose
-- bidder is 123: \`bidders\/123\/accounts\/456\`
bfscOwnerName :: Lens' BiddersFilterSetsCreate Text
bfscOwnerName
  = lens _bfscOwnerName
      (\ s a -> s{_bfscOwnerName = a})

-- | Multipart request metadata.
bfscPayload :: Lens' BiddersFilterSetsCreate FilterSet
bfscPayload
  = lens _bfscPayload (\ s a -> s{_bfscPayload = a})

-- | Whether the filter set is transient, or should be persisted
-- indefinitely. By default, filter sets are not transient. If transient,
-- it will be available for at least 1 hour after creation.
bfscIsTransient :: Lens' BiddersFilterSetsCreate (Maybe Bool)
bfscIsTransient
  = lens _bfscIsTransient
      (\ s a -> s{_bfscIsTransient = a})

-- | JSONP
bfscCallback :: Lens' BiddersFilterSetsCreate (Maybe Text)
bfscCallback
  = lens _bfscCallback (\ s a -> s{_bfscCallback = a})

instance GoogleRequest BiddersFilterSetsCreate where
        type Rs BiddersFilterSetsCreate = FilterSet
        type Scopes BiddersFilterSetsCreate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersFilterSetsCreate'{..}
          = go _bfscOwnerName _bfscXgafv _bfscUploadProtocol
              _bfscAccessToken
              _bfscUploadType
              _bfscIsTransient
              _bfscCallback
              (Just AltJSON)
              _bfscPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy BiddersFilterSetsCreateResource)
                      mempty
