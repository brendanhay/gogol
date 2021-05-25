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
-- Retrieves line items in CSV format. YouTube & partners line items are
-- not supported.
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
    , ldXgafv
    , ldUploadProtocol
    , ldAccessToken
    , ldUploadType
    , ldPayload
    , ldCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.lineitems.downloadlineitems@ method which the
-- 'LineitemsDownloadlineitems' request conforms to.
type LineitemsDownloadlineitemsResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "lineitems" :>
           "downloadlineitems" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DownloadLineItemsRequest :>
                           Post '[JSON] DownloadLineItemsResponse

-- | Retrieves line items in CSV format. YouTube & partners line items are
-- not supported.
--
-- /See:/ 'lineitemsDownloadlineitems' smart constructor.
data LineitemsDownloadlineitems =
  LineitemsDownloadlineitems'
    { _ldXgafv :: !(Maybe Xgafv)
    , _ldUploadProtocol :: !(Maybe Text)
    , _ldAccessToken :: !(Maybe Text)
    , _ldUploadType :: !(Maybe Text)
    , _ldPayload :: !DownloadLineItemsRequest
    , _ldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LineitemsDownloadlineitems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldXgafv'
--
-- * 'ldUploadProtocol'
--
-- * 'ldAccessToken'
--
-- * 'ldUploadType'
--
-- * 'ldPayload'
--
-- * 'ldCallback'
lineitemsDownloadlineitems
    :: DownloadLineItemsRequest -- ^ 'ldPayload'
    -> LineitemsDownloadlineitems
lineitemsDownloadlineitems pLdPayload_ =
  LineitemsDownloadlineitems'
    { _ldXgafv = Nothing
    , _ldUploadProtocol = Nothing
    , _ldAccessToken = Nothing
    , _ldUploadType = Nothing
    , _ldPayload = pLdPayload_
    , _ldCallback = Nothing
    }


-- | V1 error format.
ldXgafv :: Lens' LineitemsDownloadlineitems (Maybe Xgafv)
ldXgafv = lens _ldXgafv (\ s a -> s{_ldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ldUploadProtocol :: Lens' LineitemsDownloadlineitems (Maybe Text)
ldUploadProtocol
  = lens _ldUploadProtocol
      (\ s a -> s{_ldUploadProtocol = a})

-- | OAuth access token.
ldAccessToken :: Lens' LineitemsDownloadlineitems (Maybe Text)
ldAccessToken
  = lens _ldAccessToken
      (\ s a -> s{_ldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ldUploadType :: Lens' LineitemsDownloadlineitems (Maybe Text)
ldUploadType
  = lens _ldUploadType (\ s a -> s{_ldUploadType = a})

-- | Multipart request metadata.
ldPayload :: Lens' LineitemsDownloadlineitems DownloadLineItemsRequest
ldPayload
  = lens _ldPayload (\ s a -> s{_ldPayload = a})

-- | JSONP
ldCallback :: Lens' LineitemsDownloadlineitems (Maybe Text)
ldCallback
  = lens _ldCallback (\ s a -> s{_ldCallback = a})

instance GoogleRequest LineitemsDownloadlineitems
         where
        type Rs LineitemsDownloadlineitems =
             DownloadLineItemsResponse
        type Scopes LineitemsDownloadlineitems =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient LineitemsDownloadlineitems'{..}
          = go _ldXgafv _ldUploadProtocol _ldAccessToken
              _ldUploadType
              _ldCallback
              (Just AltJSON)
              _ldPayload
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy LineitemsDownloadlineitemsResource)
                      mempty
