{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Tiers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all available service tiers for Google Cloud SQL, for example D1,
-- D2. For related information, see Pricing.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.tiers.list@.
module Network.Google.API.Sql.Tiers.List
    (
    -- * REST Resource
      TiersListAPI

    -- * Creating a Request
    , tiersList'
    , TiersList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlProject
    , tlUserIp
    , tlKey
    , tlOauthToken
    , tlFields
    , tlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.tiers.list which the
-- 'TiersList'' request conforms to.
type TiersListAPI =
     "projects" :>
       Capture "project" Text :>
         "tiers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] TiersListResponse

-- | Lists all available service tiers for Google Cloud SQL, for example D1,
-- D2. For related information, see Pricing.
--
-- /See:/ 'tiersList'' smart constructor.
data TiersList' = TiersList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlProject     :: !Text
    , _tlUserIp      :: !(Maybe Text)
    , _tlKey         :: !(Maybe Text)
    , _tlOauthToken  :: !(Maybe Text)
    , _tlFields      :: !(Maybe Text)
    , _tlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TiersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlProject'
--
-- * 'tlUserIp'
--
-- * 'tlKey'
--
-- * 'tlOauthToken'
--
-- * 'tlFields'
--
-- * 'tlAlt'
tiersList'
    :: Text -- ^ 'project'
    -> TiersList'
tiersList' pTlProject_ =
    TiersList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlProject = pTlProject_
    , _tlUserIp = Nothing
    , _tlKey = Nothing
    , _tlOauthToken = Nothing
    , _tlFields = Nothing
    , _tlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TiersList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TiersList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | Project ID of the project for which to list tiers.
tlProject :: Lens' TiersList' Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIp :: Lens' TiersList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TiersList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TiersList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TiersList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TiersList' Alt
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TiersList' where
        type Rs TiersList' = TiersListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u TiersList'{..}
          = go _tlQuotaUser (Just _tlPrettyPrint) _tlProject
              _tlUserIp
              _tlKey
              _tlOauthToken
              _tlFields
              (Just _tlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TiersListAPI) r u
