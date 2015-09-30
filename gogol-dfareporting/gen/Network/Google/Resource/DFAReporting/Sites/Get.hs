{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Sites.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesGet@.
module DFAReporting.Sites.Get
    (
    -- * REST Resource
      SitesGetAPI

    -- * Creating a Request
    , sitesGet
    , SitesGet

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgProfileId
    , sgKey
    , sgId
    , sgOauthToken
    , sgFields
    , sgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesGet@ which the
-- 'SitesGet' request conforms to.
type SitesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :> Capture "id" Int64 :> Get '[JSON] Site

-- | Gets one site by ID.
--
-- /See:/ 'sitesGet' smart constructor.
data SitesGet = SitesGet
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIp      :: !(Maybe Text)
    , _sgProfileId   :: !Int64
    , _sgKey         :: !(Maybe Text)
    , _sgId          :: !Int64
    , _sgOauthToken  :: !(Maybe Text)
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgProfileId'
--
-- * 'sgKey'
--
-- * 'sgId'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgAlt'
sitesGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SitesGet
sitesGet pSgProfileId_ pSgId_ =
    SitesGet
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgProfileId = pSgProfileId_
    , _sgKey = Nothing
    , _sgId = pSgId_
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SitesGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SitesGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' SitesGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | User profile ID associated with this request.
sgProfileId :: Lens' SitesGet' Int64
sgProfileId
  = lens _sgProfileId (\ s a -> s{_sgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SitesGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | Site ID.
sgId :: Lens' SitesGet' Int64
sgId = lens _sgId (\ s a -> s{_sgId = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SitesGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SitesGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' SitesGet' Text
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SitesGet' where
        type Rs SitesGet' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesGet{..}
          = go _sgQuotaUser _sgPrettyPrint _sgUserIp
              _sgProfileId
              _sgKey
              _sgId
              _sgOauthToken
              _sgFields
              _sgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SitesGetAPI) r u
