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
-- Module      : Network.Google.Resource.Content.Datafeeds.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Registers a datafeed with your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsInsert@.
module Network.Google.Resource.Content.Datafeeds.Insert
    (
    -- * REST Resource
      DatafeedsInsertResource

    -- * Creating a Request
    , datafeedsInsert'
    , DatafeedsInsert'

    -- * Request Lenses
    , diQuotaUser
    , diMerchantId
    , diPrettyPrint
    , diUserIP
    , diPayload
    , diKey
    , diOAuthToken
    , diDryRun
    , diFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsInsert@ method which the
-- 'DatafeedsInsert'' request conforms to.
type DatafeedsInsertResource =
     Capture "merchantId" Word64 :>
       "datafeeds" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Datafeed :> Post '[JSON] Datafeed

-- | Registers a datafeed with your Merchant Center account.
--
-- /See:/ 'datafeedsInsert'' smart constructor.
data DatafeedsInsert' = DatafeedsInsert'
    { _diQuotaUser   :: !(Maybe Text)
    , _diMerchantId  :: !Word64
    , _diPrettyPrint :: !Bool
    , _diUserIP      :: !(Maybe Text)
    , _diPayload     :: !Datafeed
    , _diKey         :: !(Maybe AuthKey)
    , _diOAuthToken  :: !(Maybe OAuthToken)
    , _diDryRun      :: !(Maybe Bool)
    , _diFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diQuotaUser'
--
-- * 'diMerchantId'
--
-- * 'diPrettyPrint'
--
-- * 'diUserIP'
--
-- * 'diPayload'
--
-- * 'diKey'
--
-- * 'diOAuthToken'
--
-- * 'diDryRun'
--
-- * 'diFields'
datafeedsInsert'
    :: Word64 -- ^ 'merchantId'
    -> Datafeed -- ^ 'payload'
    -> DatafeedsInsert'
datafeedsInsert' pDiMerchantId_ pDiPayload_ =
    DatafeedsInsert'
    { _diQuotaUser = Nothing
    , _diMerchantId = pDiMerchantId_
    , _diPrettyPrint = True
    , _diUserIP = Nothing
    , _diPayload = pDiPayload_
    , _diKey = Nothing
    , _diOAuthToken = Nothing
    , _diDryRun = Nothing
    , _diFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
diQuotaUser :: Lens' DatafeedsInsert' (Maybe Text)
diQuotaUser
  = lens _diQuotaUser (\ s a -> s{_diQuotaUser = a})

diMerchantId :: Lens' DatafeedsInsert' Word64
diMerchantId
  = lens _diMerchantId (\ s a -> s{_diMerchantId = a})

-- | Returns response with indentations and line breaks.
diPrettyPrint :: Lens' DatafeedsInsert' Bool
diPrettyPrint
  = lens _diPrettyPrint
      (\ s a -> s{_diPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
diUserIP :: Lens' DatafeedsInsert' (Maybe Text)
diUserIP = lens _diUserIP (\ s a -> s{_diUserIP = a})

-- | Multipart request metadata.
diPayload :: Lens' DatafeedsInsert' Datafeed
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DatafeedsInsert' (Maybe AuthKey)
diKey = lens _diKey (\ s a -> s{_diKey = a})

-- | OAuth 2.0 token for the current user.
diOAuthToken :: Lens' DatafeedsInsert' (Maybe OAuthToken)
diOAuthToken
  = lens _diOAuthToken (\ s a -> s{_diOAuthToken = a})

-- | Flag to run the request in dry-run mode.
diDryRun :: Lens' DatafeedsInsert' (Maybe Bool)
diDryRun = lens _diDryRun (\ s a -> s{_diDryRun = a})

-- | Selector specifying which fields to include in a partial response.
diFields :: Lens' DatafeedsInsert' (Maybe Text)
diFields = lens _diFields (\ s a -> s{_diFields = a})

instance GoogleAuth DatafeedsInsert' where
        _AuthKey = diKey . _Just
        _AuthToken = diOAuthToken . _Just

instance GoogleRequest DatafeedsInsert' where
        type Rs DatafeedsInsert' = Datafeed
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedsInsert'{..}
          = go _diMerchantId _diDryRun _diQuotaUser
              (Just _diPrettyPrint)
              _diUserIP
              _diFields
              _diKey
              _diOAuthToken
              (Just AltJSON)
              _diPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatafeedsInsertResource)
                      rq
