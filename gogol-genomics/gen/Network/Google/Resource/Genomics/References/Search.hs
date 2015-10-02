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
    , refUserIP
    , refKey
    , refSearchReferencesRequest
    , refOAuthToken
    , refFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchReferencesRequest :>
                         Post '[JSON] SearchReferencesResponse

-- | Searches for references which match the given criteria. Implements
-- GlobalAllianceApi.searchReferences.
--
-- /See:/ 'referencesSearch'' smart constructor.
data ReferencesSearch' = ReferencesSearch'
    { _refQuotaUser               :: !(Maybe Text)
    , _refPrettyPrint             :: !Bool
    , _refUserIP                  :: !(Maybe Text)
    , _refKey                     :: !(Maybe Key)
    , _refSearchReferencesRequest :: !SearchReferencesRequest
    , _refOAuthToken              :: !(Maybe OAuthToken)
    , _refFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'refQuotaUser'
--
-- * 'refPrettyPrint'
--
-- * 'refUserIP'
--
-- * 'refKey'
--
-- * 'refSearchReferencesRequest'
--
-- * 'refOAuthToken'
--
-- * 'refFields'
referencesSearch'
    :: SearchReferencesRequest -- ^ 'SearchReferencesRequest'
    -> ReferencesSearch'
referencesSearch' pRefSearchReferencesRequest_ =
    ReferencesSearch'
    { _refQuotaUser = Nothing
    , _refPrettyPrint = True
    , _refUserIP = Nothing
    , _refKey = Nothing
    , _refSearchReferencesRequest = pRefSearchReferencesRequest_
    , _refOAuthToken = Nothing
    , _refFields = Nothing
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
refUserIP :: Lens' ReferencesSearch' (Maybe Text)
refUserIP
  = lens _refUserIP (\ s a -> s{_refUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
refKey :: Lens' ReferencesSearch' (Maybe Key)
refKey = lens _refKey (\ s a -> s{_refKey = a})

-- | Multipart request metadata.
refSearchReferencesRequest :: Lens' ReferencesSearch' SearchReferencesRequest
refSearchReferencesRequest
  = lens _refSearchReferencesRequest
      (\ s a -> s{_refSearchReferencesRequest = a})

-- | OAuth 2.0 token for the current user.
refOAuthToken :: Lens' ReferencesSearch' (Maybe OAuthToken)
refOAuthToken
  = lens _refOAuthToken
      (\ s a -> s{_refOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
refFields :: Lens' ReferencesSearch' (Maybe Text)
refFields
  = lens _refFields (\ s a -> s{_refFields = a})

instance GoogleAuth ReferencesSearch' where
        authKey = refKey . _Just
        authToken = refOAuthToken . _Just

instance GoogleRequest ReferencesSearch' where
        type Rs ReferencesSearch' = SearchReferencesResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesSearch'{..}
          = go _refQuotaUser (Just _refPrettyPrint) _refUserIP
              _refFields
              _refKey
              _refOAuthToken
              (Just AltJSON)
              _refSearchReferencesRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesSearchResource)
                      r
                      u
