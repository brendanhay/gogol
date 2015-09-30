{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Associationsessions.Verify
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verify an association session after the association callback returns
-- from AdSense signup.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAssociationsessionsVerify@.
module AdSenseHost.Associationsessions.Verify
    (
    -- * REST Resource
      AssociationsessionsVerifyAPI

    -- * Creating a Request
    , associationsessionsVerify
    , AssociationsessionsVerify

    -- * Request Lenses
    , avQuotaUser
    , avPrettyPrint
    , avUserIp
    , avToken
    , avKey
    , avOauthToken
    , avFields
    , avAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAssociationsessionsVerify@ which the
-- 'AssociationsessionsVerify' request conforms to.
type AssociationsessionsVerifyAPI =
     "associationsessions" :>
       "verify" :>
         QueryParam "token" Text :>
           Get '[JSON] AssociationSession

-- | Verify an association session after the association callback returns
-- from AdSense signup.
--
-- /See:/ 'associationsessionsVerify' smart constructor.
data AssociationsessionsVerify = AssociationsessionsVerify
    { _avQuotaUser   :: !(Maybe Text)
    , _avPrettyPrint :: !Bool
    , _avUserIp      :: !(Maybe Text)
    , _avToken       :: !Text
    , _avKey         :: !(Maybe Text)
    , _avOauthToken  :: !(Maybe Text)
    , _avFields      :: !(Maybe Text)
    , _avAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationsessionsVerify'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avQuotaUser'
--
-- * 'avPrettyPrint'
--
-- * 'avUserIp'
--
-- * 'avToken'
--
-- * 'avKey'
--
-- * 'avOauthToken'
--
-- * 'avFields'
--
-- * 'avAlt'
associationsessionsVerify
    :: Text -- ^ 'token'
    -> AssociationsessionsVerify
associationsessionsVerify pAvToken_ =
    AssociationsessionsVerify
    { _avQuotaUser = Nothing
    , _avPrettyPrint = True
    , _avUserIp = Nothing
    , _avToken = pAvToken_
    , _avKey = Nothing
    , _avOauthToken = Nothing
    , _avFields = Nothing
    , _avAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
avQuotaUser :: Lens' AssociationsessionsVerify' (Maybe Text)
avQuotaUser
  = lens _avQuotaUser (\ s a -> s{_avQuotaUser = a})

-- | Returns response with indentations and line breaks.
avPrettyPrint :: Lens' AssociationsessionsVerify' Bool
avPrettyPrint
  = lens _avPrettyPrint
      (\ s a -> s{_avPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
avUserIp :: Lens' AssociationsessionsVerify' (Maybe Text)
avUserIp = lens _avUserIp (\ s a -> s{_avUserIp = a})

-- | The token returned to the association callback URL.
avToken :: Lens' AssociationsessionsVerify' Text
avToken = lens _avToken (\ s a -> s{_avToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
avKey :: Lens' AssociationsessionsVerify' (Maybe Text)
avKey = lens _avKey (\ s a -> s{_avKey = a})

-- | OAuth 2.0 token for the current user.
avOauthToken :: Lens' AssociationsessionsVerify' (Maybe Text)
avOauthToken
  = lens _avOauthToken (\ s a -> s{_avOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
avFields :: Lens' AssociationsessionsVerify' (Maybe Text)
avFields = lens _avFields (\ s a -> s{_avFields = a})

-- | Data format for the response.
avAlt :: Lens' AssociationsessionsVerify' Text
avAlt = lens _avAlt (\ s a -> s{_avAlt = a})

instance GoogleRequest AssociationsessionsVerify'
         where
        type Rs AssociationsessionsVerify' =
             AssociationSession
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AssociationsessionsVerify{..}
          = go _avQuotaUser _avPrettyPrint _avUserIp
              (Just _avToken)
              _avKey
              _avOauthToken
              _avFields
              _avAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssociationsessionsVerifyAPI)
                      r
                      u
