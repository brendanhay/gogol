{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Customchannels.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a custom channel in the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomchannelsUpdate@.
module AdSenseHost.Customchannels.Update
    (
    -- * REST Resource
      CustomchannelsUpdateAPI

    -- * Creating a Request
    , customchannelsUpdate
    , CustomchannelsUpdate

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIp
    , cuAdClientId
    , cuKey
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomchannelsUpdate@ which the
-- 'CustomchannelsUpdate' request conforms to.
type CustomchannelsUpdateAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :> Put '[JSON] CustomChannel

-- | Update a custom channel in the host AdSense account.
--
-- /See:/ 'customchannelsUpdate' smart constructor.
data CustomchannelsUpdate = CustomchannelsUpdate
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIp      :: !(Maybe Text)
    , _cuAdClientId  :: !Text
    , _cuKey         :: !(Maybe Text)
    , _cuOauthToken  :: !(Maybe Text)
    , _cuFields      :: !(Maybe Text)
    , _cuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomchannelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuAdClientId'
--
-- * 'cuKey'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
customchannelsUpdate
    :: Text -- ^ 'adClientId'
    -> CustomchannelsUpdate
customchannelsUpdate pCuAdClientId_ =
    CustomchannelsUpdate
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuAdClientId = pCuAdClientId_
    , _cuKey = Nothing
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CustomchannelsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CustomchannelsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' CustomchannelsUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | Ad client in which the custom channel will be updated.
cuAdClientId :: Lens' CustomchannelsUpdate' Text
cuAdClientId
  = lens _cuAdClientId (\ s a -> s{_cuAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CustomchannelsUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' CustomchannelsUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CustomchannelsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' CustomchannelsUpdate' Text
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest CustomchannelsUpdate' where
        type Rs CustomchannelsUpdate' = CustomChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomchannelsUpdate{..}
          = go _cuQuotaUser _cuPrettyPrint _cuUserIp
              _cuAdClientId
              _cuKey
              _cuOauthToken
              _cuFields
              _cuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomchannelsUpdateAPI)
                      r
                      u
