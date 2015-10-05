{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get all the notes associated with an order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceNotesList@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
    (
    -- * REST Resource
      MarketplaceNotesListResource

    -- * Creating a Request
    , marketplaceNotesList'
    , MarketplaceNotesList'

    -- * Request Lenses
    , mnlQuotaUser
    , mnlPrettyPrint
    , mnlUserIP
    , mnlKey
    , mnlOAuthToken
    , mnlOrderId
    , mnlFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceNotesList@ which the
-- 'MarketplaceNotesList'' request conforms to.
type MarketplaceNotesListResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "notes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GetOrderNotesResponse

-- | Get all the notes associated with an order
--
-- /See:/ 'marketplaceNotesList'' smart constructor.
data MarketplaceNotesList' = MarketplaceNotesList'
    { _mnlQuotaUser   :: !(Maybe Text)
    , _mnlPrettyPrint :: !Bool
    , _mnlUserIP      :: !(Maybe Text)
    , _mnlKey         :: !(Maybe Key)
    , _mnlOAuthToken  :: !(Maybe OAuthToken)
    , _mnlOrderId     :: !Text
    , _mnlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceNotesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mnlQuotaUser'
--
-- * 'mnlPrettyPrint'
--
-- * 'mnlUserIP'
--
-- * 'mnlKey'
--
-- * 'mnlOAuthToken'
--
-- * 'mnlOrderId'
--
-- * 'mnlFields'
marketplaceNotesList'
    :: Text -- ^ 'orderId'
    -> MarketplaceNotesList'
marketplaceNotesList' pMnlOrderId_ =
    MarketplaceNotesList'
    { _mnlQuotaUser = Nothing
    , _mnlPrettyPrint = True
    , _mnlUserIP = Nothing
    , _mnlKey = Nothing
    , _mnlOAuthToken = Nothing
    , _mnlOrderId = pMnlOrderId_
    , _mnlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mnlQuotaUser :: Lens' MarketplaceNotesList' (Maybe Text)
mnlQuotaUser
  = lens _mnlQuotaUser (\ s a -> s{_mnlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mnlPrettyPrint :: Lens' MarketplaceNotesList' Bool
mnlPrettyPrint
  = lens _mnlPrettyPrint
      (\ s a -> s{_mnlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mnlUserIP :: Lens' MarketplaceNotesList' (Maybe Text)
mnlUserIP
  = lens _mnlUserIP (\ s a -> s{_mnlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mnlKey :: Lens' MarketplaceNotesList' (Maybe Key)
mnlKey = lens _mnlKey (\ s a -> s{_mnlKey = a})

-- | OAuth 2.0 token for the current user.
mnlOAuthToken :: Lens' MarketplaceNotesList' (Maybe OAuthToken)
mnlOAuthToken
  = lens _mnlOAuthToken
      (\ s a -> s{_mnlOAuthToken = a})

-- | The orderId to get notes for.
mnlOrderId :: Lens' MarketplaceNotesList' Text
mnlOrderId
  = lens _mnlOrderId (\ s a -> s{_mnlOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mnlFields :: Lens' MarketplaceNotesList' (Maybe Text)
mnlFields
  = lens _mnlFields (\ s a -> s{_mnlFields = a})

instance GoogleAuth MarketplaceNotesList' where
        authKey = mnlKey . _Just
        authToken = mnlOAuthToken . _Just

instance GoogleRequest MarketplaceNotesList' where
        type Rs MarketplaceNotesList' = GetOrderNotesResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceNotesList'{..}
          = go _mnlOrderId _mnlQuotaUser (Just _mnlPrettyPrint)
              _mnlUserIP
              _mnlFields
              _mnlKey
              _mnlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceNotesListResource)
                      r
                      u
