{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Enterprises.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the binding between the MDM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.delete@.
module Network.Google.API.Androidenterprise.Enterprises.Delete
    (
    -- * REST Resource
      EnterprisesDeleteAPI

    -- * Creating a Request
    , enterprisesDelete'
    , EnterprisesDelete'

    -- * Request Lenses
    , eQuotaUser
    , ePrettyPrint
    , eEnterpriseId
    , eUserIp
    , eKey
    , eOauthToken
    , eFields
    , eAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.enterprises.delete which the
-- 'EnterprisesDelete'' request conforms to.
type EnterprisesDeleteAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the binding between the MDM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ 'enterprisesDelete'' smart constructor.
data EnterprisesDelete' = EnterprisesDelete'
    { _eQuotaUser    :: !(Maybe Text)
    , _ePrettyPrint  :: !Bool
    , _eEnterpriseId :: !Text
    , _eUserIp       :: !(Maybe Text)
    , _eKey          :: !(Maybe Text)
    , _eOauthToken   :: !(Maybe Text)
    , _eFields       :: !(Maybe Text)
    , _eAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eQuotaUser'
--
-- * 'ePrettyPrint'
--
-- * 'eEnterpriseId'
--
-- * 'eUserIp'
--
-- * 'eKey'
--
-- * 'eOauthToken'
--
-- * 'eFields'
--
-- * 'eAlt'
enterprisesDelete'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesDelete'
enterprisesDelete' pEEnterpriseId_ =
    EnterprisesDelete'
    { _eQuotaUser = Nothing
    , _ePrettyPrint = True
    , _eEnterpriseId = pEEnterpriseId_
    , _eUserIp = Nothing
    , _eKey = Nothing
    , _eOauthToken = Nothing
    , _eFields = Nothing
    , _eAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EnterprisesDelete' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EnterprisesDelete' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | The ID of the enterprise.
eEnterpriseId :: Lens' EnterprisesDelete' Text
eEnterpriseId
  = lens _eEnterpriseId
      (\ s a -> s{_eEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIp :: Lens' EnterprisesDelete' (Maybe Text)
eUserIp = lens _eUserIp (\ s a -> s{_eUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EnterprisesDelete' (Maybe Text)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | OAuth 2.0 token for the current user.
eOauthToken :: Lens' EnterprisesDelete' (Maybe Text)
eOauthToken
  = lens _eOauthToken (\ s a -> s{_eOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EnterprisesDelete' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

-- | Data format for the response.
eAlt :: Lens' EnterprisesDelete' Alt
eAlt = lens _eAlt (\ s a -> s{_eAlt = a})

instance GoogleRequest EnterprisesDelete' where
        type Rs EnterprisesDelete' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesDelete'{..}
          = go _eQuotaUser (Just _ePrettyPrint) _eEnterpriseId
              _eUserIp
              _eKey
              _eOauthToken
              _eFields
              (Just _eAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesDeleteAPI)
                      r
                      u
