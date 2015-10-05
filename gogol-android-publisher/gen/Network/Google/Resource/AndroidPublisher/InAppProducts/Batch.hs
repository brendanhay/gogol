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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Batch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInAppProductsBatch@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Batch
    (
    -- * REST Resource
      InAppProductsBatchResource

    -- * Creating a Request
    , inAppProductsBatch'
    , InAppProductsBatch'

    -- * Request Lenses
    , iapbQuotaUser
    , iapbPrettyPrint
    , iapbUserIP
    , iapbPayload
    , iapbKey
    , iapbOAuthToken
    , iapbFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInAppProductsBatch@ which the
-- 'InAppProductsBatch'' request conforms to.
type InAppProductsBatchResource =
     "inappproducts" :>
       "batch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] InAppProductsBatchRequest :>
                         Post '[JSON] InAppProductsBatchResponse

--
-- /See:/ 'inAppProductsBatch'' smart constructor.
data InAppProductsBatch' = InAppProductsBatch'
    { _iapbQuotaUser   :: !(Maybe Text)
    , _iapbPrettyPrint :: !Bool
    , _iapbUserIP      :: !(Maybe Text)
    , _iapbPayload     :: !InAppProductsBatchRequest
    , _iapbKey         :: !(Maybe Key)
    , _iapbOAuthToken  :: !(Maybe OAuthToken)
    , _iapbFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsBatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapbQuotaUser'
--
-- * 'iapbPrettyPrint'
--
-- * 'iapbUserIP'
--
-- * 'iapbPayload'
--
-- * 'iapbKey'
--
-- * 'iapbOAuthToken'
--
-- * 'iapbFields'
inAppProductsBatch'
    :: InAppProductsBatchRequest -- ^ 'payload'
    -> InAppProductsBatch'
inAppProductsBatch' pIapbPayload_ =
    InAppProductsBatch'
    { _iapbQuotaUser = Nothing
    , _iapbPrettyPrint = True
    , _iapbUserIP = Nothing
    , _iapbPayload = pIapbPayload_
    , _iapbKey = Nothing
    , _iapbOAuthToken = Nothing
    , _iapbFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iapbQuotaUser :: Lens' InAppProductsBatch' (Maybe Text)
iapbQuotaUser
  = lens _iapbQuotaUser
      (\ s a -> s{_iapbQuotaUser = a})

-- | Returns response with indentations and line breaks.
iapbPrettyPrint :: Lens' InAppProductsBatch' Bool
iapbPrettyPrint
  = lens _iapbPrettyPrint
      (\ s a -> s{_iapbPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iapbUserIP :: Lens' InAppProductsBatch' (Maybe Text)
iapbUserIP
  = lens _iapbUserIP (\ s a -> s{_iapbUserIP = a})

-- | Multipart request metadata.
iapbPayload :: Lens' InAppProductsBatch' InAppProductsBatchRequest
iapbPayload
  = lens _iapbPayload (\ s a -> s{_iapbPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iapbKey :: Lens' InAppProductsBatch' (Maybe Key)
iapbKey = lens _iapbKey (\ s a -> s{_iapbKey = a})

-- | OAuth 2.0 token for the current user.
iapbOAuthToken :: Lens' InAppProductsBatch' (Maybe OAuthToken)
iapbOAuthToken
  = lens _iapbOAuthToken
      (\ s a -> s{_iapbOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iapbFields :: Lens' InAppProductsBatch' (Maybe Text)
iapbFields
  = lens _iapbFields (\ s a -> s{_iapbFields = a})

instance GoogleAuth InAppProductsBatch' where
        authKey = iapbKey . _Just
        authToken = iapbOAuthToken . _Just

instance GoogleRequest InAppProductsBatch' where
        type Rs InAppProductsBatch' =
             InAppProductsBatchResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InAppProductsBatch'{..}
          = go _iapbQuotaUser (Just _iapbPrettyPrint)
              _iapbUserIP
              _iapbFields
              _iapbKey
              _iapbOAuthToken
              (Just AltJSON)
              _iapbPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InAppProductsBatchResource)
                      r
                      u
