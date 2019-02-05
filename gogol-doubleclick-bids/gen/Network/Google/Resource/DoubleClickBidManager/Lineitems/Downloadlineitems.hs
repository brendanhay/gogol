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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves line items in CSV format. TrueView line items are not
-- supported.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.lineitems.downloadlineitems@.
module Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems
    (
    -- * REST Resource
      LineitemsDownloadlineitemsResource

    -- * Creating a Request
    , lineitemsDownloadlineitems
    , LineitemsDownloadlineitems

    -- * Request Lenses
    , ldPayload
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.lineitems.downloadlineitems@ method which the
-- 'LineitemsDownloadlineitems' request conforms to.
type LineitemsDownloadlineitemsResource =
     "doubleclickbidmanager" :>
       "v1" :>
         "lineitems" :>
           "downloadlineitems" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] DownloadLineItemsRequest :>
                 Post '[JSON] DownloadLineItemsResponse

-- | Retrieves line items in CSV format. TrueView line items are not
-- supported.
--
-- /See:/ 'lineitemsDownloadlineitems' smart constructor.
newtype LineitemsDownloadlineitems = LineitemsDownloadlineitems'
    { _ldPayload :: DownloadLineItemsRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineitemsDownloadlineitems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldPayload'
lineitemsDownloadlineitems
    :: DownloadLineItemsRequest -- ^ 'ldPayload'
    -> LineitemsDownloadlineitems
lineitemsDownloadlineitems pLdPayload_ =
    LineitemsDownloadlineitems'
    { _ldPayload = pLdPayload_
    }

-- | Multipart request metadata.
ldPayload :: Lens' LineitemsDownloadlineitems DownloadLineItemsRequest
ldPayload
  = lens _ldPayload (\ s a -> s{_ldPayload = a})

instance GoogleRequest LineitemsDownloadlineitems
         where
        type Rs LineitemsDownloadlineitems =
             DownloadLineItemsResponse
        type Scopes LineitemsDownloadlineitems =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient LineitemsDownloadlineitems'{..}
          = go (Just AltJSON) _ldPayload doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy LineitemsDownloadlineitemsResource)
                      mempty
