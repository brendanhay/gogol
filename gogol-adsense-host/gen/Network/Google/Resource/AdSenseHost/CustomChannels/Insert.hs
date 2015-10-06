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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a new custom channel to the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomChannelsInsert@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Insert
    (
    -- * REST Resource
      CustomChannelsInsertResource

    -- * Creating a Request
    , customChannelsInsert'
    , CustomChannelsInsert'

    -- * Request Lenses
    , cciQuotaUser
    , cciPrettyPrint
    , cciUserIP
    , cciPayload
    , cciAdClientId
    , cciKey
    , cciOAuthToken
    , cciFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomChannelsInsert@ which the
-- 'CustomChannelsInsert'' request conforms to.
type CustomChannelsInsertResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CustomChannel :>
                           Post '[JSON] CustomChannel

-- | Add a new custom channel to the host AdSense account.
--
-- /See:/ 'customChannelsInsert'' smart constructor.
data CustomChannelsInsert' = CustomChannelsInsert'
    { _cciQuotaUser   :: !(Maybe Text)
    , _cciPrettyPrint :: !Bool
    , _cciUserIP      :: !(Maybe Text)
    , _cciPayload     :: !CustomChannel
    , _cciAdClientId  :: !Text
    , _cciKey         :: !(Maybe AuthKey)
    , _cciOAuthToken  :: !(Maybe OAuthToken)
    , _cciFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cciQuotaUser'
--
-- * 'cciPrettyPrint'
--
-- * 'cciUserIP'
--
-- * 'cciPayload'
--
-- * 'cciAdClientId'
--
-- * 'cciKey'
--
-- * 'cciOAuthToken'
--
-- * 'cciFields'
customChannelsInsert'
    :: CustomChannel -- ^ 'payload'
    -> Text -- ^ 'adClientId'
    -> CustomChannelsInsert'
customChannelsInsert' pCciPayload_ pCciAdClientId_ =
    CustomChannelsInsert'
    { _cciQuotaUser = Nothing
    , _cciPrettyPrint = True
    , _cciUserIP = Nothing
    , _cciPayload = pCciPayload_
    , _cciAdClientId = pCciAdClientId_
    , _cciKey = Nothing
    , _cciOAuthToken = Nothing
    , _cciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cciQuotaUser :: Lens' CustomChannelsInsert' (Maybe Text)
cciQuotaUser
  = lens _cciQuotaUser (\ s a -> s{_cciQuotaUser = a})

-- | Returns response with indentations and line breaks.
cciPrettyPrint :: Lens' CustomChannelsInsert' Bool
cciPrettyPrint
  = lens _cciPrettyPrint
      (\ s a -> s{_cciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cciUserIP :: Lens' CustomChannelsInsert' (Maybe Text)
cciUserIP
  = lens _cciUserIP (\ s a -> s{_cciUserIP = a})

-- | Multipart request metadata.
cciPayload :: Lens' CustomChannelsInsert' CustomChannel
cciPayload
  = lens _cciPayload (\ s a -> s{_cciPayload = a})

-- | Ad client to which the new custom channel will be added.
cciAdClientId :: Lens' CustomChannelsInsert' Text
cciAdClientId
  = lens _cciAdClientId
      (\ s a -> s{_cciAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cciKey :: Lens' CustomChannelsInsert' (Maybe AuthKey)
cciKey = lens _cciKey (\ s a -> s{_cciKey = a})

-- | OAuth 2.0 token for the current user.
cciOAuthToken :: Lens' CustomChannelsInsert' (Maybe OAuthToken)
cciOAuthToken
  = lens _cciOAuthToken
      (\ s a -> s{_cciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cciFields :: Lens' CustomChannelsInsert' (Maybe Text)
cciFields
  = lens _cciFields (\ s a -> s{_cciFields = a})

instance GoogleAuth CustomChannelsInsert' where
        authKey = cciKey . _Just
        authToken = cciOAuthToken . _Just

instance GoogleRequest CustomChannelsInsert' where
        type Rs CustomChannelsInsert' = CustomChannel
        request = requestWith adSenseHostRequest
        requestWith rq CustomChannelsInsert'{..}
          = go _cciAdClientId _cciQuotaUser
              (Just _cciPrettyPrint)
              _cciUserIP
              _cciFields
              _cciKey
              _cciOAuthToken
              (Just AltJSON)
              _cciPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy CustomChannelsInsertResource)
                      rq
