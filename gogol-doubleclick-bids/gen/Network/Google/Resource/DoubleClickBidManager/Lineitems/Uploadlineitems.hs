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
-- Uploads line items in CSV format. YouTube & partners line items are not
-- supported.
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
    , luXgafv
    , luUploadProtocol
    , luAccessToken
    , luUploadType
    , luPayload
    , luCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.lineitems.uploadlineitems@ method which the
-- 'LineitemsUploadlineitems' request conforms to.
type LineitemsUploadlineitemsResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "lineitems" :>
           "uploadlineitems" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UploadLineItemsRequest :>
                           Post '[JSON] UploadLineItemsResponse

-- | Uploads line items in CSV format. YouTube & partners line items are not
-- supported.
--
-- /See:/ 'lineitemsUploadlineitems' smart constructor.
data LineitemsUploadlineitems =
  LineitemsUploadlineitems'
    { _luXgafv :: !(Maybe Xgafv)
    , _luUploadProtocol :: !(Maybe Text)
    , _luAccessToken :: !(Maybe Text)
    , _luUploadType :: !(Maybe Text)
    , _luPayload :: !UploadLineItemsRequest
    , _luCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LineitemsUploadlineitems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luXgafv'
--
-- * 'luUploadProtocol'
--
-- * 'luAccessToken'
--
-- * 'luUploadType'
--
-- * 'luPayload'
--
-- * 'luCallback'
lineitemsUploadlineitems
    :: UploadLineItemsRequest -- ^ 'luPayload'
    -> LineitemsUploadlineitems
lineitemsUploadlineitems pLuPayload_ =
  LineitemsUploadlineitems'
    { _luXgafv = Nothing
    , _luUploadProtocol = Nothing
    , _luAccessToken = Nothing
    , _luUploadType = Nothing
    , _luPayload = pLuPayload_
    , _luCallback = Nothing
    }


-- | V1 error format.
luXgafv :: Lens' LineitemsUploadlineitems (Maybe Xgafv)
luXgafv = lens _luXgafv (\ s a -> s{_luXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
luUploadProtocol :: Lens' LineitemsUploadlineitems (Maybe Text)
luUploadProtocol
  = lens _luUploadProtocol
      (\ s a -> s{_luUploadProtocol = a})

-- | OAuth access token.
luAccessToken :: Lens' LineitemsUploadlineitems (Maybe Text)
luAccessToken
  = lens _luAccessToken
      (\ s a -> s{_luAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
luUploadType :: Lens' LineitemsUploadlineitems (Maybe Text)
luUploadType
  = lens _luUploadType (\ s a -> s{_luUploadType = a})

-- | Multipart request metadata.
luPayload :: Lens' LineitemsUploadlineitems UploadLineItemsRequest
luPayload
  = lens _luPayload (\ s a -> s{_luPayload = a})

-- | JSONP
luCallback :: Lens' LineitemsUploadlineitems (Maybe Text)
luCallback
  = lens _luCallback (\ s a -> s{_luCallback = a})

instance GoogleRequest LineitemsUploadlineitems where
        type Rs LineitemsUploadlineitems =
             UploadLineItemsResponse
        type Scopes LineitemsUploadlineitems =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient LineitemsUploadlineitems'{..}
          = go _luXgafv _luUploadProtocol _luAccessToken
              _luUploadType
              _luCallback
              (Just AltJSON)
              _luPayload
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy LineitemsUploadlineitemsResource)
                      mempty
