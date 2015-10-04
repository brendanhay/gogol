{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for annotation sets that match the given criteria. Results are
-- returned in a deterministic order. Caller must have READ permission for
-- the queried datasets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationSetsSearch@.
module Network.Google.Resource.Genomics.AnnotationSets.Search
    (
    -- * REST Resource
      AnnotationSetsSearchResource

    -- * Creating a Request
    , annotationSetsSearch'
    , AnnotationSetsSearch'

    -- * Request Lenses
    , assQuotaUser
    , assPrettyPrint
    , assUserIP
    , assPayload
    , assKey
    , assOAuthToken
    , assFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationSetsSearch@ which the
-- 'AnnotationSetsSearch'' request conforms to.
type AnnotationSetsSearchResource =
     "annotationSets" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchAnnotationSetsRequest :>
                         Post '[JSON] SearchAnnotationSetsResponse

-- | Searches for annotation sets that match the given criteria. Results are
-- returned in a deterministic order. Caller must have READ permission for
-- the queried datasets.
--
-- /See:/ 'annotationSetsSearch'' smart constructor.
data AnnotationSetsSearch' = AnnotationSetsSearch'
    { _assQuotaUser   :: !(Maybe Text)
    , _assPrettyPrint :: !Bool
    , _assUserIP      :: !(Maybe Text)
    , _assPayload     :: !SearchAnnotationSetsRequest
    , _assKey         :: !(Maybe Key)
    , _assOAuthToken  :: !(Maybe OAuthToken)
    , _assFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assQuotaUser'
--
-- * 'assPrettyPrint'
--
-- * 'assUserIP'
--
-- * 'assPayload'
--
-- * 'assKey'
--
-- * 'assOAuthToken'
--
-- * 'assFields'
annotationSetsSearch'
    :: SearchAnnotationSetsRequest -- ^ 'payload'
    -> AnnotationSetsSearch'
annotationSetsSearch' pAssPayload_ =
    AnnotationSetsSearch'
    { _assQuotaUser = Nothing
    , _assPrettyPrint = True
    , _assUserIP = Nothing
    , _assPayload = pAssPayload_
    , _assKey = Nothing
    , _assOAuthToken = Nothing
    , _assFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
assQuotaUser :: Lens' AnnotationSetsSearch' (Maybe Text)
assQuotaUser
  = lens _assQuotaUser (\ s a -> s{_assQuotaUser = a})

-- | Returns response with indentations and line breaks.
assPrettyPrint :: Lens' AnnotationSetsSearch' Bool
assPrettyPrint
  = lens _assPrettyPrint
      (\ s a -> s{_assPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
assUserIP :: Lens' AnnotationSetsSearch' (Maybe Text)
assUserIP
  = lens _assUserIP (\ s a -> s{_assUserIP = a})

-- | Multipart request metadata.
assPayload :: Lens' AnnotationSetsSearch' SearchAnnotationSetsRequest
assPayload
  = lens _assPayload (\ s a -> s{_assPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assKey :: Lens' AnnotationSetsSearch' (Maybe Key)
assKey = lens _assKey (\ s a -> s{_assKey = a})

-- | OAuth 2.0 token for the current user.
assOAuthToken :: Lens' AnnotationSetsSearch' (Maybe OAuthToken)
assOAuthToken
  = lens _assOAuthToken
      (\ s a -> s{_assOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
assFields :: Lens' AnnotationSetsSearch' (Maybe Text)
assFields
  = lens _assFields (\ s a -> s{_assFields = a})

instance GoogleAuth AnnotationSetsSearch' where
        authKey = assKey . _Just
        authToken = assOAuthToken . _Just

instance GoogleRequest AnnotationSetsSearch' where
        type Rs AnnotationSetsSearch' =
             SearchAnnotationSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsSearch'{..}
          = go _assQuotaUser (Just _assPrettyPrint) _assUserIP
              _assFields
              _assKey
              _assOAuthToken
              (Just AltJSON)
              _assPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsSearchResource)
                      r
                      u
