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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves line items in CSV format.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerLineitemsDownloadlineitems@.
module Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems
    (
    -- * REST Resource
      LineitemsDownloadlineitemsResource

    -- * Creating a Request
    , lineitemsDownloadlineitems'
    , LineitemsDownloadlineitems'

    -- * Request Lenses
    , ldQuotaUser
    , ldPrettyPrint
    , ldDownloadLineItemsRequest
    , ldUserIP
    , ldKey
    , ldOAuthToken
    , ldFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerLineitemsDownloadlineitems@ which the
-- 'LineitemsDownloadlineitems'' request conforms to.
type LineitemsDownloadlineitemsResource =
     "lineitems" :>
       "downloadlineitems" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DownloadLineItemsRequest :>
                         Post '[JSON] DownloadLineItemsResponse

-- | Retrieves line items in CSV format.
--
-- /See:/ 'lineitemsDownloadlineitems'' smart constructor.
data LineitemsDownloadlineitems' = LineitemsDownloadlineitems'
    { _ldQuotaUser                :: !(Maybe Text)
    , _ldPrettyPrint              :: !Bool
    , _ldDownloadLineItemsRequest :: !DownloadLineItemsRequest
    , _ldUserIP                   :: !(Maybe Text)
    , _ldKey                      :: !(Maybe Key)
    , _ldOAuthToken               :: !(Maybe OAuthToken)
    , _ldFields                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineitemsDownloadlineitems'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldQuotaUser'
--
-- * 'ldPrettyPrint'
--
-- * 'ldDownloadLineItemsRequest'
--
-- * 'ldUserIP'
--
-- * 'ldKey'
--
-- * 'ldOAuthToken'
--
-- * 'ldFields'
lineitemsDownloadlineitems'
    :: DownloadLineItemsRequest -- ^ 'DownloadLineItemsRequest'
    -> LineitemsDownloadlineitems'
lineitemsDownloadlineitems' pLdDownloadLineItemsRequest_ =
    LineitemsDownloadlineitems'
    { _ldQuotaUser = Nothing
    , _ldPrettyPrint = True
    , _ldDownloadLineItemsRequest = pLdDownloadLineItemsRequest_
    , _ldUserIP = Nothing
    , _ldKey = Nothing
    , _ldOAuthToken = Nothing
    , _ldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ldQuotaUser :: Lens' LineitemsDownloadlineitems' (Maybe Text)
ldQuotaUser
  = lens _ldQuotaUser (\ s a -> s{_ldQuotaUser = a})

-- | Returns response with indentations and line breaks.
ldPrettyPrint :: Lens' LineitemsDownloadlineitems' Bool
ldPrettyPrint
  = lens _ldPrettyPrint
      (\ s a -> s{_ldPrettyPrint = a})

-- | Multipart request metadata.
ldDownloadLineItemsRequest :: Lens' LineitemsDownloadlineitems' DownloadLineItemsRequest
ldDownloadLineItemsRequest
  = lens _ldDownloadLineItemsRequest
      (\ s a -> s{_ldDownloadLineItemsRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ldUserIP :: Lens' LineitemsDownloadlineitems' (Maybe Text)
ldUserIP = lens _ldUserIP (\ s a -> s{_ldUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ldKey :: Lens' LineitemsDownloadlineitems' (Maybe Key)
ldKey = lens _ldKey (\ s a -> s{_ldKey = a})

-- | OAuth 2.0 token for the current user.
ldOAuthToken :: Lens' LineitemsDownloadlineitems' (Maybe OAuthToken)
ldOAuthToken
  = lens _ldOAuthToken (\ s a -> s{_ldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ldFields :: Lens' LineitemsDownloadlineitems' (Maybe Text)
ldFields = lens _ldFields (\ s a -> s{_ldFields = a})

instance GoogleAuth LineitemsDownloadlineitems' where
        authKey = ldKey . _Just
        authToken = ldOAuthToken . _Just

instance GoogleRequest LineitemsDownloadlineitems'
         where
        type Rs LineitemsDownloadlineitems' =
             DownloadLineItemsResponse
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u LineitemsDownloadlineitems'{..}
          = go _ldQuotaUser (Just _ldPrettyPrint) _ldUserIP
              _ldKey
              _ldOAuthToken
              _ldFields
              (Just AltJSON)
              _ldDownloadLineItemsRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LineitemsDownloadlineitemsResource)
                      r
                      u
