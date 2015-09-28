{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Referencesets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for reference sets which match the given criteria. Implements
-- GlobalAllianceApi.searchReferenceSets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.referencesets.search@.
module Network.Google.API.Genomics.Referencesets.Search
    (
    -- * REST Resource
      ReferencesetsSearchAPI

    -- * Creating a Request
    , referencesetsSearch'
    , ReferencesetsSearch'

    -- * Request Lenses
    , rsQuotaUser
    , rsPrettyPrint
    , rsUserIp
    , rsKey
    , rsOauthToken
    , rsFields
    , rsAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.referencesets.search which the
-- 'ReferencesetsSearch'' request conforms to.
type ReferencesetsSearchAPI =
     "referencesets" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] SearchReferenceSetsResponse

-- | Searches for reference sets which match the given criteria. Implements
-- GlobalAllianceApi.searchReferenceSets.
--
-- /See:/ 'referencesetsSearch'' smart constructor.
data ReferencesetsSearch' = ReferencesetsSearch'
    { _rsQuotaUser   :: !(Maybe Text)
    , _rsPrettyPrint :: !Bool
    , _rsUserIp      :: !(Maybe Text)
    , _rsKey         :: !(Maybe Text)
    , _rsOauthToken  :: !(Maybe Text)
    , _rsFields      :: !(Maybe Text)
    , _rsAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsQuotaUser'
--
-- * 'rsPrettyPrint'
--
-- * 'rsUserIp'
--
-- * 'rsKey'
--
-- * 'rsOauthToken'
--
-- * 'rsFields'
--
-- * 'rsAlt'
referencesetsSearch'
    :: ReferencesetsSearch'
referencesetsSearch' =
    ReferencesetsSearch'
    { _rsQuotaUser = Nothing
    , _rsPrettyPrint = True
    , _rsUserIp = Nothing
    , _rsKey = Nothing
    , _rsOauthToken = Nothing
    , _rsFields = Nothing
    , _rsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rsQuotaUser :: Lens' ReferencesetsSearch' (Maybe Text)
rsQuotaUser
  = lens _rsQuotaUser (\ s a -> s{_rsQuotaUser = a})

-- | Returns response with indentations and line breaks.
rsPrettyPrint :: Lens' ReferencesetsSearch' Bool
rsPrettyPrint
  = lens _rsPrettyPrint
      (\ s a -> s{_rsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rsUserIp :: Lens' ReferencesetsSearch' (Maybe Text)
rsUserIp = lens _rsUserIp (\ s a -> s{_rsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rsKey :: Lens' ReferencesetsSearch' (Maybe Text)
rsKey = lens _rsKey (\ s a -> s{_rsKey = a})

-- | OAuth 2.0 token for the current user.
rsOauthToken :: Lens' ReferencesetsSearch' (Maybe Text)
rsOauthToken
  = lens _rsOauthToken (\ s a -> s{_rsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rsFields :: Lens' ReferencesetsSearch' (Maybe Text)
rsFields = lens _rsFields (\ s a -> s{_rsFields = a})

-- | Data format for the response.
rsAlt :: Lens' ReferencesetsSearch' Alt
rsAlt = lens _rsAlt (\ s a -> s{_rsAlt = a})

instance GoogleRequest ReferencesetsSearch' where
        type Rs ReferencesetsSearch' =
             SearchReferenceSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesetsSearch'{..}
          = go _rsQuotaUser (Just _rsPrettyPrint) _rsUserIp
              _rsKey
              _rsOauthToken
              _rsFields
              (Just _rsAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesetsSearchAPI)
                      r
                      u
