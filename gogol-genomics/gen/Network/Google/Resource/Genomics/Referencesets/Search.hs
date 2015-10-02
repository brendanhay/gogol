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
-- Module      : Network.Google.Resource.Genomics.Referencesets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for reference sets which match the given criteria. Implements
-- GlobalAllianceApi.searchReferenceSets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReferencesetsSearch@.
module Network.Google.Resource.Genomics.Referencesets.Search
    (
    -- * REST Resource
      ReferencesetsSearchResource

    -- * Creating a Request
    , referencesetsSearch'
    , ReferencesetsSearch'

    -- * Request Lenses
    , rssQuotaUser
    , rssPrettyPrint
    , rssSearchReferenceSetsRequest
    , rssUserIP
    , rssKey
    , rssOAuthToken
    , rssFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesetsSearch@ which the
-- 'ReferencesetsSearch'' request conforms to.
type ReferencesetsSearchResource =
     "referencesets" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchReferenceSetsRequest :>
                         Post '[JSON] SearchReferenceSetsResponse

-- | Searches for reference sets which match the given criteria. Implements
-- GlobalAllianceApi.searchReferenceSets.
--
-- /See:/ 'referencesetsSearch'' smart constructor.
data ReferencesetsSearch' = ReferencesetsSearch'
    { _rssQuotaUser                  :: !(Maybe Text)
    , _rssPrettyPrint                :: !Bool
    , _rssSearchReferenceSetsRequest :: !SearchReferenceSetsRequest
    , _rssUserIP                     :: !(Maybe Text)
    , _rssKey                        :: !(Maybe Key)
    , _rssOAuthToken                 :: !(Maybe OAuthToken)
    , _rssFields                     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rssQuotaUser'
--
-- * 'rssPrettyPrint'
--
-- * 'rssSearchReferenceSetsRequest'
--
-- * 'rssUserIP'
--
-- * 'rssKey'
--
-- * 'rssOAuthToken'
--
-- * 'rssFields'
referencesetsSearch'
    :: SearchReferenceSetsRequest -- ^ 'SearchReferenceSetsRequest'
    -> ReferencesetsSearch'
referencesetsSearch' pRssSearchReferenceSetsRequest_ =
    ReferencesetsSearch'
    { _rssQuotaUser = Nothing
    , _rssPrettyPrint = True
    , _rssSearchReferenceSetsRequest = pRssSearchReferenceSetsRequest_
    , _rssUserIP = Nothing
    , _rssKey = Nothing
    , _rssOAuthToken = Nothing
    , _rssFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rssQuotaUser :: Lens' ReferencesetsSearch' (Maybe Text)
rssQuotaUser
  = lens _rssQuotaUser (\ s a -> s{_rssQuotaUser = a})

-- | Returns response with indentations and line breaks.
rssPrettyPrint :: Lens' ReferencesetsSearch' Bool
rssPrettyPrint
  = lens _rssPrettyPrint
      (\ s a -> s{_rssPrettyPrint = a})

-- | Multipart request metadata.
rssSearchReferenceSetsRequest :: Lens' ReferencesetsSearch' SearchReferenceSetsRequest
rssSearchReferenceSetsRequest
  = lens _rssSearchReferenceSetsRequest
      (\ s a -> s{_rssSearchReferenceSetsRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rssUserIP :: Lens' ReferencesetsSearch' (Maybe Text)
rssUserIP
  = lens _rssUserIP (\ s a -> s{_rssUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rssKey :: Lens' ReferencesetsSearch' (Maybe Key)
rssKey = lens _rssKey (\ s a -> s{_rssKey = a})

-- | OAuth 2.0 token for the current user.
rssOAuthToken :: Lens' ReferencesetsSearch' (Maybe OAuthToken)
rssOAuthToken
  = lens _rssOAuthToken
      (\ s a -> s{_rssOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rssFields :: Lens' ReferencesetsSearch' (Maybe Text)
rssFields
  = lens _rssFields (\ s a -> s{_rssFields = a})

instance GoogleAuth ReferencesetsSearch' where
        authKey = rssKey . _Just
        authToken = rssOAuthToken . _Just

instance GoogleRequest ReferencesetsSearch' where
        type Rs ReferencesetsSearch' =
             SearchReferenceSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesetsSearch'{..}
          = go _rssQuotaUser (Just _rssPrettyPrint) _rssUserIP
              _rssKey
              _rssOAuthToken
              _rssFields
              (Just AltJSON)
              _rssSearchReferenceSetsRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesetsSearchResource)
                      r
                      u
