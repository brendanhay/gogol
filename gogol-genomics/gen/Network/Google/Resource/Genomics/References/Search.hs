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
module Network.Google.Resource.Genomics.References.Search
    (
    -- * REST Resource
      ReferencesSearchResource

    -- * Creating a Request
    , referencesSearch'
    , ReferencesSearch'

    -- * Request Lenses
    , refQuotaUser
    , refPrettyPrint
    , refUserIp
    , refKey
    , refOauthToken
    , refFields
    , refAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesSearch@ which the
-- 'ReferencesSearch'' request conforms to.
type ReferencesSearchResource =
     "references" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] SearchReferencesResponse

-- | Searches for references which match the given criteria. Implements
-- GlobalAllianceApi.searchReferences.
--
-- /See:/ 'referencesSearch'' smart constructor.
data ReferencesSearch' = ReferencesSearch'
    { _refQuotaUser   :: !(Maybe Text)
    , _refPrettyPrint :: !Bool
    , _refUserIp      :: !(Maybe Text)
    , _refKey         :: !(Maybe Text)
    , _refOauthToken  :: !(Maybe Text)
    , _refFields      :: !(Maybe Text)
    , _refAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'refQuotaUser'
--
-- * 'refPrettyPrint'
--
-- * 'refUserIp'
--
-- * 'refKey'
--
-- * 'refOauthToken'
--
-- * 'refFields'
--
-- * 'refAlt'
referencesSearch'
    :: ReferencesSearch'
referencesSearch' =
    ReferencesSearch'
    { _refQuotaUser = Nothing
    , _refPrettyPrint = True
    , _refUserIp = Nothing
    , _refKey = Nothing
    , _refOauthToken = Nothing
    , _refFields = Nothing
    , _refAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
refQuotaUser :: Lens' ReferencesSearch' (Maybe Text)
refQuotaUser
  = lens _refQuotaUser (\ s a -> s{_refQuotaUser = a})

-- | Returns response with indentations and line breaks.
refPrettyPrint :: Lens' ReferencesSearch' Bool
refPrettyPrint
  = lens _refPrettyPrint
      (\ s a -> s{_refPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
refUserIp :: Lens' ReferencesSearch' (Maybe Text)
refUserIp
  = lens _refUserIp (\ s a -> s{_refUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
refKey :: Lens' ReferencesSearch' (Maybe Text)
refKey = lens _refKey (\ s a -> s{_refKey = a})

-- | OAuth 2.0 token for the current user.
refOauthToken :: Lens' ReferencesSearch' (Maybe Text)
refOauthToken
  = lens _refOauthToken
      (\ s a -> s{_refOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
refFields :: Lens' ReferencesSearch' (Maybe Text)
refFields
  = lens _refFields (\ s a -> s{_refFields = a})

-- | Data format for the response.
refAlt :: Lens' ReferencesSearch' Alt
refAlt = lens _refAlt (\ s a -> s{_refAlt = a})

instance GoogleRequest ReferencesSearch' where
        type Rs ReferencesSearch' = SearchReferencesResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesSearch'{..}
          = go _refQuotaUser (Just _refPrettyPrint) _refUserIp
              _refKey
              _refOauthToken
              _refFields
              (Just _refAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesSearchResource)
                      r
                      u
