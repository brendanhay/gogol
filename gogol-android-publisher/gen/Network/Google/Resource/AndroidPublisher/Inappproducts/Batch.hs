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
-- Module      : Network.Google.Resource.AndroidPublisher.Inappproducts.Batch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInappproductsBatch@.
module Network.Google.Resource.AndroidPublisher.Inappproducts.Batch
    (
    -- * REST Resource
      InappproductsBatchResource

    -- * Creating a Request
    , inappproductsBatch'
    , InappproductsBatch'

    -- * Request Lenses
    , ibQuotaUser
    , ibPrettyPrint
    , ibUserIP
    , ibInappproductsBatchRequest
    , ibKey
    , ibOAuthToken
    , ibFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInappproductsBatch@ which the
-- 'InappproductsBatch'' request conforms to.
type InappproductsBatchResource =
     "inappproducts" :>
       "batch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] InappproductsBatchRequest :>
                         Post '[JSON] InappproductsBatchResponse

--
-- /See:/ 'inappproductsBatch'' smart constructor.
data InappproductsBatch' = InappproductsBatch'
    { _ibQuotaUser                 :: !(Maybe Text)
    , _ibPrettyPrint               :: !Bool
    , _ibUserIP                    :: !(Maybe Text)
    , _ibInappproductsBatchRequest :: !InappproductsBatchRequest
    , _ibKey                       :: !(Maybe Key)
    , _ibOAuthToken                :: !(Maybe OAuthToken)
    , _ibFields                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibQuotaUser'
--
-- * 'ibPrettyPrint'
--
-- * 'ibUserIP'
--
-- * 'ibInappproductsBatchRequest'
--
-- * 'ibKey'
--
-- * 'ibOAuthToken'
--
-- * 'ibFields'
inappproductsBatch'
    :: InappproductsBatchRequest -- ^ 'InappproductsBatchRequest'
    -> InappproductsBatch'
inappproductsBatch' pIbInappproductsBatchRequest_ =
    InappproductsBatch'
    { _ibQuotaUser = Nothing
    , _ibPrettyPrint = True
    , _ibUserIP = Nothing
    , _ibInappproductsBatchRequest = pIbInappproductsBatchRequest_
    , _ibKey = Nothing
    , _ibOAuthToken = Nothing
    , _ibFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ibQuotaUser :: Lens' InappproductsBatch' (Maybe Text)
ibQuotaUser
  = lens _ibQuotaUser (\ s a -> s{_ibQuotaUser = a})

-- | Returns response with indentations and line breaks.
ibPrettyPrint :: Lens' InappproductsBatch' Bool
ibPrettyPrint
  = lens _ibPrettyPrint
      (\ s a -> s{_ibPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ibUserIP :: Lens' InappproductsBatch' (Maybe Text)
ibUserIP = lens _ibUserIP (\ s a -> s{_ibUserIP = a})

-- | Multipart request metadata.
ibInappproductsBatchRequest :: Lens' InappproductsBatch' InappproductsBatchRequest
ibInappproductsBatchRequest
  = lens _ibInappproductsBatchRequest
      (\ s a -> s{_ibInappproductsBatchRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ibKey :: Lens' InappproductsBatch' (Maybe Key)
ibKey = lens _ibKey (\ s a -> s{_ibKey = a})

-- | OAuth 2.0 token for the current user.
ibOAuthToken :: Lens' InappproductsBatch' (Maybe OAuthToken)
ibOAuthToken
  = lens _ibOAuthToken (\ s a -> s{_ibOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ibFields :: Lens' InappproductsBatch' (Maybe Text)
ibFields = lens _ibFields (\ s a -> s{_ibFields = a})

instance GoogleAuth InappproductsBatch' where
        authKey = ibKey . _Just
        authToken = ibOAuthToken . _Just

instance GoogleRequest InappproductsBatch' where
        type Rs InappproductsBatch' =
             InappproductsBatchResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InappproductsBatch'{..}
          = go _ibQuotaUser (Just _ibPrettyPrint) _ibUserIP
              _ibFields
              _ibKey
              _ibOAuthToken
              (Just AltJSON)
              _ibInappproductsBatchRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsBatchResource)
                      r
                      u
