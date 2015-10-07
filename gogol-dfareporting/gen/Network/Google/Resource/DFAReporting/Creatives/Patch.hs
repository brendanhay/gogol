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
    , cppProFileId
    , cppPayload
    , cppKey
    , cppId
    , cppOAuthToken
    , cppFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesPatch@ method which the
-- 'CreativesPatch'' request conforms to.
type CreativesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Creative :> Patch '[JSON] Creative

-- | Updates an existing creative. This method supports patch semantics.
--
-- /See:/ 'creativesPatch'' smart constructor.
data CreativesPatch' = CreativesPatch'
    { _cppQuotaUser   :: !(Maybe Text)
    , _cppPrettyPrint :: !Bool
    , _cppUserIP      :: !(Maybe Text)
    , _cppProFileId   :: !Int64
    , _cppPayload     :: !Creative
    , _cppKey         :: !(Maybe AuthKey)
    , _cppId          :: !Int64
    , _cppOAuthToken  :: !(Maybe OAuthToken)
    , _cppFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cppProFileId'
--
-- * 'cppPayload'
--
-- * 'cppKey'
--
-- * 'cppId'
--
-- * 'cppOAuthToken'
--
-- * 'cppFields'
creativesPatch'
    :: Int64 -- ^ 'profileId'
    -> Creative -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> CreativesPatch'
creativesPatch' pCppProFileId_ pCppPayload_ pCppId_ =
    CreativesPatch'
    { _cppQuotaUser = Nothing
    , _cppPrettyPrint = True
    , _cppUserIP = Nothing
    , _cppProFileId = pCppProFileId_
    , _cppPayload = pCppPayload_
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

-- | User profile ID associated with this request.
cppProFileId :: Lens' CreativesPatch' Int64
cppProFileId
  = lens _cppProFileId (\ s a -> s{_cppProFileId = a})

-- | Multipart request metadata.
cppPayload :: Lens' CreativesPatch' Creative
cppPayload
  = lens _cppPayload (\ s a -> s{_cppPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cppKey :: Lens' CreativesPatch' (Maybe AuthKey)
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
        _AuthKey = cppKey . _Just
        _AuthToken = cppOAuthToken . _Just

instance GoogleRequest CreativesPatch' where
        type Rs CreativesPatch' = Creative
        request = requestWith dFAReportingRequest
        requestWith rq CreativesPatch'{..}
          = go _cppProFileId (Just _cppId) _cppQuotaUser
              (Just _cppPrettyPrint)
              _cppUserIP
              _cppFields
              _cppKey
              _cppOAuthToken
              (Just AltJSON)
              _cppPayload
          where go
                  = clientBuild (Proxy :: Proxy CreativesPatchResource)
                      rq
