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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the requested filter set for the account with the given
-- account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.get@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Get
    (
    -- * REST Resource
      BiddersFilterSetsGetResource

    -- * Creating a Request
    , biddersFilterSetsGet
    , BiddersFilterSetsGet

    -- * Request Lenses
    , bfsgXgafv
    , bfsgUploadProtocol
    , bfsgAccessToken
    , bfsgUploadType
    , bfsgName
    , bfsgCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.get@ method which the
-- 'BiddersFilterSetsGet' request conforms to.
type BiddersFilterSetsGetResource =
     "v2beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] FilterSet

-- | Retrieves the requested filter set for the account with the given
-- account ID.
--
-- /See:/ 'biddersFilterSetsGet' smart constructor.
data BiddersFilterSetsGet = BiddersFilterSetsGet'
    { _bfsgXgafv          :: !(Maybe Xgafv)
    , _bfsgUploadProtocol :: !(Maybe Text)
    , _bfsgAccessToken    :: !(Maybe Text)
    , _bfsgUploadType     :: !(Maybe Text)
    , _bfsgName           :: !Text
    , _bfsgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BiddersFilterSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsgXgafv'
--
-- * 'bfsgUploadProtocol'
--
-- * 'bfsgAccessToken'
--
-- * 'bfsgUploadType'
--
-- * 'bfsgName'
--
-- * 'bfsgCallback'
biddersFilterSetsGet
    :: Text -- ^ 'bfsgName'
    -> BiddersFilterSetsGet
biddersFilterSetsGet pBfsgName_ =
    BiddersFilterSetsGet'
    { _bfsgXgafv = Nothing
    , _bfsgUploadProtocol = Nothing
    , _bfsgAccessToken = Nothing
    , _bfsgUploadType = Nothing
    , _bfsgName = pBfsgName_
    , _bfsgCallback = Nothing
    }

-- | V1 error format.
bfsgXgafv :: Lens' BiddersFilterSetsGet (Maybe Xgafv)
bfsgXgafv
  = lens _bfsgXgafv (\ s a -> s{_bfsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsgUploadProtocol :: Lens' BiddersFilterSetsGet (Maybe Text)
bfsgUploadProtocol
  = lens _bfsgUploadProtocol
      (\ s a -> s{_bfsgUploadProtocol = a})

-- | OAuth access token.
bfsgAccessToken :: Lens' BiddersFilterSetsGet (Maybe Text)
bfsgAccessToken
  = lens _bfsgAccessToken
      (\ s a -> s{_bfsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsgUploadType :: Lens' BiddersFilterSetsGet (Maybe Text)
bfsgUploadType
  = lens _bfsgUploadType
      (\ s a -> s{_bfsgUploadType = a})

-- | Full name of the resource being requested. For example: - For a
-- bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsgName :: Lens' BiddersFilterSetsGet Text
bfsgName = lens _bfsgName (\ s a -> s{_bfsgName = a})

-- | JSONP
bfsgCallback :: Lens' BiddersFilterSetsGet (Maybe Text)
bfsgCallback
  = lens _bfsgCallback (\ s a -> s{_bfsgCallback = a})

instance GoogleRequest BiddersFilterSetsGet where
        type Rs BiddersFilterSetsGet = FilterSet
        type Scopes BiddersFilterSetsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersFilterSetsGet'{..}
          = go _bfsgName _bfsgXgafv _bfsgUploadProtocol
              _bfsgAccessToken
              _bfsgUploadType
              _bfsgCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy BiddersFilterSetsGetResource)
                      mempty
