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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing subaccount. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubAccountsPatch@.
module Network.Google.Resource.DFAReporting.SubAccounts.Patch
    (
    -- * REST Resource
      SubAccountsPatchResource

    -- * Creating a Request
    , subAccountsPatch'
    , SubAccountsPatch'

    -- * Request Lenses
    , sapQuotaUser
    , sapPrettyPrint
    , sapUserIP
    , sapProFileId
    , sapPayload
    , sapKey
    , sapId
    , sapOAuthToken
    , sapFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubAccountsPatch@ which the
-- 'SubAccountsPatch'' request conforms to.
type SubAccountsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SubAccount :>
                             Patch '[JSON] SubAccount

-- | Updates an existing subaccount. This method supports patch semantics.
--
-- /See:/ 'subAccountsPatch'' smart constructor.
data SubAccountsPatch' = SubAccountsPatch'
    { _sapQuotaUser   :: !(Maybe Text)
    , _sapPrettyPrint :: !Bool
    , _sapUserIP      :: !(Maybe Text)
    , _sapProFileId   :: !Int64
    , _sapPayload     :: !SubAccount
    , _sapKey         :: !(Maybe Key)
    , _sapId          :: !Int64
    , _sapOAuthToken  :: !(Maybe OAuthToken)
    , _sapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubAccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sapQuotaUser'
--
-- * 'sapPrettyPrint'
--
-- * 'sapUserIP'
--
-- * 'sapProFileId'
--
-- * 'sapPayload'
--
-- * 'sapKey'
--
-- * 'sapId'
--
-- * 'sapOAuthToken'
--
-- * 'sapFields'
subAccountsPatch'
    :: Int64 -- ^ 'profileId'
    -> SubAccount -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> SubAccountsPatch'
subAccountsPatch' pSapProFileId_ pSapPayload_ pSapId_ =
    SubAccountsPatch'
    { _sapQuotaUser = Nothing
    , _sapPrettyPrint = True
    , _sapUserIP = Nothing
    , _sapProFileId = pSapProFileId_
    , _sapPayload = pSapPayload_
    , _sapKey = Nothing
    , _sapId = pSapId_
    , _sapOAuthToken = Nothing
    , _sapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sapQuotaUser :: Lens' SubAccountsPatch' (Maybe Text)
sapQuotaUser
  = lens _sapQuotaUser (\ s a -> s{_sapQuotaUser = a})

-- | Returns response with indentations and line breaks.
sapPrettyPrint :: Lens' SubAccountsPatch' Bool
sapPrettyPrint
  = lens _sapPrettyPrint
      (\ s a -> s{_sapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sapUserIP :: Lens' SubAccountsPatch' (Maybe Text)
sapUserIP
  = lens _sapUserIP (\ s a -> s{_sapUserIP = a})

-- | User profile ID associated with this request.
sapProFileId :: Lens' SubAccountsPatch' Int64
sapProFileId
  = lens _sapProFileId (\ s a -> s{_sapProFileId = a})

-- | Multipart request metadata.
sapPayload :: Lens' SubAccountsPatch' SubAccount
sapPayload
  = lens _sapPayload (\ s a -> s{_sapPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sapKey :: Lens' SubAccountsPatch' (Maybe Key)
sapKey = lens _sapKey (\ s a -> s{_sapKey = a})

-- | Subaccount ID.
sapId :: Lens' SubAccountsPatch' Int64
sapId = lens _sapId (\ s a -> s{_sapId = a})

-- | OAuth 2.0 token for the current user.
sapOAuthToken :: Lens' SubAccountsPatch' (Maybe OAuthToken)
sapOAuthToken
  = lens _sapOAuthToken
      (\ s a -> s{_sapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sapFields :: Lens' SubAccountsPatch' (Maybe Text)
sapFields
  = lens _sapFields (\ s a -> s{_sapFields = a})

instance GoogleAuth SubAccountsPatch' where
        authKey = sapKey . _Just
        authToken = sapOAuthToken . _Just

instance GoogleRequest SubAccountsPatch' where
        type Rs SubAccountsPatch' = SubAccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubAccountsPatch'{..}
          = go _sapProFileId (Just _sapId) _sapQuotaUser
              (Just _sapPrettyPrint)
              _sapUserIP
              _sapFields
              _sapKey
              _sapOAuthToken
              (Just AltJSON)
              _sapPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubAccountsPatchResource)
                      r
                      u
