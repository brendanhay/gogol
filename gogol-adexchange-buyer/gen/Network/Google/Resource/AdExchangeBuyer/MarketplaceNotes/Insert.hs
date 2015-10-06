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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add notes to the order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceNotesInsert@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
    (
    -- * REST Resource
      MarketplaceNotesInsertResource

    -- * Creating a Request
    , marketplaceNotesInsert'
    , MarketplaceNotesInsert'

    -- * Request Lenses
    , mniQuotaUser
    , mniPrettyPrint
    , mniUserIP
    , mniPayload
    , mniKey
    , mniOAuthToken
    , mniOrderId
    , mniFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceNotesInsert@ which the
-- 'MarketplaceNotesInsert'' request conforms to.
type MarketplaceNotesInsertResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "notes" :>
           "insert" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AddOrderNotesRequest :>
                             Post '[JSON] AddOrderNotesResponse

-- | Add notes to the order
--
-- /See:/ 'marketplaceNotesInsert'' smart constructor.
data MarketplaceNotesInsert' = MarketplaceNotesInsert'
    { _mniQuotaUser   :: !(Maybe Text)
    , _mniPrettyPrint :: !Bool
    , _mniUserIP      :: !(Maybe Text)
    , _mniPayload     :: !AddOrderNotesRequest
    , _mniKey         :: !(Maybe AuthKey)
    , _mniOAuthToken  :: !(Maybe OAuthToken)
    , _mniOrderId     :: !Text
    , _mniFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceNotesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mniQuotaUser'
--
-- * 'mniPrettyPrint'
--
-- * 'mniUserIP'
--
-- * 'mniPayload'
--
-- * 'mniKey'
--
-- * 'mniOAuthToken'
--
-- * 'mniOrderId'
--
-- * 'mniFields'
marketplaceNotesInsert'
    :: AddOrderNotesRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> MarketplaceNotesInsert'
marketplaceNotesInsert' pMniPayload_ pMniOrderId_ =
    MarketplaceNotesInsert'
    { _mniQuotaUser = Nothing
    , _mniPrettyPrint = True
    , _mniUserIP = Nothing
    , _mniPayload = pMniPayload_
    , _mniKey = Nothing
    , _mniOAuthToken = Nothing
    , _mniOrderId = pMniOrderId_
    , _mniFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mniQuotaUser :: Lens' MarketplaceNotesInsert' (Maybe Text)
mniQuotaUser
  = lens _mniQuotaUser (\ s a -> s{_mniQuotaUser = a})

-- | Returns response with indentations and line breaks.
mniPrettyPrint :: Lens' MarketplaceNotesInsert' Bool
mniPrettyPrint
  = lens _mniPrettyPrint
      (\ s a -> s{_mniPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mniUserIP :: Lens' MarketplaceNotesInsert' (Maybe Text)
mniUserIP
  = lens _mniUserIP (\ s a -> s{_mniUserIP = a})

-- | Multipart request metadata.
mniPayload :: Lens' MarketplaceNotesInsert' AddOrderNotesRequest
mniPayload
  = lens _mniPayload (\ s a -> s{_mniPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mniKey :: Lens' MarketplaceNotesInsert' (Maybe AuthKey)
mniKey = lens _mniKey (\ s a -> s{_mniKey = a})

-- | OAuth 2.0 token for the current user.
mniOAuthToken :: Lens' MarketplaceNotesInsert' (Maybe OAuthToken)
mniOAuthToken
  = lens _mniOAuthToken
      (\ s a -> s{_mniOAuthToken = a})

-- | The orderId to add notes for.
mniOrderId :: Lens' MarketplaceNotesInsert' Text
mniOrderId
  = lens _mniOrderId (\ s a -> s{_mniOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mniFields :: Lens' MarketplaceNotesInsert' (Maybe Text)
mniFields
  = lens _mniFields (\ s a -> s{_mniFields = a})

instance GoogleAuth MarketplaceNotesInsert' where
        _AuthKey = mniKey . _Just
        _AuthToken = mniOAuthToken . _Just

instance GoogleRequest MarketplaceNotesInsert' where
        type Rs MarketplaceNotesInsert' =
             AddOrderNotesResponse
        request = requestWith adExchangeBuyerRequest
        requestWith rq MarketplaceNotesInsert'{..}
          = go _mniOrderId _mniQuotaUser (Just _mniPrettyPrint)
              _mniUserIP
              _mniFields
              _mniKey
              _mniOAuthToken
              (Just AltJSON)
              _mniPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy MarketplaceNotesInsertResource)
                      rq
