{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Enterprises.Unenroll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unenrolls an enterprise from the calling MDM.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEnterprisesUnenroll@.
module Androidenterprise.Enterprises.Unenroll
    (
    -- * REST Resource
      EnterprisesUnenrollAPI

    -- * Creating a Request
    , enterprisesUnenroll
    , EnterprisesUnenroll

    -- * Request Lenses
    , euQuotaUser
    , euPrettyPrint
    , euEnterpriseId
    , euUserIp
    , euKey
    , euOauthToken
    , euFields
    , euAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEnterprisesUnenroll@ which the
-- 'EnterprisesUnenroll' request conforms to.
type EnterprisesUnenrollAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "unenroll" :> Post '[JSON] ()

-- | Unenrolls an enterprise from the calling MDM.
--
-- /See:/ 'enterprisesUnenroll' smart constructor.
data EnterprisesUnenroll = EnterprisesUnenroll
    { _euQuotaUser    :: !(Maybe Text)
    , _euPrettyPrint  :: !Bool
    , _euEnterpriseId :: !Text
    , _euUserIp       :: !(Maybe Text)
    , _euKey          :: !(Maybe Text)
    , _euOauthToken   :: !(Maybe Text)
    , _euFields       :: !(Maybe Text)
    , _euAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesUnenroll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euQuotaUser'
--
-- * 'euPrettyPrint'
--
-- * 'euEnterpriseId'
--
-- * 'euUserIp'
--
-- * 'euKey'
--
-- * 'euOauthToken'
--
-- * 'euFields'
--
-- * 'euAlt'
enterprisesUnenroll
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesUnenroll
enterprisesUnenroll pEuEnterpriseId_ =
    EnterprisesUnenroll
    { _euQuotaUser = Nothing
    , _euPrettyPrint = True
    , _euEnterpriseId = pEuEnterpriseId_
    , _euUserIp = Nothing
    , _euKey = Nothing
    , _euOauthToken = Nothing
    , _euFields = Nothing
    , _euAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
euQuotaUser :: Lens' EnterprisesUnenroll' (Maybe Text)
euQuotaUser
  = lens _euQuotaUser (\ s a -> s{_euQuotaUser = a})

-- | Returns response with indentations and line breaks.
euPrettyPrint :: Lens' EnterprisesUnenroll' Bool
euPrettyPrint
  = lens _euPrettyPrint
      (\ s a -> s{_euPrettyPrint = a})

-- | The ID of the enterprise.
euEnterpriseId :: Lens' EnterprisesUnenroll' Text
euEnterpriseId
  = lens _euEnterpriseId
      (\ s a -> s{_euEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
euUserIp :: Lens' EnterprisesUnenroll' (Maybe Text)
euUserIp = lens _euUserIp (\ s a -> s{_euUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
euKey :: Lens' EnterprisesUnenroll' (Maybe Text)
euKey = lens _euKey (\ s a -> s{_euKey = a})

-- | OAuth 2.0 token for the current user.
euOauthToken :: Lens' EnterprisesUnenroll' (Maybe Text)
euOauthToken
  = lens _euOauthToken (\ s a -> s{_euOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
euFields :: Lens' EnterprisesUnenroll' (Maybe Text)
euFields = lens _euFields (\ s a -> s{_euFields = a})

-- | Data format for the response.
euAlt :: Lens' EnterprisesUnenroll' Text
euAlt = lens _euAlt (\ s a -> s{_euAlt = a})

instance GoogleRequest EnterprisesUnenroll' where
        type Rs EnterprisesUnenroll' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesUnenroll{..}
          = go _euQuotaUser _euPrettyPrint _euEnterpriseId
              _euUserIp
              _euKey
              _euOauthToken
              _euFields
              _euAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesUnenrollAPI)
                      r
                      u
