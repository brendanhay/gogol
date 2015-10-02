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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submit a new creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerCreativesInsert@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.Insert
    (
    -- * REST Resource
      CreativesInsertResource

    -- * Creating a Request
    , creativesInsert'
    , CreativesInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIP
    , ciCreative
    , ciKey
    , ciOAuthToken
    , ciFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerCreativesInsert@ which the
-- 'CreativesInsert'' request conforms to.
type CreativesInsertResource =
     "creatives" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Creative :> Post '[JSON] Creative

-- | Submit a new creative.
--
-- /See:/ 'creativesInsert'' smart constructor.
data CreativesInsert' = CreativesInsert'
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIP      :: !(Maybe Text)
    , _ciCreative    :: !Creative
    , _ciKey         :: !(Maybe Key)
    , _ciOAuthToken  :: !(Maybe OAuthToken)
    , _ciFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIP'
--
-- * 'ciCreative'
--
-- * 'ciKey'
--
-- * 'ciOAuthToken'
--
-- * 'ciFields'
creativesInsert'
    :: Creative -- ^ 'Creative'
    -> CreativesInsert'
creativesInsert' pCiCreative_ =
    CreativesInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIP = Nothing
    , _ciCreative = pCiCreative_
    , _ciKey = Nothing
    , _ciOAuthToken = Nothing
    , _ciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CreativesInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CreativesInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIP :: Lens' CreativesInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | Multipart request metadata.
ciCreative :: Lens' CreativesInsert' Creative
ciCreative
  = lens _ciCreative (\ s a -> s{_ciCreative = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CreativesInsert' (Maybe Key)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' CreativesInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CreativesInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth CreativesInsert' where
        authKey = ciKey . _Just
        authToken = ciOAuthToken . _Just

instance GoogleRequest CreativesInsert' where
        type Rs CreativesInsert' = Creative
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u CreativesInsert'{..}
          = go _ciQuotaUser (Just _ciPrettyPrint) _ciUserIP
              _ciFields
              _ciKey
              _ciOAuthToken
              (Just AltJSON)
              _ciCreative
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativesInsertResource)
                      r
                      u
