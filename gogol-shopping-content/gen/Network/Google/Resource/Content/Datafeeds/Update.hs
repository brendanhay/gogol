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
-- Module      : Network.Google.Resource.Content.Datafeeds.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a datafeed of your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsUpdate@.
module Network.Google.Resource.Content.Datafeeds.Update
    (
    -- * REST Resource
      DatafeedsUpdateResource

    -- * Creating a Request
    , datafeedsUpdate'
    , DatafeedsUpdate'

    -- * Request Lenses
    , duQuotaUser
    , duMerchantId
    , duPrettyPrint
    , duUserIP
    , duPayload
    , duKey
    , duDatafeedId
    , duOAuthToken
    , duDryRun
    , duFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsUpdate@ method which the
-- 'DatafeedsUpdate'' request conforms to.
type DatafeedsUpdateResource =
     Capture "merchantId" Word64 :>
       "datafeeds" :>
         Capture "datafeedId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Datafeed :> Put '[JSON] Datafeed

-- | Updates a datafeed of your Merchant Center account.
--
-- /See:/ 'datafeedsUpdate'' smart constructor.
data DatafeedsUpdate' = DatafeedsUpdate'
    { _duQuotaUser   :: !(Maybe Text)
    , _duMerchantId  :: !Word64
    , _duPrettyPrint :: !Bool
    , _duUserIP      :: !(Maybe Text)
    , _duPayload     :: !Datafeed
    , _duKey         :: !(Maybe AuthKey)
    , _duDatafeedId  :: !Word64
    , _duOAuthToken  :: !(Maybe OAuthToken)
    , _duDryRun      :: !(Maybe Bool)
    , _duFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duQuotaUser'
--
-- * 'duMerchantId'
--
-- * 'duPrettyPrint'
--
-- * 'duUserIP'
--
-- * 'duPayload'
--
-- * 'duKey'
--
-- * 'duDatafeedId'
--
-- * 'duOAuthToken'
--
-- * 'duDryRun'
--
-- * 'duFields'
datafeedsUpdate'
    :: Word64 -- ^ 'merchantId'
    -> Datafeed -- ^ 'payload'
    -> Word64 -- ^ 'datafeedId'
    -> DatafeedsUpdate'
datafeedsUpdate' pDuMerchantId_ pDuPayload_ pDuDatafeedId_ =
    DatafeedsUpdate'
    { _duQuotaUser = Nothing
    , _duMerchantId = pDuMerchantId_
    , _duPrettyPrint = True
    , _duUserIP = Nothing
    , _duPayload = pDuPayload_
    , _duKey = Nothing
    , _duDatafeedId = pDuDatafeedId_
    , _duOAuthToken = Nothing
    , _duDryRun = Nothing
    , _duFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
duQuotaUser :: Lens' DatafeedsUpdate' (Maybe Text)
duQuotaUser
  = lens _duQuotaUser (\ s a -> s{_duQuotaUser = a})

duMerchantId :: Lens' DatafeedsUpdate' Word64
duMerchantId
  = lens _duMerchantId (\ s a -> s{_duMerchantId = a})

-- | Returns response with indentations and line breaks.
duPrettyPrint :: Lens' DatafeedsUpdate' Bool
duPrettyPrint
  = lens _duPrettyPrint
      (\ s a -> s{_duPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
duUserIP :: Lens' DatafeedsUpdate' (Maybe Text)
duUserIP = lens _duUserIP (\ s a -> s{_duUserIP = a})

-- | Multipart request metadata.
duPayload :: Lens' DatafeedsUpdate' Datafeed
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DatafeedsUpdate' (Maybe AuthKey)
duKey = lens _duKey (\ s a -> s{_duKey = a})

duDatafeedId :: Lens' DatafeedsUpdate' Word64
duDatafeedId
  = lens _duDatafeedId (\ s a -> s{_duDatafeedId = a})

-- | OAuth 2.0 token for the current user.
duOAuthToken :: Lens' DatafeedsUpdate' (Maybe OAuthToken)
duOAuthToken
  = lens _duOAuthToken (\ s a -> s{_duOAuthToken = a})

-- | Flag to run the request in dry-run mode.
duDryRun :: Lens' DatafeedsUpdate' (Maybe Bool)
duDryRun = lens _duDryRun (\ s a -> s{_duDryRun = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DatafeedsUpdate' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

instance GoogleAuth DatafeedsUpdate' where
        _AuthKey = duKey . _Just
        _AuthToken = duOAuthToken . _Just

instance GoogleRequest DatafeedsUpdate' where
        type Rs DatafeedsUpdate' = Datafeed
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedsUpdate'{..}
          = go _duMerchantId _duDatafeedId _duDryRun
              _duQuotaUser
              (Just _duPrettyPrint)
              _duUserIP
              _duFields
              _duKey
              _duOAuthToken
              (Just AltJSON)
              _duPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatafeedsUpdateResource)
                      rq
