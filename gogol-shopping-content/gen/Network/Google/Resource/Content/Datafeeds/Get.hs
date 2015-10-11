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
-- Module      : Network.Google.Resource.Content.Datafeeds.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsGet@.
module Network.Google.Resource.Content.Datafeeds.Get
    (
    -- * REST Resource
      DatafeedsGetResource

    -- * Creating a Request
    , datafeedsGet'
    , DatafeedsGet'

    -- * Request Lenses
    , dgQuotaUser
    , dgMerchantId
    , dgPrettyPrint
    , dgUserIP
    , dgKey
    , dgDatafeedId
    , dgOAuthToken
    , dgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsGet@ method which the
-- 'DatafeedsGet'' request conforms to.
type DatafeedsGetResource =
     Capture "merchantId" Word64 :>
       "datafeeds" :>
         Capture "datafeedId" Word64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Datafeed

-- | Retrieves a datafeed from your Merchant Center account.
--
-- /See:/ 'datafeedsGet'' smart constructor.
data DatafeedsGet' = DatafeedsGet'
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgMerchantId  :: !Word64
    , _dgPrettyPrint :: !Bool
    , _dgUserIP      :: !(Maybe Text)
    , _dgKey         :: !(Maybe AuthKey)
    , _dgDatafeedId  :: !Word64
    , _dgOAuthToken  :: !(Maybe OAuthToken)
    , _dgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgMerchantId'
--
-- * 'dgPrettyPrint'
--
-- * 'dgUserIP'
--
-- * 'dgKey'
--
-- * 'dgDatafeedId'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
datafeedsGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'datafeedId'
    -> DatafeedsGet'
datafeedsGet' pDgMerchantId_ pDgDatafeedId_ =
    DatafeedsGet'
    { _dgQuotaUser = Nothing
    , _dgMerchantId = pDgMerchantId_
    , _dgPrettyPrint = True
    , _dgUserIP = Nothing
    , _dgKey = Nothing
    , _dgDatafeedId = pDgDatafeedId_
    , _dgOAuthToken = Nothing
    , _dgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DatafeedsGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

dgMerchantId :: Lens' DatafeedsGet' Word64
dgMerchantId
  = lens _dgMerchantId (\ s a -> s{_dgMerchantId = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DatafeedsGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIP :: Lens' DatafeedsGet' (Maybe Text)
dgUserIP = lens _dgUserIP (\ s a -> s{_dgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DatafeedsGet' (Maybe AuthKey)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

dgDatafeedId :: Lens' DatafeedsGet' Word64
dgDatafeedId
  = lens _dgDatafeedId (\ s a -> s{_dgDatafeedId = a})

-- | OAuth 2.0 token for the current user.
dgOAuthToken :: Lens' DatafeedsGet' (Maybe OAuthToken)
dgOAuthToken
  = lens _dgOAuthToken (\ s a -> s{_dgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DatafeedsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

instance GoogleAuth DatafeedsGet' where
        _AuthKey = dgKey . _Just
        _AuthToken = dgOAuthToken . _Just

instance GoogleRequest DatafeedsGet' where
        type Rs DatafeedsGet' = Datafeed
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedsGet'{..}
          = go _dgMerchantId _dgDatafeedId _dgQuotaUser
              (Just _dgPrettyPrint)
              _dgUserIP
              _dgFields
              _dgKey
              _dgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DatafeedsGetResource)
                      rq
