{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module DFAReporting.Sites.Patch
    (
    -- * REST Resource
      SitesPatchAPI

    -- * Creating a Request
    , sitesPatch
    , SitesPatch

    -- * Request Lenses
    , spQuotaUser
    , spPrettyPrint
    , spUserIp
    , spProfileId
    , spKey
    , spId
    , spOauthToken
    , spFields
    , spAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesPatch@ which the
-- 'SitesPatch' request conforms to.
type SitesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "id" Int64 :> Patch '[JSON] Site

-- | Updates an existing site. This method supports patch semantics.
--
-- /See:/ 'sitesPatch' smart constructor.
data SitesPatch = SitesPatch
    { _spQuotaUser   :: !(Maybe Text)
    , _spPrettyPrint :: !Bool
    , _spUserIp      :: !(Maybe Text)
    , _spProfileId   :: !Int64
    , _spKey         :: !(Maybe Text)
    , _spId          :: !Int64
    , _spOauthToken  :: !(Maybe Text)
    , _spFields      :: !(Maybe Text)
    , _spAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spQuotaUser'
--
-- * 'spPrettyPrint'
--
-- * 'spUserIp'
--
-- * 'spProfileId'
--
-- * 'spKey'
--
-- * 'spId'
--
-- * 'spOauthToken'
--
-- * 'spFields'
--
-- * 'spAlt'
sitesPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SitesPatch
sitesPatch pSpProfileId_ pSpId_ =
    SitesPatch
    { _spQuotaUser = Nothing
    , _spPrettyPrint = True
    , _spUserIp = Nothing
    , _spProfileId = pSpProfileId_
    , _spKey = Nothing
    , _spId = pSpId_
    , _spOauthToken = Nothing
    , _spFields = Nothing
    , _spAlt = "json"
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
spUserIp :: Lens' SitesPatch' (Maybe Text)
spUserIp = lens _spUserIp (\ s a -> s{_spUserIp = a})

-- | User profile ID associated with this request.
spProfileId :: Lens' SitesPatch' Int64
spProfileId
  = lens _spProfileId (\ s a -> s{_spProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
spKey :: Lens' SitesPatch' (Maybe Text)
spKey = lens _spKey (\ s a -> s{_spKey = a})

-- | Site ID.
spId :: Lens' SitesPatch' Int64
spId = lens _spId (\ s a -> s{_spId = a})

-- | OAuth 2.0 token for the current user.
spOauthToken :: Lens' SitesPatch' (Maybe Text)
spOauthToken
  = lens _spOauthToken (\ s a -> s{_spOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
spFields :: Lens' SitesPatch' (Maybe Text)
spFields = lens _spFields (\ s a -> s{_spFields = a})

-- | Data format for the response.
spAlt :: Lens' SitesPatch' Text
spAlt = lens _spAlt (\ s a -> s{_spAlt = a})

instance GoogleRequest SitesPatch' where
        type Rs SitesPatch' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesPatch{..}
          = go _spQuotaUser _spPrettyPrint _spUserIp
              _spProfileId
              _spKey
              (Just _spId)
              _spOauthToken
              _spFields
              _spAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SitesPatchAPI) r u
