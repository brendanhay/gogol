{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.URLchannels.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a new URL channel to the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostURLchannelsInsert@.
module AdSenseHost.URLchannels.Insert
    (
    -- * REST Resource
      UrlchannelsInsertAPI

    -- * Creating a Request
    , uRLchannelsInsert
    , URLchannelsInsert

    -- * Request Lenses
    , uiQuotaUser
    , uiPrettyPrint
    , uiUserIp
    , uiAdClientId
    , uiKey
    , uiOauthToken
    , uiFields
    , uiAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostURLchannelsInsert@ which the
-- 'URLchannelsInsert' request conforms to.
type UrlchannelsInsertAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "urlchannels" :> Post '[JSON] URLChannel

-- | Add a new URL channel to the host AdSense account.
--
-- /See:/ 'uRLchannelsInsert' smart constructor.
data URLchannelsInsert = URLchannelsInsert
    { _uiQuotaUser   :: !(Maybe Text)
    , _uiPrettyPrint :: !Bool
    , _uiUserIp      :: !(Maybe Text)
    , _uiAdClientId  :: !Text
    , _uiKey         :: !(Maybe Text)
    , _uiOauthToken  :: !(Maybe Text)
    , _uiFields      :: !(Maybe Text)
    , _uiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLchannelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiQuotaUser'
--
-- * 'uiPrettyPrint'
--
-- * 'uiUserIp'
--
-- * 'uiAdClientId'
--
-- * 'uiKey'
--
-- * 'uiOauthToken'
--
-- * 'uiFields'
--
-- * 'uiAlt'
uRLchannelsInsert
    :: Text -- ^ 'adClientId'
    -> URLchannelsInsert
uRLchannelsInsert pUiAdClientId_ =
    URLchannelsInsert
    { _uiQuotaUser = Nothing
    , _uiPrettyPrint = True
    , _uiUserIp = Nothing
    , _uiAdClientId = pUiAdClientId_
    , _uiKey = Nothing
    , _uiOauthToken = Nothing
    , _uiFields = Nothing
    , _uiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uiQuotaUser :: Lens' URLchannelsInsert' (Maybe Text)
uiQuotaUser
  = lens _uiQuotaUser (\ s a -> s{_uiQuotaUser = a})

-- | Returns response with indentations and line breaks.
uiPrettyPrint :: Lens' URLchannelsInsert' Bool
uiPrettyPrint
  = lens _uiPrettyPrint
      (\ s a -> s{_uiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uiUserIp :: Lens' URLchannelsInsert' (Maybe Text)
uiUserIp = lens _uiUserIp (\ s a -> s{_uiUserIp = a})

-- | Ad client to which the new URL channel will be added.
uiAdClientId :: Lens' URLchannelsInsert' Text
uiAdClientId
  = lens _uiAdClientId (\ s a -> s{_uiAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uiKey :: Lens' URLchannelsInsert' (Maybe Text)
uiKey = lens _uiKey (\ s a -> s{_uiKey = a})

-- | OAuth 2.0 token for the current user.
uiOauthToken :: Lens' URLchannelsInsert' (Maybe Text)
uiOauthToken
  = lens _uiOauthToken (\ s a -> s{_uiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uiFields :: Lens' URLchannelsInsert' (Maybe Text)
uiFields = lens _uiFields (\ s a -> s{_uiFields = a})

-- | Data format for the response.
uiAlt :: Lens' URLchannelsInsert' Text
uiAlt = lens _uiAlt (\ s a -> s{_uiAlt = a})

instance GoogleRequest URLchannelsInsert' where
        type Rs URLchannelsInsert' = URLChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u URLchannelsInsert{..}
          = go _uiQuotaUser _uiPrettyPrint _uiUserIp
              _uiAdClientId
              _uiKey
              _uiOauthToken
              _uiFields
              _uiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlchannelsInsertAPI)
                      r
                      u
