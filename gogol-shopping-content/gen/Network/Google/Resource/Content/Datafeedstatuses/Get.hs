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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeedstatuses.get@.
module Network.Google.Resource.Content.Datafeedstatuses.Get
    (
    -- * REST Resource
      DatafeedstatusesGetResource

    -- * Creating a Request
    , datafeedstatusesGet
    , DatafeedstatusesGet

    -- * Request Lenses
    , dggMerchantId
    , dggCountry
    , dggDatafeedId
    , dggLanguage
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.get@ method which the
-- 'DatafeedstatusesGet' request conforms to.
type DatafeedstatusesGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeedstatuses" :>
             Capture "datafeedId" (Textual Word64) :>
               QueryParam "country" Text :>
                 QueryParam "language" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] DatafeedStatus

-- | Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ 'datafeedstatusesGet' smart constructor.
data DatafeedstatusesGet =
  DatafeedstatusesGet'
    { _dggMerchantId :: !(Textual Word64)
    , _dggCountry    :: !(Maybe Text)
    , _dggDatafeedId :: !(Textual Word64)
    , _dggLanguage   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dggMerchantId'
--
-- * 'dggCountry'
--
-- * 'dggDatafeedId'
--
-- * 'dggLanguage'
datafeedstatusesGet
    :: Word64 -- ^ 'dggMerchantId'
    -> Word64 -- ^ 'dggDatafeedId'
    -> DatafeedstatusesGet
datafeedstatusesGet pDggMerchantId_ pDggDatafeedId_ =
  DatafeedstatusesGet'
    { _dggMerchantId = _Coerce # pDggMerchantId_
    , _dggCountry = Nothing
    , _dggDatafeedId = _Coerce # pDggDatafeedId_
    , _dggLanguage = Nothing
    }

-- | The ID of the account that manages the datafeed. This account cannot be
-- a multi-client account.
dggMerchantId :: Lens' DatafeedstatusesGet Word64
dggMerchantId
  = lens _dggMerchantId
      (\ s a -> s{_dggMerchantId = a})
      . _Coerce

-- | The country for which to get the datafeed status. If this parameter is
-- provided then language must also be provided. Note that this parameter
-- is required for feeds targeting multiple countries and languages, since
-- a feed may have a different status for each target.
dggCountry :: Lens' DatafeedstatusesGet (Maybe Text)
dggCountry
  = lens _dggCountry (\ s a -> s{_dggCountry = a})

-- | The ID of the datafeed.
dggDatafeedId :: Lens' DatafeedstatusesGet Word64
dggDatafeedId
  = lens _dggDatafeedId
      (\ s a -> s{_dggDatafeedId = a})
      . _Coerce

-- | The language for which to get the datafeed status. If this parameter is
-- provided then country must also be provided. Note that this parameter is
-- required for feeds targeting multiple countries and languages, since a
-- feed may have a different status for each target.
dggLanguage :: Lens' DatafeedstatusesGet (Maybe Text)
dggLanguage
  = lens _dggLanguage (\ s a -> s{_dggLanguage = a})

instance GoogleRequest DatafeedstatusesGet where
        type Rs DatafeedstatusesGet = DatafeedStatus
        type Scopes DatafeedstatusesGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedstatusesGet'{..}
          = go _dggMerchantId _dggDatafeedId _dggCountry
              _dggLanguage
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesGetResource)
                      mempty
