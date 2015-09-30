{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Customchannels.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a new custom channel to the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomchannelsInsert@.
module AdSenseHost.Customchannels.Insert
    (
    -- * REST Resource
      CustomchannelsInsertAPI

    -- * Creating a Request
    , customchannelsInsert
    , CustomchannelsInsert

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIp
    , ciAdClientId
    , ciKey
    , ciOauthToken
    , ciFields
    , ciAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomchannelsInsert@ which the
-- 'CustomchannelsInsert' request conforms to.
type CustomchannelsInsertAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :> Post '[JSON] CustomChannel

-- | Add a new custom channel to the host AdSense account.
--
-- /See:/ 'customchannelsInsert' smart constructor.
data CustomchannelsInsert = CustomchannelsInsert
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIp      :: !(Maybe Text)
    , _ciAdClientId  :: !Text
    , _ciKey         :: !(Maybe Text)
    , _ciOauthToken  :: !(Maybe Text)
    , _ciFields      :: !(Maybe Text)
    , _ciAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomchannelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIp'
--
-- * 'ciAdClientId'
--
-- * 'ciKey'
--
-- * 'ciOauthToken'
--
-- * 'ciFields'
--
-- * 'ciAlt'
customchannelsInsert
    :: Text -- ^ 'adClientId'
    -> CustomchannelsInsert
customchannelsInsert pCiAdClientId_ =
    CustomchannelsInsert
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIp = Nothing
    , _ciAdClientId = pCiAdClientId_
    , _ciKey = Nothing
    , _ciOauthToken = Nothing
    , _ciFields = Nothing
    , _ciAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CustomchannelsInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CustomchannelsInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIp :: Lens' CustomchannelsInsert' (Maybe Text)
ciUserIp = lens _ciUserIp (\ s a -> s{_ciUserIp = a})

-- | Ad client to which the new custom channel will be added.
ciAdClientId :: Lens' CustomchannelsInsert' Text
ciAdClientId
  = lens _ciAdClientId (\ s a -> s{_ciAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CustomchannelsInsert' (Maybe Text)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOauthToken :: Lens' CustomchannelsInsert' (Maybe Text)
ciOauthToken
  = lens _ciOauthToken (\ s a -> s{_ciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CustomchannelsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

-- | Data format for the response.
ciAlt :: Lens' CustomchannelsInsert' Text
ciAlt = lens _ciAlt (\ s a -> s{_ciAlt = a})

instance GoogleRequest CustomchannelsInsert' where
        type Rs CustomchannelsInsert' = CustomChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomchannelsInsert{..}
          = go _ciQuotaUser _ciPrettyPrint _ciUserIp
              _ciAdClientId
              _ciKey
              _ciOauthToken
              _ciFields
              _ciAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomchannelsInsertAPI)
                      r
                      u
