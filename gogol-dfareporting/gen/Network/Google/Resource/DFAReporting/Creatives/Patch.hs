{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesPatch@.
module Network.Google.Resource.DFAReporting.Creatives.Patch
    (
    -- * REST Resource
      CreativesPatchResource

    -- * Creating a Request
    , creativesPatch'
    , CreativesPatch'

    -- * Request Lenses
    , cppQuotaUser
    , cppPrettyPrint
    , cppUserIP
    , cppCreative
    , cppProfileId
    , cppKey
    , cppId
    , cppOAuthToken
    , cppFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesPatch@ which the
-- 'CreativesPatch'' request conforms to.
type CreativesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Creative :> Patch '[JSON] Creative

-- | Updates an existing creative. This method supports patch semantics.
--
-- /See:/ 'creativesPatch'' smart constructor.
data CreativesPatch' = CreativesPatch'
    { _cppQuotaUser   :: !(Maybe Text)
    , _cppPrettyPrint :: !Bool
    , _cppUserIP      :: !(Maybe Text)
    , _cppCreative    :: !Creative
    , _cppProfileId   :: !Int64
    , _cppKey         :: !(Maybe Key)
    , _cppId          :: !Int64
    , _cppOAuthToken  :: !(Maybe OAuthToken)
    , _cppFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cppQuotaUser'
--
-- * 'cppPrettyPrint'
--
-- * 'cppUserIP'
--
-- * 'cppCreative'
--
-- * 'cppProfileId'
--
-- * 'cppKey'
--
-- * 'cppId'
--
-- * 'cppOAuthToken'
--
-- * 'cppFields'
creativesPatch'
    :: Creative -- ^ 'Creative'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativesPatch'
creativesPatch' pCppCreative_ pCppProfileId_ pCppId_ =
    CreativesPatch'
    { _cppQuotaUser = Nothing
    , _cppPrettyPrint = True
    , _cppUserIP = Nothing
    , _cppCreative = pCppCreative_
    , _cppProfileId = pCppProfileId_
    , _cppKey = Nothing
    , _cppId = pCppId_
    , _cppOAuthToken = Nothing
    , _cppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cppQuotaUser :: Lens' CreativesPatch' (Maybe Text)
cppQuotaUser
  = lens _cppQuotaUser (\ s a -> s{_cppQuotaUser = a})

-- | Returns response with indentations and line breaks.
cppPrettyPrint :: Lens' CreativesPatch' Bool
cppPrettyPrint
  = lens _cppPrettyPrint
      (\ s a -> s{_cppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cppUserIP :: Lens' CreativesPatch' (Maybe Text)
cppUserIP
  = lens _cppUserIP (\ s a -> s{_cppUserIP = a})

-- | Multipart request metadata.
cppCreative :: Lens' CreativesPatch' Creative
cppCreative
  = lens _cppCreative (\ s a -> s{_cppCreative = a})

-- | User profile ID associated with this request.
cppProfileId :: Lens' CreativesPatch' Int64
cppProfileId
  = lens _cppProfileId (\ s a -> s{_cppProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cppKey :: Lens' CreativesPatch' (Maybe Key)
cppKey = lens _cppKey (\ s a -> s{_cppKey = a})

-- | Creative ID.
cppId :: Lens' CreativesPatch' Int64
cppId = lens _cppId (\ s a -> s{_cppId = a})

-- | OAuth 2.0 token for the current user.
cppOAuthToken :: Lens' CreativesPatch' (Maybe OAuthToken)
cppOAuthToken
  = lens _cppOAuthToken
      (\ s a -> s{_cppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cppFields :: Lens' CreativesPatch' (Maybe Text)
cppFields
  = lens _cppFields (\ s a -> s{_cppFields = a})

instance GoogleAuth CreativesPatch' where
        authKey = cppKey . _Just
        authToken = cppOAuthToken . _Just

instance GoogleRequest CreativesPatch' where
        type Rs CreativesPatch' = Creative
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesPatch'{..}
          = go _cppQuotaUser (Just _cppPrettyPrint) _cppUserIP
              _cppProfileId
              _cppKey
              (Just _cppId)
              _cppOAuthToken
              _cppFields
              (Just AltJSON)
              _cppCreative
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativesPatchResource)
                      r
                      u
