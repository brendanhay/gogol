{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads line items in CSV format.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerLineitemsUploadlineitems@.
module Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems
    (
    -- * REST Resource
      LineitemsUploadlineitemsResource

    -- * Creating a Request
    , lineitemsUploadlineitems'
    , LineitemsUploadlineitems'

    -- * Request Lenses
    , luQuotaUser
    , luPrettyPrint
    , luUploadLineItemsRequest
    , luUserIP
    , luKey
    , luOAuthToken
    , luFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerLineitemsUploadlineitems@ which the
-- 'LineitemsUploadlineitems'' request conforms to.
type LineitemsUploadlineitemsResource =
     "lineitems" :>
       "uploadlineitems" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UploadLineItemsRequest :>
                         Post '[JSON] UploadLineItemsResponse

-- | Uploads line items in CSV format.
--
-- /See:/ 'lineitemsUploadlineitems'' smart constructor.
data LineitemsUploadlineitems' = LineitemsUploadlineitems'
    { _luQuotaUser              :: !(Maybe Text)
    , _luPrettyPrint            :: !Bool
    , _luUploadLineItemsRequest :: !UploadLineItemsRequest
    , _luUserIP                 :: !(Maybe Text)
    , _luKey                    :: !(Maybe Key)
    , _luOAuthToken             :: !(Maybe OAuthToken)
    , _luFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineitemsUploadlineitems'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luQuotaUser'
--
-- * 'luPrettyPrint'
--
-- * 'luUploadLineItemsRequest'
--
-- * 'luUserIP'
--
-- * 'luKey'
--
-- * 'luOAuthToken'
--
-- * 'luFields'
lineitemsUploadlineitems'
    :: UploadLineItemsRequest -- ^ 'UploadLineItemsRequest'
    -> LineitemsUploadlineitems'
lineitemsUploadlineitems' pLuUploadLineItemsRequest_ =
    LineitemsUploadlineitems'
    { _luQuotaUser = Nothing
    , _luPrettyPrint = True
    , _luUploadLineItemsRequest = pLuUploadLineItemsRequest_
    , _luUserIP = Nothing
    , _luKey = Nothing
    , _luOAuthToken = Nothing
    , _luFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
luQuotaUser :: Lens' LineitemsUploadlineitems' (Maybe Text)
luQuotaUser
  = lens _luQuotaUser (\ s a -> s{_luQuotaUser = a})

-- | Returns response with indentations and line breaks.
luPrettyPrint :: Lens' LineitemsUploadlineitems' Bool
luPrettyPrint
  = lens _luPrettyPrint
      (\ s a -> s{_luPrettyPrint = a})

-- | Multipart request metadata.
luUploadLineItemsRequest :: Lens' LineitemsUploadlineitems' UploadLineItemsRequest
luUploadLineItemsRequest
  = lens _luUploadLineItemsRequest
      (\ s a -> s{_luUploadLineItemsRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
luUserIP :: Lens' LineitemsUploadlineitems' (Maybe Text)
luUserIP = lens _luUserIP (\ s a -> s{_luUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
luKey :: Lens' LineitemsUploadlineitems' (Maybe Key)
luKey = lens _luKey (\ s a -> s{_luKey = a})

-- | OAuth 2.0 token for the current user.
luOAuthToken :: Lens' LineitemsUploadlineitems' (Maybe OAuthToken)
luOAuthToken
  = lens _luOAuthToken (\ s a -> s{_luOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
luFields :: Lens' LineitemsUploadlineitems' (Maybe Text)
luFields = lens _luFields (\ s a -> s{_luFields = a})

instance GoogleAuth LineitemsUploadlineitems' where
        authKey = luKey . _Just
        authToken = luOAuthToken . _Just

instance GoogleRequest LineitemsUploadlineitems'
         where
        type Rs LineitemsUploadlineitems' =
             UploadLineItemsResponse
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u LineitemsUploadlineitems'{..}
          = go _luQuotaUser (Just _luPrettyPrint) _luUserIP
              _luKey
              _luOAuthToken
              _luFields
              (Just AltJSON)
              _luUploadLineItemsRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LineitemsUploadlineitemsResource)
                      r
                      u
