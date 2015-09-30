{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Annotations.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for annotations that match the given criteria. Results are
-- returned ordered by start position. Annotations that have matching start
-- positions are ordered deterministically. Caller must have READ
-- permission for the queried annotation sets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsSearch@.
module Genomics.Annotations.Search
    (
    -- * REST Resource
      AnnotationsSearchAPI

    -- * Creating a Request
    , annotationsSearch
    , AnnotationsSearch

    -- * Request Lenses
    , asQuotaUser
    , asPrettyPrint
    , asUserIp
    , asKey
    , asOauthToken
    , asFields
    , asAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsSearch@ which the
-- 'AnnotationsSearch' request conforms to.
type AnnotationsSearchAPI =
     "annotations" :>
       "search" :> Post '[JSON] SearchAnnotationsResponse

-- | Searches for annotations that match the given criteria. Results are
-- returned ordered by start position. Annotations that have matching start
-- positions are ordered deterministically. Caller must have READ
-- permission for the queried annotation sets.
--
-- /See:/ 'annotationsSearch' smart constructor.
data AnnotationsSearch = AnnotationsSearch
    { _asQuotaUser   :: !(Maybe Text)
    , _asPrettyPrint :: !Bool
    , _asUserIp      :: !(Maybe Text)
    , _asKey         :: !(Maybe Text)
    , _asOauthToken  :: !(Maybe Text)
    , _asFields      :: !(Maybe Text)
    , _asAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asQuotaUser'
--
-- * 'asPrettyPrint'
--
-- * 'asUserIp'
--
-- * 'asKey'
--
-- * 'asOauthToken'
--
-- * 'asFields'
--
-- * 'asAlt'
annotationsSearch
    :: AnnotationsSearch
annotationsSearch =
    AnnotationsSearch
    { _asQuotaUser = Nothing
    , _asPrettyPrint = True
    , _asUserIp = Nothing
    , _asKey = Nothing
    , _asOauthToken = Nothing
    , _asFields = Nothing
    , _asAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
asQuotaUser :: Lens' AnnotationsSearch' (Maybe Text)
asQuotaUser
  = lens _asQuotaUser (\ s a -> s{_asQuotaUser = a})

-- | Returns response with indentations and line breaks.
asPrettyPrint :: Lens' AnnotationsSearch' Bool
asPrettyPrint
  = lens _asPrettyPrint
      (\ s a -> s{_asPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asUserIp :: Lens' AnnotationsSearch' (Maybe Text)
asUserIp = lens _asUserIp (\ s a -> s{_asUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asKey :: Lens' AnnotationsSearch' (Maybe Text)
asKey = lens _asKey (\ s a -> s{_asKey = a})

-- | OAuth 2.0 token for the current user.
asOauthToken :: Lens' AnnotationsSearch' (Maybe Text)
asOauthToken
  = lens _asOauthToken (\ s a -> s{_asOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
asFields :: Lens' AnnotationsSearch' (Maybe Text)
asFields = lens _asFields (\ s a -> s{_asFields = a})

-- | Data format for the response.
asAlt :: Lens' AnnotationsSearch' Text
asAlt = lens _asAlt (\ s a -> s{_asAlt = a})

instance GoogleRequest AnnotationsSearch' where
        type Rs AnnotationsSearch' =
             SearchAnnotationsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsSearch{..}
          = go _asQuotaUser _asPrettyPrint _asUserIp _asKey
              _asOauthToken
              _asFields
              _asAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsSearchAPI)
                      r
                      u
