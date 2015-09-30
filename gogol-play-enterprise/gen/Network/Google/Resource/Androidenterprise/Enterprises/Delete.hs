{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Enterprises.Delete
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEnterprisesDelete@.
module Androidenterprise.Enterprises.Delete
    (
    -- * REST Resource
      EnterprisesDeleteAPI

    -- * Creating a Request
    , enterprisesDelete
    , EnterprisesDelete

    -- * Request Lenses
    , edQuotaUser
    , edPrettyPrint
    , edEnterpriseId
    , edUserIp
    , edKey
    , edOauthToken
    , edFields
    , edAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEnterprisesDelete@ which the
-- 'EnterprisesDelete' request conforms to.
type EnterprisesDeleteAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :> Delete '[JSON] ()

-- | Deletes the binding between the MDM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ 'enterprisesDelete' smart constructor.
data EnterprisesDelete = EnterprisesDelete
    { _edQuotaUser    :: !(Maybe Text)
    , _edPrettyPrint  :: !Bool
    , _edEnterpriseId :: !Text
    , _edUserIp       :: !(Maybe Text)
    , _edKey          :: !(Maybe Text)
    , _edOauthToken   :: !(Maybe Text)
    , _edFields       :: !(Maybe Text)
    , _edAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edQuotaUser'
--
-- * 'edPrettyPrint'
--
-- * 'edEnterpriseId'
--
-- * 'edUserIp'
--
-- * 'edKey'
--
-- * 'edOauthToken'
--
-- * 'edFields'
--
-- * 'edAlt'
enterprisesDelete
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesDelete
enterprisesDelete pEdEnterpriseId_ =
    EnterprisesDelete
    { _edQuotaUser = Nothing
    , _edPrettyPrint = True
    , _edEnterpriseId = pEdEnterpriseId_
    , _edUserIp = Nothing
    , _edKey = Nothing
    , _edOauthToken = Nothing
    , _edFields = Nothing
    , _edAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
edQuotaUser :: Lens' EnterprisesDelete' (Maybe Text)
edQuotaUser
  = lens _edQuotaUser (\ s a -> s{_edQuotaUser = a})

-- | Returns response with indentations and line breaks.
edPrettyPrint :: Lens' EnterprisesDelete' Bool
edPrettyPrint
  = lens _edPrettyPrint
      (\ s a -> s{_edPrettyPrint = a})

-- | The ID of the enterprise.
edEnterpriseId :: Lens' EnterprisesDelete' Text
edEnterpriseId
  = lens _edEnterpriseId
      (\ s a -> s{_edEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
edUserIp :: Lens' EnterprisesDelete' (Maybe Text)
edUserIp = lens _edUserIp (\ s a -> s{_edUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edKey :: Lens' EnterprisesDelete' (Maybe Text)
edKey = lens _edKey (\ s a -> s{_edKey = a})

-- | OAuth 2.0 token for the current user.
edOauthToken :: Lens' EnterprisesDelete' (Maybe Text)
edOauthToken
  = lens _edOauthToken (\ s a -> s{_edOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
edFields :: Lens' EnterprisesDelete' (Maybe Text)
edFields = lens _edFields (\ s a -> s{_edFields = a})

-- | Data format for the response.
edAlt :: Lens' EnterprisesDelete' Text
edAlt = lens _edAlt (\ s a -> s{_edAlt = a})

instance GoogleRequest EnterprisesDelete' where
        type Rs EnterprisesDelete' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesDelete{..}
          = go _edQuotaUser _edPrettyPrint _edEnterpriseId
              _edUserIp
              _edKey
              _edOauthToken
              _edFields
              _edAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesDeleteAPI)
                      r
                      u
