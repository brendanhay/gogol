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
-- Module      : Network.Google.Resource.AdSenseHost.URLChannels.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a new URL channel to the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostURLChannelsInsert@.
module Network.Google.Resource.AdSenseHost.URLChannels.Insert
    (
    -- * REST Resource
      URLChannelsInsertResource

    -- * Creating a Request
    , urlChannelsInsert'
    , URLChannelsInsert'

    -- * Request Lenses
    , uciQuotaUser
    , uciPrettyPrint
    , uciUserIP
    , uciPayload
    , uciAdClientId
    , uciKey
    , uciOAuthToken
    , uciFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostURLChannelsInsert@ method which the
-- 'URLChannelsInsert'' request conforms to.
type URLChannelsInsertResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "urlchannels" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] URLChannel :> Post '[JSON] URLChannel

-- | Add a new URL channel to the host AdSense account.
--
-- /See:/ 'urlChannelsInsert'' smart constructor.
data URLChannelsInsert' = URLChannelsInsert'
    { _uciQuotaUser   :: !(Maybe Text)
    , _uciPrettyPrint :: !Bool
    , _uciUserIP      :: !(Maybe Text)
    , _uciPayload     :: !URLChannel
    , _uciAdClientId  :: !Text
    , _uciKey         :: !(Maybe AuthKey)
    , _uciOAuthToken  :: !(Maybe OAuthToken)
    , _uciFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLChannelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uciQuotaUser'
--
-- * 'uciPrettyPrint'
--
-- * 'uciUserIP'
--
-- * 'uciPayload'
--
-- * 'uciAdClientId'
--
-- * 'uciKey'
--
-- * 'uciOAuthToken'
--
-- * 'uciFields'
urlChannelsInsert'
    :: URLChannel -- ^ 'payload'
    -> Text -- ^ 'adClientId'
    -> URLChannelsInsert'
urlChannelsInsert' pUciPayload_ pUciAdClientId_ =
    URLChannelsInsert'
    { _uciQuotaUser = Nothing
    , _uciPrettyPrint = True
    , _uciUserIP = Nothing
    , _uciPayload = pUciPayload_
    , _uciAdClientId = pUciAdClientId_
    , _uciKey = Nothing
    , _uciOAuthToken = Nothing
    , _uciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uciQuotaUser :: Lens' URLChannelsInsert' (Maybe Text)
uciQuotaUser
  = lens _uciQuotaUser (\ s a -> s{_uciQuotaUser = a})

-- | Returns response with indentations and line breaks.
uciPrettyPrint :: Lens' URLChannelsInsert' Bool
uciPrettyPrint
  = lens _uciPrettyPrint
      (\ s a -> s{_uciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uciUserIP :: Lens' URLChannelsInsert' (Maybe Text)
uciUserIP
  = lens _uciUserIP (\ s a -> s{_uciUserIP = a})

-- | Multipart request metadata.
uciPayload :: Lens' URLChannelsInsert' URLChannel
uciPayload
  = lens _uciPayload (\ s a -> s{_uciPayload = a})

-- | Ad client to which the new URL channel will be added.
uciAdClientId :: Lens' URLChannelsInsert' Text
uciAdClientId
  = lens _uciAdClientId
      (\ s a -> s{_uciAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uciKey :: Lens' URLChannelsInsert' (Maybe AuthKey)
uciKey = lens _uciKey (\ s a -> s{_uciKey = a})

-- | OAuth 2.0 token for the current user.
uciOAuthToken :: Lens' URLChannelsInsert' (Maybe OAuthToken)
uciOAuthToken
  = lens _uciOAuthToken
      (\ s a -> s{_uciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uciFields :: Lens' URLChannelsInsert' (Maybe Text)
uciFields
  = lens _uciFields (\ s a -> s{_uciFields = a})

instance GoogleAuth URLChannelsInsert' where
        _AuthKey = uciKey . _Just
        _AuthToken = uciOAuthToken . _Just

instance GoogleRequest URLChannelsInsert' where
        type Rs URLChannelsInsert' = URLChannel
        request = requestWith adSenseHostRequest
        requestWith rq URLChannelsInsert'{..}
          = go _uciAdClientId _uciQuotaUser
              (Just _uciPrettyPrint)
              _uciUserIP
              _uciFields
              _uciKey
              _uciOAuthToken
              (Just AltJSON)
              _uciPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy URLChannelsInsertResource)
                      rq
