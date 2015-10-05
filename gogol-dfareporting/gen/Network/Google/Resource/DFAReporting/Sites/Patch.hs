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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing site. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesPatch@.
module Network.Google.Resource.DFAReporting.Sites.Patch
    (
    -- * REST Resource
      SitesPatchResource

    -- * Creating a Request
    , sitesPatch'
    , SitesPatch'

    -- * Request Lenses
    , spQuotaUser
    , spPrettyPrint
    , spUserIP
    , spProFileId
    , spPayload
    , spKey
    , spId
    , spOAuthToken
    , spFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesPatch@ which the
-- 'SitesPatch'' request conforms to.
type SitesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Site :> Patch '[JSON] Site

-- | Updates an existing site. This method supports patch semantics.
--
-- /See:/ 'sitesPatch'' smart constructor.
data SitesPatch' = SitesPatch'
    { _spQuotaUser   :: !(Maybe Text)
    , _spPrettyPrint :: !Bool
    , _spUserIP      :: !(Maybe Text)
    , _spProFileId   :: !Int64
    , _spPayload     :: !Site
    , _spKey         :: !(Maybe Key)
    , _spId          :: !Int64
    , _spOAuthToken  :: !(Maybe OAuthToken)
    , _spFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spQuotaUser'
--
-- * 'spPrettyPrint'
--
-- * 'spUserIP'
--
-- * 'spProFileId'
--
-- * 'spPayload'
--
-- * 'spKey'
--
-- * 'spId'
--
-- * 'spOAuthToken'
--
-- * 'spFields'
sitesPatch'
    :: Int64 -- ^ 'profileId'
    -> Site -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> SitesPatch'
sitesPatch' pSpProFileId_ pSpPayload_ pSpId_ =
    SitesPatch'
    { _spQuotaUser = Nothing
    , _spPrettyPrint = True
    , _spUserIP = Nothing
    , _spProFileId = pSpProFileId_
    , _spPayload = pSpPayload_
    , _spKey = Nothing
    , _spId = pSpId_
    , _spOAuthToken = Nothing
    , _spFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
spQuotaUser :: Lens' SitesPatch' (Maybe Text)
spQuotaUser
  = lens _spQuotaUser (\ s a -> s{_spQuotaUser = a})

-- | Returns response with indentations and line breaks.
spPrettyPrint :: Lens' SitesPatch' Bool
spPrettyPrint
  = lens _spPrettyPrint
      (\ s a -> s{_spPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
spUserIP :: Lens' SitesPatch' (Maybe Text)
spUserIP = lens _spUserIP (\ s a -> s{_spUserIP = a})

-- | User profile ID associated with this request.
spProFileId :: Lens' SitesPatch' Int64
spProFileId
  = lens _spProFileId (\ s a -> s{_spProFileId = a})

-- | Multipart request metadata.
spPayload :: Lens' SitesPatch' Site
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
spKey :: Lens' SitesPatch' (Maybe Key)
spKey = lens _spKey (\ s a -> s{_spKey = a})

-- | Site ID.
spId :: Lens' SitesPatch' Int64
spId = lens _spId (\ s a -> s{_spId = a})

-- | OAuth 2.0 token for the current user.
spOAuthToken :: Lens' SitesPatch' (Maybe OAuthToken)
spOAuthToken
  = lens _spOAuthToken (\ s a -> s{_spOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
spFields :: Lens' SitesPatch' (Maybe Text)
spFields = lens _spFields (\ s a -> s{_spFields = a})

instance GoogleAuth SitesPatch' where
        authKey = spKey . _Just
        authToken = spOAuthToken . _Just

instance GoogleRequest SitesPatch' where
        type Rs SitesPatch' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesPatch'{..}
          = go _spProFileId (Just _spId) _spQuotaUser
              (Just _spPrettyPrint)
              _spUserIP
              _spFields
              _spKey
              _spOAuthToken
              (Just AltJSON)
              _spPayload
          where go
                  = clientWithRoute (Proxy :: Proxy SitesPatchResource)
                      r
                      u
