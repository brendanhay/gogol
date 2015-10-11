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
-- Module      : Network.Google.Resource.Content.Datafeeds.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a datafeed of your Merchant Center account. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsPatch@.
module Network.Google.Resource.Content.Datafeeds.Patch
    (
    -- * REST Resource
      DatafeedsPatchResource

    -- * Creating a Request
    , datafeedsPatch'
    , DatafeedsPatch'

    -- * Request Lenses
    , dpQuotaUser
    , dpMerchantId
    , dpPrettyPrint
    , dpUserIP
    , dpPayload
    , dpKey
    , dpDatafeedId
    , dpOAuthToken
    , dpDryRun
    , dpFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsPatch@ method which the
-- 'DatafeedsPatch'' request conforms to.
type DatafeedsPatchResource =
     Capture "merchantId" Word64 :>
       "datafeeds" :>
         Capture "datafeedId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Datafeed :> Patch '[JSON] Datafeed

-- | Updates a datafeed of your Merchant Center account. This method supports
-- patch semantics.
--
-- /See:/ 'datafeedsPatch'' smart constructor.
data DatafeedsPatch' = DatafeedsPatch'
    { _dpQuotaUser   :: !(Maybe Text)
    , _dpMerchantId  :: !Word64
    , _dpPrettyPrint :: !Bool
    , _dpUserIP      :: !(Maybe Text)
    , _dpPayload     :: !Datafeed
    , _dpKey         :: !(Maybe AuthKey)
    , _dpDatafeedId  :: !Word64
    , _dpOAuthToken  :: !(Maybe OAuthToken)
    , _dpDryRun      :: !(Maybe Bool)
    , _dpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpQuotaUser'
--
-- * 'dpMerchantId'
--
-- * 'dpPrettyPrint'
--
-- * 'dpUserIP'
--
-- * 'dpPayload'
--
-- * 'dpKey'
--
-- * 'dpDatafeedId'
--
-- * 'dpOAuthToken'
--
-- * 'dpDryRun'
--
-- * 'dpFields'
datafeedsPatch'
    :: Word64 -- ^ 'merchantId'
    -> Datafeed -- ^ 'payload'
    -> Word64 -- ^ 'datafeedId'
    -> DatafeedsPatch'
datafeedsPatch' pDpMerchantId_ pDpPayload_ pDpDatafeedId_ =
    DatafeedsPatch'
    { _dpQuotaUser = Nothing
    , _dpMerchantId = pDpMerchantId_
    , _dpPrettyPrint = True
    , _dpUserIP = Nothing
    , _dpPayload = pDpPayload_
    , _dpKey = Nothing
    , _dpDatafeedId = pDpDatafeedId_
    , _dpOAuthToken = Nothing
    , _dpDryRun = Nothing
    , _dpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dpQuotaUser :: Lens' DatafeedsPatch' (Maybe Text)
dpQuotaUser
  = lens _dpQuotaUser (\ s a -> s{_dpQuotaUser = a})

dpMerchantId :: Lens' DatafeedsPatch' Word64
dpMerchantId
  = lens _dpMerchantId (\ s a -> s{_dpMerchantId = a})

-- | Returns response with indentations and line breaks.
dpPrettyPrint :: Lens' DatafeedsPatch' Bool
dpPrettyPrint
  = lens _dpPrettyPrint
      (\ s a -> s{_dpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dpUserIP :: Lens' DatafeedsPatch' (Maybe Text)
dpUserIP = lens _dpUserIP (\ s a -> s{_dpUserIP = a})

-- | Multipart request metadata.
dpPayload :: Lens' DatafeedsPatch' Datafeed
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DatafeedsPatch' (Maybe AuthKey)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

dpDatafeedId :: Lens' DatafeedsPatch' Word64
dpDatafeedId
  = lens _dpDatafeedId (\ s a -> s{_dpDatafeedId = a})

-- | OAuth 2.0 token for the current user.
dpOAuthToken :: Lens' DatafeedsPatch' (Maybe OAuthToken)
dpOAuthToken
  = lens _dpOAuthToken (\ s a -> s{_dpOAuthToken = a})

-- | Flag to run the request in dry-run mode.
dpDryRun :: Lens' DatafeedsPatch' (Maybe Bool)
dpDryRun = lens _dpDryRun (\ s a -> s{_dpDryRun = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DatafeedsPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

instance GoogleAuth DatafeedsPatch' where
        _AuthKey = dpKey . _Just
        _AuthToken = dpOAuthToken . _Just

instance GoogleRequest DatafeedsPatch' where
        type Rs DatafeedsPatch' = Datafeed
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedsPatch'{..}
          = go _dpMerchantId _dpDatafeedId _dpDryRun
              _dpQuotaUser
              (Just _dpPrettyPrint)
              _dpUserIP
              _dpFields
              _dpKey
              _dpOAuthToken
              (Just AltJSON)
              _dpPayload
          where go
                  = clientBuild (Proxy :: Proxy DatafeedsPatchResource)
                      rq
