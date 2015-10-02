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
-- Module      : Network.Google.Resource.SQL.Tiers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all available service tiers for Google Cloud SQL, for example D1,
-- D2. For related information, see Pricing.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLTiersList@.
module Network.Google.Resource.SQL.Tiers.List
    (
    -- * REST Resource
      TiersListResource

    -- * Creating a Request
    , tiersList'
    , TiersList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlProject
    , tlUserIP
    , tlKey
    , tlOAuthToken
    , tlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLTiersList@ which the
-- 'TiersList'' request conforms to.
type TiersListResource =
     "projects" :>
       Capture "project" Text :>
         "tiers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] TiersListResponse

-- | Lists all available service tiers for Google Cloud SQL, for example D1,
-- D2. For related information, see Pricing.
--
-- /See:/ 'tiersList'' smart constructor.
data TiersList' = TiersList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlProject     :: !Text
    , _tlUserIP      :: !(Maybe Text)
    , _tlKey         :: !(Maybe Key)
    , _tlOAuthToken  :: !(Maybe OAuthToken)
    , _tlFields      :: !(Maybe Text)
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
-- * 'tlUserIP'
--
-- * 'tlKey'
--
-- * 'tlOAuthToken'
--
-- * 'tlFields'
tiersList'
    :: Text -- ^ 'project'
    -> TiersList'
tiersList' pTlProject_ =
    TiersList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlProject = pTlProject_
    , _tlUserIP = Nothing
    , _tlKey = Nothing
    , _tlOAuthToken = Nothing
    , _tlFields = Nothing
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
tlUserIP :: Lens' TiersList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TiersList' (Maybe Key)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TiersList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TiersList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TiersList' where
        authKey = tlKey . _Just
        authToken = tlOAuthToken . _Just

instance GoogleRequest TiersList' where
        type Rs TiersList' = TiersListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u TiersList'{..}
          = go _tlQuotaUser (Just _tlPrettyPrint) _tlProject
              _tlUserIP
              _tlKey
              _tlOAuthToken
              _tlFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TiersListResource)
                      r
                      u
