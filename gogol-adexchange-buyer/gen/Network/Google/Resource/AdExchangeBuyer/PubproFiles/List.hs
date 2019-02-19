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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PubproFiles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested publisher profile(s) by publisher accountId.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pubprofiles.list@.
module Network.Google.Resource.AdExchangeBuyer.PubproFiles.List
    (
    -- * REST Resource
      PubproFilesListResource

    -- * Creating a Request
    , pubproFilesList
    , PubproFilesList

    -- * Request Lenses
    , pflAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.pubprofiles.list@ method which the
-- 'PubproFilesList' request conforms to.
type PubproFilesListResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "publisher" :>
           Capture "accountId" (Textual Int32) :>
             "profiles" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] GetPublisherProFilesByAccountIdResponse

-- | Gets the requested publisher profile(s) by publisher accountId.
--
-- /See:/ 'pubproFilesList' smart constructor.
newtype PubproFilesList =
  PubproFilesList'
    { _pflAccountId :: Textual Int32
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PubproFilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pflAccountId'
pubproFilesList
    :: Int32 -- ^ 'pflAccountId'
    -> PubproFilesList
pubproFilesList pPflAccountId_ =
  PubproFilesList' {_pflAccountId = _Coerce # pPflAccountId_}

-- | The accountId of the publisher to get profiles for.
pflAccountId :: Lens' PubproFilesList Int32
pflAccountId
  = lens _pflAccountId (\ s a -> s{_pflAccountId = a})
      . _Coerce

instance GoogleRequest PubproFilesList where
        type Rs PubproFilesList =
             GetPublisherProFilesByAccountIdResponse
        type Scopes PubproFilesList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient PubproFilesList'{..}
          = go _pflAccountId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PubproFilesListResource)
                      mempty
