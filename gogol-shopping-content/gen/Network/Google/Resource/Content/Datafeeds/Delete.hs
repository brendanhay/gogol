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
-- Module      : Network.Google.Resource.Content.Datafeeds.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsDelete@.
module Network.Google.Resource.Content.Datafeeds.Delete
    (
    -- * REST Resource
      DatafeedsDeleteResource

    -- * Creating a Request
    , datafeedsDelete'
    , DatafeedsDelete'

    -- * Request Lenses
    , ddQuotaUser
    , ddMerchantId
    , ddPrettyPrint
    , ddUserIP
    , ddKey
    , ddDatafeedId
    , ddOAuthToken
    , ddDryRun
    , ddFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsDelete@ method which the
-- 'DatafeedsDelete'' request conforms to.
type DatafeedsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a datafeed from your Merchant Center account.
--
-- /See:/ 'datafeedsDelete'' smart constructor.
data DatafeedsDelete' = DatafeedsDelete'
    { _ddQuotaUser   :: !(Maybe Text)
    , _ddMerchantId  :: !Word64
    , _ddPrettyPrint :: !Bool
    , _ddUserIP      :: !(Maybe Text)
    , _ddKey         :: !(Maybe AuthKey)
    , _ddDatafeedId  :: !Word64
    , _ddOAuthToken  :: !(Maybe OAuthToken)
    , _ddDryRun      :: !(Maybe Bool)
    , _ddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddQuotaUser'
--
-- * 'ddMerchantId'
--
-- * 'ddPrettyPrint'
--
-- * 'ddUserIP'
--
-- * 'ddKey'
--
-- * 'ddDatafeedId'
--
-- * 'ddOAuthToken'
--
-- * 'ddDryRun'
--
-- * 'ddFields'
datafeedsDelete'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'datafeedId'
    -> DatafeedsDelete'
datafeedsDelete' pDdMerchantId_ pDdDatafeedId_ =
    DatafeedsDelete'
    { _ddQuotaUser = Nothing
    , _ddMerchantId = pDdMerchantId_
    , _ddPrettyPrint = True
    , _ddUserIP = Nothing
    , _ddKey = Nothing
    , _ddDatafeedId = pDdDatafeedId_
    , _ddOAuthToken = Nothing
    , _ddDryRun = Nothing
    , _ddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ddQuotaUser :: Lens' DatafeedsDelete' (Maybe Text)
ddQuotaUser
  = lens _ddQuotaUser (\ s a -> s{_ddQuotaUser = a})

ddMerchantId :: Lens' DatafeedsDelete' Word64
ddMerchantId
  = lens _ddMerchantId (\ s a -> s{_ddMerchantId = a})

-- | Returns response with indentations and line breaks.
ddPrettyPrint :: Lens' DatafeedsDelete' Bool
ddPrettyPrint
  = lens _ddPrettyPrint
      (\ s a -> s{_ddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ddUserIP :: Lens' DatafeedsDelete' (Maybe Text)
ddUserIP = lens _ddUserIP (\ s a -> s{_ddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DatafeedsDelete' (Maybe AuthKey)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

ddDatafeedId :: Lens' DatafeedsDelete' Word64
ddDatafeedId
  = lens _ddDatafeedId (\ s a -> s{_ddDatafeedId = a})

-- | OAuth 2.0 token for the current user.
ddOAuthToken :: Lens' DatafeedsDelete' (Maybe OAuthToken)
ddOAuthToken
  = lens _ddOAuthToken (\ s a -> s{_ddOAuthToken = a})

-- | Flag to run the request in dry-run mode.
ddDryRun :: Lens' DatafeedsDelete' (Maybe Bool)
ddDryRun = lens _ddDryRun (\ s a -> s{_ddDryRun = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DatafeedsDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

instance GoogleAuth DatafeedsDelete' where
        _AuthKey = ddKey . _Just
        _AuthToken = ddOAuthToken . _Just

instance GoogleRequest DatafeedsDelete' where
        type Rs DatafeedsDelete' = ()
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedsDelete'{..}
          = go _ddMerchantId _ddDatafeedId _ddDryRun
              _ddQuotaUser
              (Just _ddPrettyPrint)
              _ddUserIP
              _ddFields
              _ddKey
              _ddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy DatafeedsDeleteResource)
                      rq
