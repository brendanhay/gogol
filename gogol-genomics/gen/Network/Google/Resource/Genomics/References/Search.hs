{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.References.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for references which match the given criteria. Implements
-- GlobalAllianceApi.searchReferences.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReferencesSearch@.
module Genomics.References.Search
    (
    -- * REST Resource
      ReferencesSearchAPI

    -- * Creating a Request
    , referencesSearch
    , ReferencesSearch

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

-- | A resource alias for @GenomicsReferencesSearch@ which the
-- 'ReferencesSearch' request conforms to.
type ReferencesSearchAPI =
     "references" :>
       "search" :> Post '[JSON] SearchReferencesResponse

-- | Searches for references which match the given criteria. Implements
-- GlobalAllianceApi.searchReferences.
--
-- /See:/ 'referencesSearch' smart constructor.
data ReferencesSearch = ReferencesSearch
    { _rsQuotaUser   :: !(Maybe Text)
    , _rsPrettyPrint :: !Bool
    , _rsUserIp      :: !(Maybe Text)
    , _rsKey         :: !(Maybe Text)
    , _rsOauthToken  :: !(Maybe Text)
    , _rsFields      :: !(Maybe Text)
    , _rsAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesSearch'' with the minimum fields required to make a request.
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
referencesSearch
    :: ReferencesSearch
referencesSearch =
    ReferencesSearch
    { _rsQuotaUser = Nothing
    , _rsPrettyPrint = True
    , _rsUserIp = Nothing
    , _rsKey = Nothing
    , _rsOauthToken = Nothing
    , _rsFields = Nothing
    , _rsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rsQuotaUser :: Lens' ReferencesSearch' (Maybe Text)
rsQuotaUser
  = lens _rsQuotaUser (\ s a -> s{_rsQuotaUser = a})

-- | Returns response with indentations and line breaks.
rsPrettyPrint :: Lens' ReferencesSearch' Bool
rsPrettyPrint
  = lens _rsPrettyPrint
      (\ s a -> s{_rsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rsUserIp :: Lens' ReferencesSearch' (Maybe Text)
rsUserIp = lens _rsUserIp (\ s a -> s{_rsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rsKey :: Lens' ReferencesSearch' (Maybe Text)
rsKey = lens _rsKey (\ s a -> s{_rsKey = a})

-- | OAuth 2.0 token for the current user.
rsOauthToken :: Lens' ReferencesSearch' (Maybe Text)
rsOauthToken
  = lens _rsOauthToken (\ s a -> s{_rsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rsFields :: Lens' ReferencesSearch' (Maybe Text)
rsFields = lens _rsFields (\ s a -> s{_rsFields = a})

-- | Data format for the response.
rsAlt :: Lens' ReferencesSearch' Text
rsAlt = lens _rsAlt (\ s a -> s{_rsAlt = a})

instance GoogleRequest ReferencesSearch' where
        type Rs ReferencesSearch' = SearchReferencesResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesSearch{..}
          = go _rsQuotaUser _rsPrettyPrint _rsUserIp _rsKey
              _rsOauthToken
              _rsFields
              _rsAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesSearchAPI)
                      r
                      u
