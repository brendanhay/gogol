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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads line items in CSV format. TrueView line items are not supported.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.lineitems.uploadlineitems@.
module Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems
    (
    -- * REST Resource
      LineitemsUploadlineitemsResource

    -- * Creating a Request
    , lineitemsUploadlineitems
    , LineitemsUploadlineitems

    -- * Request Lenses
    , luPayload
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.lineitems.uploadlineitems@ method which the
-- 'LineitemsUploadlineitems' request conforms to.
type LineitemsUploadlineitemsResource =
     "doubleclickbidmanager" :>
       "v1" :>
         "lineitems" :>
           "uploadlineitems" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] UploadLineItemsRequest :>
                 Post '[JSON] UploadLineItemsResponse

-- | Uploads line items in CSV format. TrueView line items are not supported.
--
-- /See:/ 'lineitemsUploadlineitems' smart constructor.
newtype LineitemsUploadlineitems = LineitemsUploadlineitems'
    { _luPayload :: UploadLineItemsRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineitemsUploadlineitems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luPayload'
lineitemsUploadlineitems
    :: UploadLineItemsRequest -- ^ 'luPayload'
    -> LineitemsUploadlineitems
lineitemsUploadlineitems pLuPayload_ =
    LineitemsUploadlineitems'
    { _luPayload = pLuPayload_
    }

-- | Multipart request metadata.
luPayload :: Lens' LineitemsUploadlineitems UploadLineItemsRequest
luPayload
  = lens _luPayload (\ s a -> s{_luPayload = a})

instance GoogleRequest LineitemsUploadlineitems where
        type Rs LineitemsUploadlineitems =
             UploadLineItemsResponse
        type Scopes LineitemsUploadlineitems =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient LineitemsUploadlineitems'{..}
          = go (Just AltJSON) _luPayload doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy LineitemsUploadlineitemsResource)
                      mempty
