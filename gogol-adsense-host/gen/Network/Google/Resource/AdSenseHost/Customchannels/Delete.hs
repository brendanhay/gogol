{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Customchannels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a specific custom channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomchannelsDelete@.
module AdSenseHost.Customchannels.Delete
    (
    -- * REST Resource
      CustomchannelsDeleteAPI

    -- * Creating a Request
    , customchannelsDelete
    , CustomchannelsDelete

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdCustomChannelId
    , cdUserIp
    , cdAdClientId
    , cdKey
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomchannelsDelete@ which the
-- 'CustomchannelsDelete' request conforms to.
type CustomchannelsDeleteAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           Capture "customChannelId" Text :>
             Delete '[JSON] CustomChannel

-- | Delete a specific custom channel from the host AdSense account.
--
-- /See:/ 'customchannelsDelete' smart constructor.
data CustomchannelsDelete = CustomchannelsDelete
    { _cdQuotaUser       :: !(Maybe Text)
    , _cdPrettyPrint     :: !Bool
    , _cdCustomChannelId :: !Text
    , _cdUserIp          :: !(Maybe Text)
    , _cdAdClientId      :: !Text
    , _cdKey             :: !(Maybe Text)
    , _cdOauthToken      :: !(Maybe Text)
    , _cdFields          :: !(Maybe Text)
    , _cdAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomchannelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdCustomChannelId'
--
-- * 'cdUserIp'
--
-- * 'cdAdClientId'
--
-- * 'cdKey'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
customchannelsDelete
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomchannelsDelete
customchannelsDelete pCdCustomChannelId_ pCdAdClientId_ =
    CustomchannelsDelete
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdCustomChannelId = pCdCustomChannelId_
    , _cdUserIp = Nothing
    , _cdAdClientId = pCdAdClientId_
    , _cdKey = Nothing
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CustomchannelsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CustomchannelsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | Custom channel to delete.
cdCustomChannelId :: Lens' CustomchannelsDelete' Text
cdCustomChannelId
  = lens _cdCustomChannelId
      (\ s a -> s{_cdCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' CustomchannelsDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | Ad client from which to delete the custom channel.
cdAdClientId :: Lens' CustomchannelsDelete' Text
cdAdClientId
  = lens _cdAdClientId (\ s a -> s{_cdAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CustomchannelsDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' CustomchannelsDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CustomchannelsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' CustomchannelsDelete' Text
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest CustomchannelsDelete' where
        type Rs CustomchannelsDelete' = CustomChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomchannelsDelete{..}
          = go _cdQuotaUser _cdPrettyPrint _cdCustomChannelId
              _cdUserIp
              _cdAdClientId
              _cdKey
              _cdOauthToken
              _cdFields
              _cdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomchannelsDeleteAPI)
                      r
                      u
